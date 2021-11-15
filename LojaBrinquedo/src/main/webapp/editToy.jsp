<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
</head>
<body>

	<section class="product-details spad">
        <div class="container">
            <form method="post" action="brinquedo?cmd=edit" enctype="multipart/form-data" id="frmEdit">
		 		<input type="hidden" name="cmd" value="incluir">
		 		<input type="hidden" id='CodBrinq' name="old_cod" value="${cod}">  
				  <div class="row">
				    <div class="col-sm-6">
				    	<div class="mb-3" id="picBrinquedo">
		    			
		 			 	</div>
		 			 </div>	
		 			 <div class="col-sm-4">	
				    <div class="mb-3" id="nomeBrinquedo">
		    			<label for="exampleInputEmail1" class="form-label">Nome Brinquedo</label>
		 			 </div>
						<div class="mb-3" id="codBrinquedo">
		    				<label for="exampleInputEmail1" class="form-label" >Cod Brinquedo</label>
		 			 	</div>
		 			 	<div class="mb-3" id="precoBrinquedo">
		    				<label for="exampleInputEmail1" class="form-label">Preço</label>
		    				
		 			 	</div>
		 			 	<div class="mb-5" id="categoriaBrinquedo">
		 			 		<label class="form-label">Categoria</label>
				    		
		 			 	</div>
					</div>
				    
				  </div>
				 
				  <br>
				  <div class="row">
				    	<div class="col-sm-10" id="desc">
				    		<label for="exampleInputEmail1" class="form-label">Descrição</label>
		    				
				    	</div>
				   </div>
				   <br>
				   <div class="row">
				    	<div class="col-sm-4">
				    		<label for="exampleInputEmail1" class="form-label">Foto:</label>
		    					<div class="input-group">
		  							<input type="file" class="form-control" name="file" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
		  							<button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">+</button>
								</div>
				    	</div>
				    </div>
				    <br>
				    <div class="row">
				    	<div class="col-sm-4">
				    		<a href="brinquedo?cmd=del&old_cod=${cod}" class="btn btn-danger"> <button type="button" id="btnDel" class="btn btn-danger">Excluir</button></a>
				    		<button type="submit" class="btn btn-outline-success"> Salvar</button>
				    	</div>
				    </div>  
		   
			</form>
        </div>
    </section>
    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
<script>


// CHAMANDO CONTEUDO PARA A PAGINA 
var cat = 0 ; 
var cod = $("#CodBrinq").val();
fetch('brinquedo?cmd=detalhe&cod='+cod+''). // add cod brinquedo
then(function (response){
	response.json().then(function (data){
			 		$('#nomeBrinquedo').append('<input type="text" class="form-control" id="txtNomeBrinquedo" name="txtNomeBrinquedo" value="'+data.nomeBrinquedo+'">')
			 		$('#codBrinquedo').append('<input type="text" class="form-control" id="txtCodBrinquedo" name="txtCodBrinquedo" value="'+data.codBrinquedo+'">')
			 		$('#precoBrinquedo').append('<input type="text" class="form-control" id="txtCodBrinquedo" name="txtPrecoBrinquedo" value="'+data.preco+'">')
			 		$('#categoriaBrinquedo').append(' <select class="form-select"  id="categoria" name="slccategoria" ></select>')
			 		$('#desc').append('<textarea class="form-control" id="exampleFormControlTextarea1" name="txtDescricao" rows="3">'+data.descricao+'</textarea>') 
			 		$('#picBrinquedo').append('<img class="product__details__pic__item--large" src="img/'+data.foto+'" alt="Image" height="380" width="400">')  
					
					cat = data.categoria			
	});
}); 

fetch('categorias?cmd=listar').
then(function (response){
	response.json().then(function (data){
		data.forEach( function (item){
			if(item.id != cat )
			{
				$('#categoria').append('<option value="' + item.id + '" >' + item.categoria + '</option>')
				
			 }else{
				 $('#categoria').append('<option value="' + item.id + '" selected>' + item.categoria + '</option>')
			 }	 
			 	
		});
	});
});

//ENVIO DO FORM PARA O BANCO 
 /* $("#btnDel").click(function(){
  		$.ajax({
  			url: 'brinquedo?cmd=del',
  			type: 'POST',
  			data: $('#formCat').serialize(),
  			sucess: function (data) {
  				alert("Brinquedo excluido com sucesso")
  				$(location).prop('href', 'listToysAdm.jsp')
  			}	
  		
  		});
});  */

</script>
</body>
</html>