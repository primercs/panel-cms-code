<?php
include("conexao.php");
include_once("functions.php");
include_once(Idioma(1));
if(ProtegePag() == true){
global $_TRA;

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
 
	$SelectBox = (isset($_POST['SelectBox'])) ? $_POST['SelectBox'] : '';
	
	if(empty($SelectBox)){
		echo MensagemAlerta($_TRA['erro'], $_TRA['cvfi'], "danger");
	}
	else{
	$user = InfoUser(2);
	$Pasta = 4;
	$Excluir = 'S';
			
		$SQL = "UPDATE suporte SET
			ExcluirEmissor = :ExcluirEmissor
            WHERE id = :id AND PastaEmissor = :PastaEmissor AND UserEmissor = :UserEmissor";
		$SQL = $painel_geral->prepare($SQL);
		$SQL->bindParam(':ExcluirEmissor', $Excluir, PDO::PARAM_STR); 
		$SQL->bindParam(':id', $SelectBox, PDO::PARAM_INT);
		$SQL->bindParam(':PastaEmissor', $Pasta, PDO::PARAM_INT);
		$SQL->bindParam(':UserEmissor', $user, PDO::PARAM_STR); 
		$SQL->execute(); 
		
		$SQL = "UPDATE suporte SET
			ExcluirReceptor = :ExcluirReceptor
            WHERE id = :id AND PastaReceptor = :PastaReceptor AND UserReceptor = :UserReceptor";
		$SQL = $painel_geral->prepare($SQL);
		$SQL->bindParam(':ExcluirReceptor', $Excluir, PDO::PARAM_STR); 
		$SQL->bindParam(':id', $SelectBox, PDO::PARAM_INT);
		$SQL->bindParam(':PastaReceptor', $Pasta, PDO::PARAM_INT);
		$SQL->bindParam(':UserReceptor', $user, PDO::PARAM_STR); 
		$SQL->execute(); 
		
		$SQLDel = "SELECT anexo FROM suporte WHERE id = :id AND PastaEmissor = :PastaEmissor AND PastaReceptor = :PastaReceptor AND ExcluirEmissor = :ExcluirEmissor AND ExcluirReceptor = :ExcluirReceptor AND UserEmissor = :UserEmissor OR id = :id AND PastaEmissor = :PastaEmissor AND PastaReceptor = :PastaReceptor AND ExcluirEmissor = :ExcluirEmissor AND ExcluirReceptor = :ExcluirReceptor AND UserReceptor = :UserReceptor";
		$SQLDel = $painel_geral->prepare($SQLDel);
		$SQLDel->bindParam(':id', $SelectBox, PDO::PARAM_INT);
		$SQLDel->bindParam(':PastaEmissor', $Pasta, PDO::PARAM_STR);
		$SQLDel->bindParam(':PastaReceptor', $Pasta, PDO::PARAM_STR);
		$SQLDel->bindParam(':ExcluirEmissor', $Excluir, PDO::PARAM_STR);
		$SQLDel->bindParam(':ExcluirReceptor', $Excluir, PDO::PARAM_STR);
		$SQLDel->bindParam(':UserEmissor', $user, PDO::PARAM_STR);
		$SQLDel->bindParam(':UserReceptor', $user, PDO::PARAM_STR);
		$SQLDel->execute();
		$TotalDel = count($SQLDel->fetchAll());
		
		if($TotalDel > 0){	
		
		$SQLSup = "SELECT anexo FROM suporte WHERE id = :id";	
		$SQLSup = $painel_geral->prepare($SQLSup);
		$SQLSup->bindParam(':id', $SelectBox, PDO::PARAM_INT);
		$SQLSup->execute();
		while($Ln = $SQLSup->fetch()){
			if(!empty($Ln['anexo'])){
				unlink('suporte/'.$Ln['anexo']);
			}
		}
		
		$SQL = "DELETE FROM suporte WHERE id = :id AND UserEmissor = :UserEmissor OR id = :id AND UserReceptor = :UserReceptor";
		$SQL = $painel_geral->prepare($SQL);
		$SQL->bindParam(':id', $SelectBox, PDO::PARAM_INT); 
		$SQL->bindParam(':UserEmissor', $user, PDO::PARAM_STR);
		$SQL->bindParam(':UserReceptor', $user, PDO::PARAM_STR);
		$SQL->execute(); 
		
		$SQLSup = "SELECT anexo FROM suporteresp WHERE id_suporte = :id_suporte";	
		$SQLSup = $painel_geral->prepare($SQLSup);
		$SQLSup->bindParam(':id_suporte', $SelectBox, PDO::PARAM_INT);
		$SQLSup->execute();
		while($Ln = $SQLSup->fetch()){
			if(!empty($Ln['anexo'])){
				unlink('suporte/'.$Ln['anexo']);
			}
		}
		
		$SQL = "DELETE FROM suporteresp WHERE id_suporte = :id_suporte";
		$SQL = $painel_geral->prepare($SQL);
		$SQL->bindParam(':id_suporte', $SelectBox, PDO::PARAM_INT); 
		$SQL->execute(); 
			
		}
	
	if(empty($SQL)){
		echo MensagemAlerta($_TRA['erro'], $_TRA['erropro'], "danger");
	}
	else{
		echo MensagemAlerta($_TRA['sucesso'], $_TRA['ecs'], "success", "index.php?p=suporte");
	}
	
	}
		
}

}

?>