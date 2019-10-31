<?php
require "header.php";
?>

<div class="content">
	<h1>Detail Product</h1>
	<div class="container">

		<?php
	$id = $_GET['id'];
	$products = new Products;
	$getProductById = $products->getProductById($id);
	foreach($getProductById as $key=>$value){
	?>

		<div class='sanpham'>
			<div class="row">
				<div class="col-md-4">
					<img src='public/images/<?php echo $value['image'] ?>'>
				</div>
				<div class="col-md-8">
					<h1><?php echo $value['name'] ?></h1>
					<b>Giá: </b> <span class='gia'><?php echo $value['price'] ?></span><br>
					<p><?php echo $value['description'] ?></p>
					<a class="addcart" href="#">Add To Cart</a>
				</div>
			</div>
		</div>
		<?php } ?>
	</div>
</div>
<?php
	
require "footer.php";
?>