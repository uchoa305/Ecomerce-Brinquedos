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
 	   <form action="" id="formCat" method="post" clas="form" enctype="multipart/form-data">
	       	<!--  <input type="hidden" name="cmd" value="incluir" > -->
	       	<div class="row">
	          <div class="mb-3">
	            <label for="recipient-name" class="col-form-label">Categoria:</label>
	            <input type="text" class="form-control" name="txtNomeCategoria">
	       
	          </div>
	           </div>
	          <div class="row">
	          <div class="mb-3">
	            <label for="recipient-name" class="col-form-label">Linha:</label>
	            <select class="form-select" aria-label="Default select example" id="slcLinha" name="slcLinha">
					  <option value="1">Meninos</option>
					  <option value="2">Meninas</option>
					  <option value="3">Todos</option>
				</select>
	          </div>
	          </div>
	          <div class="row">
	          <div class="mb-3">
	            <label for="recipient-name" class="col-form-label">Faixa Etaria:</label>
	            <input type="text" class="form-control" name="txtFaixaEtaria">
	       
	          </div>
	           </div>
	          <div class="mb-3">
	            <label for="message-text" class="col-form-label">Descri??o:</label>
	            <textarea class="form-control" id="exampleFormControlTextarea1" name="txtDescricaoCategoria" rows="3"></textarea>
	          </div>
	          <div class="modal-footer">
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
  
  	$("#formCat").submit(function(){
  		$.ajax({
  			url: 'categorias?cmd=incluir',
  			type: 'POST',
  			data: $('#formCat').serialize(),
  			sucess: function (data) {
  					alert("Cadastro realizado com sucesso!")
  			}	
  		
  		});
  		
  	});
  	
  </script>
</html>