<?php
include("conexao.php");
include_once("functions.php");
include_once(Idioma(1));
if(ProtegePag() == true){
global $_TRA;
	
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	
$InfoConfigSuporte = InfoConfigSuporte();

echo "<div class=\"modal animated fadeIn\" id=\"EditarAdmin\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"smallModalHead\" aria-hidden=\"true\">
            <div class=\"modal-dialog\">
                <div class=\"modal-content\">
                    <div class=\"modal-header\">
                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\"><span aria-hidden=\"true\">&times;</span><span class=\"sr-only\">".$_TRA['fechar']."</span></button>
                        <h4 class=\"modal-title\" id=\"smallModalHead\">".$_TRA['config']."</h4>
                    </div>
                    <div class=\"modal-body form-horizontal form-group-separated\">     
						<form role=\"form\" class=\"ConfigSuporte form-horizontal\" action=\"javascript:MDouglasMS();\">
						
                        <div class=\"form-group\">
                        	<label class=\"col-md-3 control-label\">".$_TRA['epp']."</label>
                            	<div class=\"col-md-9\">                                        
                                	<select class=\"form-control select\" id=\"ExibirPorPag\" name=\"ExibirPorPag\">";
										
										if($InfoConfigSuporte[0] == 5){
									    	echo "<option value=\"5\">5</option>
                                    		<option value=\"10\">10</option>
											<option value=\"15\">15</option>
											<option value=\"20\">20</option>
											<option value=\"25\">25</option>
											<option value=\"50\">50</option>
											<option value=\"75\">75</option>
											<option value=\"100\">100</option>";
										}
										elseif($InfoConfigSuporte[0] == 10){
									    	echo "<option value=\"10\">10</option>
											<option value=\"15\">15</option>
											<option value=\"20\">20</option>
											<option value=\"25\">25</option>
											<option value=\"50\">50</option>
											<option value=\"75\">75</option>
											<option value=\"100\">100</option>
											<option value=\"5\">5</option>";
										}
										elseif($InfoConfigSuporte[0] == 15){
									    	echo "<option value=\"15\">15</option>
											<option value=\"20\">20</option>
											<option value=\"25\">25</option>
											<option value=\"50\">50</option>
											<option value=\"75\">75</option>
											<option value=\"100\">100</option>
											<option value=\"5\">5</option>
											<option value=\"10\">10</option>";
										}
										elseif($InfoConfigSuporte[0] == 20){
									    	echo "<option value=\"20\">20</option>
											<option value=\"25\">25</option>
											<option value=\"50\">50</option>
											<option value=\"75\">75</option>
											<option value=\"100\">100</option>
											<option value=\"5\">5</option>
											<option value=\"10\">10</option>
											<option value=\"15\">15</option>";
										}
										elseif($InfoConfigSuporte[0] == 25){
									    	echo "<option value=\"25\">25</option>
											<option value=\"50\">50</option>
											<option value=\"75\">75</option>
											<option value=\"100\">100</option>
											<option value=\"5\">5</option>
											<option value=\"10\">10</option>
											<option value=\"15\">15</option>
											<option value=\"20\">20</option>";
										}
										elseif($InfoConfigSuporte[0] == 50){
									    	echo "<option value=\"50\">50</option>
											<option value=\"75\">75</option>
											<option value=\"100\">100</option>
											<option value=\"5\">5</option>
											<option value=\"10\">10</option>
											<option value=\"15\">15</option>
											<option value=\"20\">20</option>
											<option value=\"25\">25</option>";
										}
										elseif($InfoConfigSuporte[0] == 75){
									    	echo "<option value=\"75\">75</option>
											<option value=\"100\">100</option>
											<option value=\"5\">5</option>
											<option value=\"10\">10</option>
											<option value=\"15\">15</option>
											<option value=\"20\">20</option>
											<option value=\"25\">25</option>
											<option value=\"50\">50</option>";
										}
										elseif($InfoConfigSuporte[0] == 100){
									    	echo "<option value=\"100\">100</option>
											<option value=\"5\">5</option>
											<option value=\"10\">10</option>
											<option value=\"15\">15</option>
											<option value=\"20\">20</option>
											<option value=\"25\">25</option>
											<option value=\"50\">50</option>
											<option value=\"75\">75</option>";
										}
										else{
											echo "<option value=\"10\">10</option>
											<option value=\"15\">15</option>
											<option value=\"20\">20</option>
											<option value=\"25\">25</option>
											<option value=\"50\">50</option>
											<option value=\"75\">75</option>
											<option value=\"100\">100</option>
											<option value=\"5\">5</option>";
										}
										
                                     echo "</select>
                                 </div>
                        </div>
						
						</form>
                    </div>
                    <div class=\"modal-footer\">
						<div id=\"StatusModal\"></div>
                        <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">".$_TRA['fechar']."</button>
						<button type=\"button\" class=\"SalvarConfigSuporte btn btn-danger\">".$_TRA['salvar']."</button>
                    </div>
                </div>
            </div>
        </div>";
?>
        
<script type='text/javascript' src='js/plugins/validationengine/languages/jquery.validationEngine<?php echo Idioma(2); ?>.js'></script>
<script type='text/javascript' src='js/plugins/validationengine/jquery.validationEngine.js'></script>
<script type="text/javascript" src="js/plugins/bootstrap/bootstrap-select.js"></script>

<!-- START TEMPLATE -->  
<?php include_once("js/settings".Idioma(2).".php"); ?>      
<script type="text/javascript" src="js/plugins.js"></script>        
<!-- END TEMPLATE -->

<script>
$("#EditarAdmin").modal("show");

$(function(){  
 $("button.SalvarConfigSuporte").click(function() { 
 
 		var Data = $(".ConfigSuporte").serialize();
		
		$('#StatusModal').html("<center><img src=\"img/owl/AjaxLoader.gif\"><br><br></center>");
		
		$.post('EnviarEditarConfigSuporte.php', Data, function(resposta) {
				$("#StatusModal").html('');
				$("#StatusGeral").append(resposta);
		});
	});
});
</script>
   
<?php  
}
}else{
	echo Redirecionar('login.php');
}	
?>