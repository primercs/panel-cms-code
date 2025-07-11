<?php
include("conexao.php");
include_once("functions.php");
include_once(Idioma(1));
if(ProtegePag() == true){
global $_TRA;
$InfoConfigSuporte = InfoConfigSuporte();

$pg = empty($_GET['pg']) ? 1 : $_GET['pg'];

$Llido = empty($_GET['l']) ? "" : $_GET['l'];
$lido = $Llido == "S" || $Llido == "N" ? $Llido : "";
$SelectLido = empty($lido) ? "" : " AND LidaReceptor = :LidaReceptor";

//Usuário
$Pasta = 4;
$CadUser = InfoUser(2);
$Estrela = "S";

//Paginacacao
$SQLPag = "SELECT id FROM suporte WHERE UserReceptor = :UserReceptor AND PastaReceptor != :PastaReceptor AND Estrela = :Estrela".$SelectLido." ORDER BY id DESC";
$SQLPag = $painel_geral->prepare($SQLPag);
$SQLPag->bindParam(':UserReceptor', $CadUser, PDO::PARAM_STR);
$SQLPag->bindParam(':PastaReceptor', $Pasta, PDO::PARAM_STR);
$SQLPag->bindParam(':Estrela', $Estrela, PDO::PARAM_STR);
if(!empty($lido)) $SQLPag->bindParam(':LidaReceptor', $lido, PDO::PARAM_STR);
$SQLPag->execute();
$TotalPag = count($SQLPag->fetchAll());

$LimitQuant = $InfoConfigSuporte[0];

$LimitComecar = ($pg - 1) * $LimitQuant;
$Paginas = ceil($TotalPag / $LimitQuant);

//Seleção
$SQL = "SELECT * FROM suporte WHERE UserReceptor = :UserReceptor AND PastaReceptor != :PastaReceptor AND Estrela = :Estrela".$SelectLido." ORDER BY id DESC LIMIT :LimitComecar, :LimitQuant";
$SQL = $painel_geral->prepare($SQL);
$SQL->bindParam(':UserReceptor', $CadUser, PDO::PARAM_STR);
$SQL->bindParam(':PastaReceptor', $Pasta, PDO::PARAM_STR);
$SQL->bindParam(':Estrela', $Estrela, PDO::PARAM_STR);
if(!empty($lido)) $SQL->bindParam(':LidaReceptor', $lido, PDO::PARAM_STR);
$SQL->bindParam(':LimitComecar', $LimitComecar, PDO::PARAM_INT);
$SQL->bindParam(':LimitQuant', $LimitQuant, PDO::PARAM_INT);
$SQL->execute();
$Pasta = $Pasta - 1;
?>

<div class="content-frame-body">
                        
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <label class="check mail-checkall">
                                    <input type="checkbox" class="icheckbox"/>
                                </label>
                                
                                <div class="btn-group">
                                    <a href="<?php echo "index.php?p=suporte&a=".$Pasta."&pg=1&l=S"; ?>" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?php echo $_TRA['lido']; ?>" class="btn btn-default"><span class="fa fa-check-square-o"></span></a>                                    
                                    <a href="<?php echo "index.php?p=suporte&a=".$Pasta."&pg=1&l=N"; ?>" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?php echo $_TRA['nlido']; ?>" class="btn btn-default"><span class="fa fa-square-o"></span></a>
                                </div> 
                                
                                <span id="StatusTrash"></span>
                            </div>
                            <div class="panel-body mail">
                                <form method="post" role="form" class="ConfigSelect" action="javascript:MDouglasMS();">
                                <?php
								if($TotalPag > 0){
								while($Ln = $SQL->fetch()){
								$starred = $Ln['Estrela'] == "S" ? "starred" : "";	
								
								if($Ln['Marcacao'] == 1){
									$mailsuccess = "success";
								}
								elseif($Ln['Marcacao'] == 2){
									$mailsuccess = "warning";
								}
								elseif($Ln['Marcacao'] == 3){
									$mailsuccess = "danger";
								}
								elseif($Ln['Marcacao'] == 4){
									$mailsuccess = "info";
								}
								elseif($Ln['Marcacao'] == 5){
									$mailsuccess = "primary";
								}
								else{
									$mailsuccess = "primary";
								}
								
								$mailunread = $Ln['LidaEmissor'] == "N" ? " mail-unread" : "";
																								
								echo "
                                <div class=\"AbrirCaixaEntrada pointer mail-item mail-".$mailsuccess.$mailunread."\">
                                    <div class=\"mail-checkbox\">
                                        <input type=\"checkbox\" name=\"SelectBox[]\" id=\"SelectBox[]\" value=\"".$Ln['id']."\" class=\"icheckbox\"/>
                                    </div>
									<div id=\"".$Ln['id']."\" class=\"AtualizarEstrela mail-star ".$starred."\">
                                        <span class=\"fa fa-star-o\"></span>
                                    </div>
									
									<div id=\"".$Ln['id']."\" class=\"Abrir\">
                                    <div class=\"mail-user\">".$Ln['UserEmissor']."</div>                                    
                                    <span class=\"mail-text\">".LimitarTexto($Ln['Assunto'], 40)."</span>
                                    <div class=\"mail-date\">".DataSuporte($Ln['data'])."</div>";
									
									if(!empty($Ln['anexo'])){
										$attachments = explode(".",$Ln['anexo']);
                                    echo "<div class=\"mail-attachments\">
                                        <span class=\"fa fa-paperclip\"></span> ".end($attachments)."
                                    </div>";
									}
								
								echo "	
								</div>
                                </div>
								";
								}
								
								}
								else{
									echo "<div class=\"mail-item mail-default\"><center>".$_TRA['nem']."</center></div>";
								}
								?>
                                                                                                
                                </form>
                            </div>
                            <div class="panel-footer">                                
                                <ul class="pagination pagination-sm pull-right">
                                    <?php
									$LidoPag = $lido == "S" || $lido == "N" ? "&l=".$lido."" : "";
									
									if($pg != 1){
									$Voltar = $pg - 1;
                                    echo "<li><a href=\"index.php?p=suporte&a=".$Pasta."&pg=".$Voltar.$LidoPag."\">«</a></li>";
									}
									
									for($i = 0; $i < $Paginas; $i++){
									$Number = $i + 1;
									$Active = $pg == $Number ? " class=\"active\"" : "";
									
										if( ($Number == 1) || ($Number == ($pg - 1)) || ($Number == ($pg - 2)) || ($Number == $pg) || ($Number == ($pg + 1)) || ($Number == ($pg + 2)) || ($Number == $Paginas) ){
                                    	echo "<li".$Active."><a href=\"index.php?p=suporte&a=".$Pasta."&pg=".$Number.$LidoPag."\">".$Number."</a></li>";
										}
									}
									 
									if($pg < $Paginas){
									$Proximo = $pg + 1;
                                    echo "<li><a href=\"index.php?p=suporte&a=".$Pasta."&pg=".$Proximo.$LidoPag."\">»</a></li>";
									}
									?>
                                </ul>
                            </div>                            
                        </div>
                        
                    </div>

<?php
}else{
	echo Redirecionar('login.php');
}	
?>