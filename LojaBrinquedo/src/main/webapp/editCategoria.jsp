<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- imports -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
  </head>
  <body > <!-- onload="CarregaDados()" -->
 <div class="container">
	
		    <h2>Cadastro de Categorias</h2>
	
	<hr/>
 	   <form method="GET" action="categorias?cmd=edit" enctype="multipart/form-data" >
 	   		<input type="hidden" name="cmd" value="edit">
		 	<input type="hidden" id='old_cod' name="old_cod" value="${cod}">  
	       	<div class="row">
	          <div class="mb-3" id="div_categoria">
	            <label for="recipient-name" class="col-form-label">Categoria:</label>
	            
	          </div>
	           </div>
	          <div class="row">
		          <div class="mb-3" id='div_linha'>
		            <label for="recipient-name" class="col-form-label">Linha:</label>
		          </div>
	          </div>
	          <div class="row">
		          <div class="mb-3" id="div_faixa_etaria">
		            <label for="recipient-name" class="col-form-label">Faixa Etaria:</label>
		          </div>
	           </div>
	          <div class="mb-3" id="div_descricao">
	            <label for="message-text" class="col-form-label">Descrição:</label>
	          </div>
	          <div class="modal-footer">
	          <a href="categorias?cmd=del&old_cod=${cod}" class="btn btn-danger"> Excluir</a>
	       	 	<button type="submit" class="btn btn-primary">Cadastrar</button>
	     	 </div>
       </form>
       </div>
	<!--  modal Categoria  beggin  -->


    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
  <script>
  var cod = $("#old_cod").val();
  fetch('categorias?cmd=detalhe&cod='+cod+''). // add cod brinquedo
  then(function (response){
  	response.json().then(function (data){
  		console.log(data)
  			 		$('#div_categoria').append('<input type="text" class="form-control" id="nomeCategoria" name="txtNomeCategoria" value="'+data.categoria+'">')
  			 		$('#div_faixa_etaria').append(' <input type="text" class="form-control" name="txtFaixaEtaria" value="'+data.faixa_etaria+'" >') 
  			 		$('#div_descricao').append('<textarea class="form-control" id="exampleFormControlTextarea1" name="txtDescricao" rows="3">'+data.descricao+'</textarea>') 
  			 		$('#div_linha').append(' <select class="form-select"  id="linha" name="slcLinha" ></select>')
  			 		carrega_linha(data.cod_linha);  
  						
  	});
  }); 
  function carrega_linha(cod_linha)
  {
		if(cod_linha == 1 )
		{
				$('#linha').append(' <option value="1" selected>Meninos</option>'+
						  '<option value="2">Meninas</option>'+
						  '<option value="3">Todos</option>');
		}else if(cod_linha == 2)
		{
			$('#linha').append(' <option value="1">Meninos</option>'+
					  '<option value="2" selected>Meninas</option>'+
					  '<option value="3">Todos</option>');
		}
		else if(cod_linha == 3)
		{
			$('#linha').append(' <option value="1">Meninos</option>'+
					  '<option value="2" >Meninas</option>'+
					  '<option value="3"selected>Todos</option>');
		}else
		{
			$('#linha').append(' <option value="0">Selecione ....</option>'+
					  '<option value="1" >Meninos</option>'+
					  '<option value="2" >Meninas</option>'+
					  '<option value="3">Todos</option>');
		}
		  
  }	
  </script>
</html>