+<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
 
 
<!-- Humberger start -->

<!-- Humberger End -->


	<!-- Featured Section Begin -->
    <!--  --><section class="featured spad">
        <div class="container">
        	<div class="section-title">
                        <h2>Destaques</h2>
                    </div>
            <div id="divCards">
            <div class="row" id="divRow0"> </div>
            </div>
     </div>
       
    </section>
    <!--  Featured Section End-->
	




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
  var count = 0 ;
  var nDiv= 0;
	fetch('brinquedo?cmd=listSlider').
		then(function (response){
			response.json().then(function (data){
				data.forEach( function (item){
						// cria uma nova linha com 3 elementos dentro	  
					 		$('#divRow0').append(''+
						 			'<div class="col-sm-4">'+
								    '<div class="card" style="width: 18rem;">'+
								    '<img src="img/'+item.foto+'" class="card-img-top" height="180" width="140">'+
								      '<div class="card-body">'+
								        '<h5 class="card-title">'+item.nomeBrinquedo+'</h5>'+
								        '<p class="card-text">'+item.descricao+'</p>'+
								        '<b><p class="card-text">R$'+item.preco+'</p></b>'+
								        '<a href="brinquedo?cmd=redirectBrinq&cod='+item.codBrinquedo+'" class="primary-btn">Detalhes</a>'+
								      '</div>'+
								    '</div>'+
								  '</div>')
				});
				
			});
		});
</script>
</html>