<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="main_page_index" %>

<asp:Content ID="content2" ContentPlaceHolderID="MPBody" runat="server">
    
          
	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>GET</span>-MYCAR</h1>
									<h2>Buy your Desired car's from here</h2>
									<p>Choose the best car to ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- </p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="images/home/car1.jpg" class="girl img-responsive" alt="" />
									<img src="images/home/pricing.png"  class="pricing" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<h1><span>GET</span>-MYCAR</h1>
									<h2>100% Satisfiable Products</h2>
									<p>enter some data .................................................................................................................................................................................. </p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="images/home/car2.jpg" class="girl img-responsive" alt="" />
									<img src="images/home/pricing.png"  class="pricing" alt="" />
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>GET</span>-MYCAR</h1>
									<h2>Mostly Preferable for Sports Persons</h2>
									<p>Enter some data related to cars -------------------------------------------------------------------------------------------------------------------------------------------------------- </p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="images/home/car3.jpg" class="girl img-responsive" alt="" />
									<img src="images/home/pricing.png" class="pricing" alt="" />
								</div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Category</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Sports Car
										</a>
									</h4>
								</div>
								<div id="sportswear" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="#">Audi </a></li>
											<li><a href="#">Ferrari </a></li>
											<li><a href="#">Bugatti </a></li>
											<li><a href="#">Lamborghini</a></li>
											<li><a href="#">Dodge </a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#mens">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Domestic use 
										</a>
									</h4>
								</div>
								<div id="mens" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="#">Honda</a></li>
											<li><a href="#">Maruthi Suziki</a></li>
											<li><a href="#">Toyota</a></li>
											<li><a href="#">TATA</a></li>
											<li><a href="#">Mahindra</a></li>
											<li><a href="#">Hyundai</a></li>
											<li><a href="#">Ford</a></li>
											<li><a href="#">Skoda</a></li>
											<li><a href="#">Volkswagen</a></li>
											<li><a href="#">Chevrolet</a></li>
										</ul>
									</div>
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#womens">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Transportation
										</a>
									</h4>
								</div>
								<div id="womens" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="#">Mahindra</a></li>
											<li><a href="#">Toyota</a></li>
											<li><a href="#">Chevrolet</a></li>
											<li><a href="#">Rolls Royce</a></li>
											<li><a href="#">Ferrari</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Sample to modify </a></h4>
								</div>
							</div>
							
						</div><!--/category-products-->
					
						<div class="brands_products"><!--brands_products-->
							<h2>Brands</h2>
							<div class="brands-name">
								<ul class="nav nav-pills nav-stacked">
									<li><a href="#"> <span class="pull-right">(4)</span>Land Rover</a></li>
									<li><a href="#"> <span class="pull-right">(5)</span>Lambhorgini</a></li>
									<li><a href="#"> <span class="pull-right">(3)</span>Jaguar</a></li>
									<li><a href="#"> <span class="pull-right">(4)</span>Ferrari</a></li>
									<li><a href="#"> <span class="pull-right">(5)</span>Chervolet</a></li>
									<li><a href="#"> <span class="pull-right">(5)</span>BMW</a></li>
									<li><a href="#"> <span class="pull-right">(4)</span>Rolls Royce</a></li>
									<li><a href="#"> <span class="pull-right">(5)</span>Audi</a></li>
								</ul>
							</div>
						</div><!--/brands_products-->
						
						
						
						<div class="shipping text-center"><!--shipping-->
							<img src="images/logo.JPG"  alt="" />
						</div><!--/shipping-->
					
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Features Items</h2>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="images/home/audi/A3 cabriolet.jpg" alt="" />
											<h2> 44.75 to 44.75 lakh</h2>
											<p>Audi-A3 cabriolet</p>
											<%--<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
												<a href="#" class="btn btn-default add-to-cart">View</a>
										</div>
										<div class="product-overlay">
											<div class="overlay-content">
												<h2> 44.75 to 44.75 lakh</h2>
												<p>Audi-A3 Cabriolet</p>
												<%--<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
												<a href="#" class="btn btn-default add-to-cart">View</a>
										
											</div>
										</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/audi/a3.jpg" alt="" />
										<h2> 24.56 to 32.93 lakh</h2>
										<p>Audi-A3</p>
										<%--<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
												<a href="#" class="btn btn-default add-to-cart">View</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2> 24.56 to 32.93 lakh</h2>
											<p>Audi-A3</</p>
											<%--<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
												<a href="#" class="btn btn-default add-to-cart">View</a>
										</div>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/audi/a8L.jpg" alt="" />
										<h2>1.07 to 1.77 crore</h2>
										<p>Audi-A8L</p>
										<%--<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
												<a href="#" class="btn btn-default add-to-cart">View</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>1.07 to 1.77 crore</h2>
											<p>Audi-A8L</p>
										<%--	<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
												<a href="#" class="btn btn-default add-to-cart">View</a>
										</div>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/audi/r8.jpg" alt="" />
										<h2> 1.57 to 2.14 crore</h2>
										<p>Audi-R8</p>
										<%--<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
												<a href="#" class="btn btn-default add-to-cart">View</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2> 1.57 to 2.14 crore</h2>
											<p>Audi-R8</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
										</div>
									</div>
									<img src="images/home/new.png" class="new" alt="" />
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/audi/RS6.jpg" alt="" />
										<h2>1.35 to 1.35 crore</h2>
										<p>Audi-RS6</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>1.35 to 1.35 crore</h2>
											<p>Audi-RS6</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
										</div>
									</div>
									<img src="images/home/sale.png" class="new" alt="" />
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/audi/RS6.jpg" alt="" />
										<h2>1.57 to 2.14 crore</h2>
										<p>Audi-RS6</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						
					</div><!--features_items-->
					<h2 class="title text-center">Quick search</h2>
					<div class="category-tab"><!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#tshirt" data-toggle="tab">BMW</a></li>
								<li><a href="#blazers" data-toggle="tab">Audi</a></li>
								<li><a href="#sunglass" data-toggle="tab">Ferrari</a></li>
								<li><a href="#kids" data-toggle="tab">Chervolet</a></li>
								<li><a href="#poloshirt" data-toggle="tab">Rolls Royce</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane fade active in" id="tshirt" >
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/bmw/5 series.jpg" alt="" />
												<h2>44.90 to 59.90 lakh</h2>
												<p>Bmw-5 series</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/bmw/6 series grane copupe.jpg" alt="" />
												<h2> 1.14 to 1.21 crore</h2>
												<p>Bmw-6 series GraneGopupe</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/bmw/7 series.jpg" alt="" />
												<h2>1.07 to 1.73 crore</h2>
												<p>Bmw-7 series</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/bmw/i8.jpg" alt="" />
												<h2>2.29 to 2.29 crore</h2>
												<p>Bmw-i8</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
							</div>
							
							<div class="tab-pane fade" id="blazers" >
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/audi/A3 cabriolet.jpg" alt="" />
												<h2> 44.75 to 44.75 lakh</h2>
												<p>Audi-A3 cabriolet</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/audi/a3.jpg" alt="" />
												<h2>24.56 to 32.93 lakh</h2>
												<p>Audi-A3</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/audi/a8L.jpg" alt="" />
												<h2>1.07 to 1.77 crore</h2>
												<p>Audi-a8L</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/audi/r8.jpg" alt="" />
												<h2>1.57 to 2.14 crore</h2>
												<p>Audi-r8</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
							</div>
							
							<div class="tab-pane fade" id="sunglass" >
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/ferrari/458.jpg" alt="" />
												<h2>4.22 to 4.40 crore</h2>
												<p>Ferrari-458</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/ferrari/F12 berlineta.jpg" alt="" />
												<h2> 4.87 to 4.87 crore</h2>
												<p>Ferrari-F12 berlineta</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/ferrari/488 GTB.jpg" alt="" />
												<h2>3.99 to 3.99 crore</h2>
												<p>Ferrari-488 GTB</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/ferrari/california T.jpg" alt="" />
												<h2> 3.45 to 3.45 crore</h2>
												<p>Ferrari-California T</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
							</div>
							
							<div class="tab-pane fade" id="kids" >
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/chervolet/enjoy.jpg" alt="" />
												<h2> 6.24 to 8.79 lakh</h2>
												<p>chervolet-Enjoy</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/chervolet/beat.jpg" alt="" />
												<h2>4.20 to 6.28 lakh</h2>
												<p>chervolet-Beat</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/chervolet/captiva.jpg" alt="" />
												<h2>25.14 to 27.36 lakh</h2>
												<p>chervolet-captiva</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/chervolet/cruze.jpg" alt="" />
												<h2>14.27 to 16.86 lakh</h2>
												<p>chervolet-cruze</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
							</div>
							
							<div class="tab-pane fade" id="poloshirt" >
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/Rolls royce/ghost series 2.jpg" alt="" />
												<h2>4.50 to 4.50 crore</h2>
												<p>Rolls royce-ghost series 2</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/Rolls royce/wraith.jpg" alt="" />
												<h2>4.60 to 4.60 crore</h2>
												<p>Rolls royce-wraith</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/Rolls royce/phatom2.jpg" alt="" />
												<h2>6.10 to 6.10 crore</h2>
												<p>Rolls royce-phatom2</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/Rolls royce/ghost.jpg" alt="" />
												<h2>3.06 to 3.09 crore</h2>
												<p>Rolls royce-ghost</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
											</div>
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div><!--/category-tab-->
					
					<div class="recommended_items"><!--recommended_items-->
						<h2 class="title text-center">recommended items</h2>
						
						<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="item active">	
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/jaguar/F TYpe.jpg" alt="" />
													<h2>1.25 to 1.87 crore</h2>
													<p>Jaguar-F TYpe</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/jaguar/XF.jpg" alt="" />
													<h2>50.23 lakh to 1.62 crore</h2>
													<p>Jaguar-XF</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/land rover/discovery 4.jpg" alt="" />
													<h2>73.71 lakh to 1.14 crore</h2>
													<p>land rover-Discovery 4</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
												</div>
												
											</div>
										</div>
									</div>
								</div>
								<div class="item">	
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/land rover/eveque.jpg" alt="" />
													<h2>48.73 to 56.21 lakh</h2>
													<p>land rover-Eveque</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/audi/A3.jpg" alt="" />
													<h2>24.56 to 32.93 lakh</h2>
													<p>Audi-A3</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/audi/r8.jpg" alt="" />
													<h2>25.3 to 32.6 lakh</h2>
													<p>Audi-R8</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												<a href="#" class="btn btn-default add-to-cart">View</a>
												</div>
												
											</div>
										</div>
									</div>
								</div>
							</div>
							 <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							  </a>
							  <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
								<i class="fa fa-angle-right"></i>
							  </a>			
						</div>
					</div><!--/recommended_items-->
					
				</div>
			</div>
		</div>
	</section>



	
	

  
    
   
    </asp:Content>