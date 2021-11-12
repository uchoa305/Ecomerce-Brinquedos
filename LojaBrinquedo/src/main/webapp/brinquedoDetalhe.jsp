<!DOCTYPE html>

<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>

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
<input type="hidden" id='CodBrinq'  value="${cod}">  
  
	
    <!-- Header Section Begin -->
    
    <!-- Header Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.gif">
       
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item" id='picBrinquedo'>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <div id='nomeBrinquedo'></div>
                        <div class="product__details__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span>(1 reviews)</span>
                        </div>
                        <div class="product__details__price" id='divPreco'>  </div>
                        <div id="divDescricao">
                        
                         </div>
                        <div class="product__details__quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </div>
                        </div>
                        <a href="#" class="primary-btn">Add ao carinho</a>
                        <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                        <ul>
                            <li><b>Disponibilidade</b> <span>Em estoque</span></li>
                            <li><b>Prazo</b> <span>01 dia de envio. <samp>Envio imediato</samp></span></li>
                            <li id='liCat'></li>
                            <li><b>Compartilhe</b>
                                <div class="share">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">Descrição</a>
                            </li>
                            <!-- <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">Information</a>
                            </li> -->
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">Avaliações <span>(1)</span></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc" id='desc'>
                                    <h6>Descrição do produto</h6>
                                    
                                </div>
                            </div>
                           
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Nota 10</h6>
                                    <p> Gostei muito do produto, voltarei a comprar.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->

    

    <!-- Footer Section Begin -->
   <div id='footer'> </div>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>


</body>
<script>
var cat = 0 ; 
var cod = $("#CodBrinq").val();
fetch('brinquedo?cmd=detalhe&cod='+cod+''). // add cod brinquedo
then(function (response){
	response.json().then(function (data){
			 		$('#nomeBrinquedo').append('<h3>'+data.nomeBrinquedo+' - '+data.codBrinquedo+'</h3>')  
			 		$('#desc').append('<p>'+data.descricao+'</p>')   
			 		$('#picBrinquedo').append('<img class="product__details__pic__item--large" src="img/'+data.foto+'" alt="">')  
					$('#divPreco').append('<span>R$'+data.preco+'</span>')
					/* $('#liCat').append('<b>Categoria</b> <span>'+data.categoria+'</span>') */
					cat = data.categoria			
	});
}); 

fetch('categorias?cmd=listar').
then(function (response){
	response.json().then(function (data){
		data.forEach( function (item){
			 if(item.id == cat ){
				 $('#liCat').append('<b>Categoria</b> <span>'+item.categoria+'</span>')
			 }	 
		});
	});
});




</script>
</html>