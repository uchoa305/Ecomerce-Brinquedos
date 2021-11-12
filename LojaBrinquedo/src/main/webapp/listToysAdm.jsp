<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
     <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    
</head>
<body>
 <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Cod Brinquedo</th>
      <th scope="col">Nome</th>
      <th scope="col">Preco</th>
      <th scope="col">Categoria</th>
      <th scope="col">Ações</th>
    </tr>
  </thead>
  <tbody id="tableList">
  </tbody>
</table>

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
        integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
        crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>


<script type="text/javascript">	
 
	fetch('brinquedo?cmd=listSlider').
		then(function (response){
			response.json().then(function (data){
				data.forEach( function (item){
					
						  $('#tableList').append('<tr>')
						  $('#tableList').append('<th scope="row">'+item.codBrinquedo+'</th>')
						  $('#tableList').append('<td>'+item.nomeBrinquedo+'</td>')
						  $('#tableList').append('<td>'+item.preco+'</td>')
						  $('#tableList').append('<td >'+carregaCat(item.categoria)+'</td>')
						  $('#tableList').append('<td> <a href="brinquedo?cmd=redirectEdit&cod='+item.codBrinquedo+'"> <i class="material-icons" style="font-size:20px;">edit</i><a>')
						  $('#tableList').append('</td>')
						  $('#tableList').append('</tr>')  	    		 
				});
				
			});
		});

function carregaCat(cat){	
		var categoria; 
			    jQuery.ajax({
			    	async: false,
			        type: 'GET',
			        url:  'categorias?cmd=listar',
			        dataType: 'json', 
			        success: function(data) {
			            jQuery.each(data, function(index, item) {
			            	if(item.id == cat)
				            {
				            	 categoria = item.categoria 
				            }
			            });
			        },
			        error: function(XMLHttpRequest, textStatus, errorThrown) {
			            alert("some error");
			        }
			    });
			 return categoria;
}
		

	

</script>
</html>
