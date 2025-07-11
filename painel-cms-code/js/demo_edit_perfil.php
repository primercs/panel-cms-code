<?php
include("conexao.php");
include_once("functions.php");
include_once(Idioma(1));
global $_TRA;
if(ProtegePag() == true){
?>

<script type='text/javascript'>  
$(function(){
    
    function onSuccess(){
        $("#cp_photo").parent("a").find("span").html("<?php echo $_TRA['eof']; ?>");
        
        var img = $("#cp_target").find("#crop_image")
        
        if(img.length === 1){            
            $("#cp_img_path").val(img.attr("src"));
            
            img.cropper({aspectRatio: 1,
                        done: function(data) {
                            $("#ic_x").val(data.x);
                            $("#ic_y").val(data.y);
                            $("#ic_h").val(data.height);
                            $("#ic_w").val(data.width);
                        }
            });
            
            $("#cp_accept").prop("disabled",false).removeClass("disabled");
            
            $("#cp_accept").on("click",function(){
					var ic_x = $("#ic_x").val(); 
					var ic_y = $("#ic_y").val();
					var ic_h = $("#ic_h").val();
					var ic_w = $("#ic_w").val(); 
					var cp_img_path = $("#cp_img_path").val();
					var NomeImg = $("#NomeImg").val(); 
					
				$.post('crop_perfil.php', {ic_x: ic_x, ic_y: ic_y, ic_h: ic_h, ic_w: ic_w, cp_img_path: cp_img_path, NomeImg: NomeImg}, function(result){
				
                $("#StatusGeral").html(result);

           	 });  
			});         
        }
    }
    
    $("#cp_photo").on("change",function(){
        
        if($("#cp_photo").val() == '') return false;
        
        $("#cp_target").html('<img src="img/loaders/default.gif"/>');        
        $("#cp_upload").ajaxForm({target: '#cp_target',success: onSuccess}).submit();        
    });
	
	$("#cp_pparede").on("change",function(){
        
        if($("#cp_pparede").val() == '') return false;
		
        $("#cp_target").html('<img src="img/loaders/default.gif"/>');        
        $("#cp_upload").ajaxForm({target: '#cp_target',success: onSuccess}).submit();   
		$("#cp_accept").prop("disabled",false).removeClass("disabled");  
    });
    
    
});      
</script>
<?php
}else{
	echo Redirecionar('login.php');
}	
?>