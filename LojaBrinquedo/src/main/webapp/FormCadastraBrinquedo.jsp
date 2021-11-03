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
    
    <title>Ri Rap</title>
   
  </head>
  <body > <!-- onload="CarregaDados()" -->
 <div class="container">
	<div class="row">
		    <h2>Cadastro de Brinquedos</h2>
	</div>
	<hr/>
 	<form action="brinquedo" method="post" enctype="multipart/form-data">
 		<input type="hidden" name="cmd" value="incluir">
		  <div class="row">
		    <div class="col-sm-10">
		    <div class="mb-3">
    			<label for="exampleInputEmail1" class="form-label">Nome Brinquedo</label>
    			<input type="text" class="form-control" id="txtNomeBrinquedo" name="txtNomeBrinquedo" aria-describedby="emailHelp">
 			 </div>
			</div>
		    
		  </div>
		  <div class="row">
		    <div class="col-sm-4">
				<div class="mb-3">
    			<label for="exampleInputEmail1" class="form-label">Cod Brinquedo</label>
    			<input type="text" class="form-control" id="txtCodBrinquedo" name="txtCodBrinquedo">
 			 	</div>
			</div>
		    <div class="col-sm-6">
		    	<label for="exampleInputEmail1"  class="form-label">Categoria</label>
		    	<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" >+</button>
		    	<select class="form-select" aria-label="Default select example" id="categoria" name="slccategoria">
		    	
				</select>
		    </div>
		    <div id="teste"> </div>
		    <div class="row">
		    	<div class="col-sm-4">
		    		<label for="exampleInputEmail1" class="form-label">Preço</label>
    				<input type="text" class="form-control" id="txtCodBrinquedo" name="txtPrecoBrinquedo">
		    	</div>
		    </div>
		  </div>
		  <br>
		  <div class="row">
		    	<div class="col-sm-10">
		    		<label for="exampleInputEmail1" class="form-label">Descrição</label>
    				<textarea class="form-control" id="exampleFormControlTextarea1" name="txtDescricao" rows="3"></textarea>
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
		    		<button type="submit" class="btn btn-outline-success">Cadastrar</button>
		    	</div>
		    </div>  
		   
	</form>
	
	<!--  modal Categoria  beggin  -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="" id="formCat" method="post" clas="form" enctype="multipart/form-data">
	       	<!--  <input type="hidden" name="cmd" value="incluir" > -->
	          <div class="mb-3">
	            <label for="recipient-name" class="col-form-label">Categoria:</label>
	            <input type="text" class="form-control" name="txtNomeCategoria">
	          </div>
	          <div class="mb-3">
	            <label for="message-text" class="col-form-label">Descrição:</label>
	            <textarea class="form-control" id="exampleFormControlTextarea1" name="txtDescricaoCategoria" rows="3"></textarea>
	          </div>
	          <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
	        <button type="submit" class="btn btn-primary">Cadastrar</button>
	      </div>
       </form>
      </div>
      
    </div>
  </div>
</div>
</div>



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
  // carrega option select categoria do form de cadastro de brinquedos
  	fetch('categorias?cmd=listar').
  			then(function (response){
  				response.json().then(function (data){
  					
  					data.forEach( function (item){
  						
  						 
  						 $('#categoria').append('<option value="' + item.id + '">' + item.categoria + '</option>')
  					});
  				});
  			});
  //envio do form de cadastro de categoria
  	$("#formCat").submit(function(){
  		$.ajax({
  			url: 'categorias?cmd=incluir',
  			type: 'POST',
  			data: $('#formCat').serialize(),
  			sucess: function (data) {
  				$('#exampleModal').modal('hide');
  				
  
  			}	
  		
  		});
  		
  	});
  	// carrega modal
  	var exampleModal = document.getElementById('exampleModal')
  	exampleModal.addEventListener('show.bs.modal', function (event) {
  	  // Button that triggered the modal
  	  var button = event.relatedTarget
  	  // Extract info from data-bs-* attributes
  	  var recipient = button.getAttribute('data-bs-whatever')
  	  // If necessary, you could initiate an AJAX request here
  	  // and then do the updating in a callback.
  	  //
  	  // Update the modal's content.
  	  var modalTitle = exampleModal.querySelector('.modal-title')
  	  var modalBodyInput = exampleModal.querySelector('.modal-body input')

  	  modalTitle.textContent = 'Cadastro de  Categorias';
  	  modalBodyInput.value = recipient
  	})
  </script>
</html>