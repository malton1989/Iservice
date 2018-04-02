<?php
defined('_JEXEC') or die;
$this->setGenerator(null); //отключили мета-тег generator
JHtml::_('jquery.framework');

?>
<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" >
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<!--[if lt IE 9]> 
 <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script> 
<![endif]-->
<jdoc:include type="head" />


<script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/bootstrap.min.js"></script> 
<script type="text/javascript">
        jQuery.noConflict();
</script>
<script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/myscript.js"></script>
<link href="templates/<?php echo $this->template ?>/css/bootstrap.min.css" rel="stylesheet"/>
<link rel="stylesheet" href="templates/<?php echo $this->template ?>/css/template.css" type="text/css" />
<link href="templates/<?php echo $this->template ?>/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>



<!--header-->

<div class="container header">

	<div class="row row-centered">

		<div class="col-md-4 col-centered">

			<a href="/servicelab"><img src="templates/<?php echo $this->template ?>/images/logo.jpg"" class="main_image"></a>

		</div>

		<div class="col-md-4 col-centered">

            <div class="text-center">

                <a href="/index.php">

                    <h2>service lab</h2>

                </a>

            </div>

		</div>

		<div class="col-md-4 col-centered">

			<h3 class="">тел. 8-987-654-321</h3>

		</div>

	</div>

</div>



<!--main menu-->

<div class="container text-center">


	<div class="row">

		<div class="navbar navbar-inverse">
		 <div class="navbar-header">
		  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">

						<span class="sr-only">Меню</span>

						<span class="icon-bar"></span>

						<span class="icon-bar"></span>

						<span class="icon-bar"></span>

					</button>
		 </div>
	<div class="collapse navbar-collapse" id="menu">
		<jdoc:include type="modules" name="menu" style="none"/>
		</div>
	</div>
	</div>

</div>
<!--menu end --> 
<!--Content -->

<div class="container">
<div class="row">
	
	<jdoc:include type="component" />
</div>
</div>

<!-- content end -->

<!-- slider -->
<?php if($this->countModules('slider')) : ?>
<div class="container" id="slider">

	<jdoc:include type="modules" name="slider" style="none"/>
	
</div>
<?php endif;?>
<!-- slider end -->



<!-- button block -->
<?php if($this->countModules('button1')) : ?>
<div class="container">

	<div class="row">

		<div class="section-4 text-center button-links">

			<div class="col-md-3"><jdoc:include type="modules" name="button1" style="none"/></div>

			<div class="col-md-3"><jdoc:include type="modules" name="button2" style="none"/></div>

			<div class="col-md-3"><jdoc:include type="modules" name="button3" style="none"/></div>

			<div class="col-md-3"><jdoc:include type="modules" name="button4" style="none"/></div>

		</div>

	</div>

</div>
<?php endif; ?>
<!-- button block end -->

<?php if($this->countModules('karta')) : ?>
<div class="container">

    <div class="row">

        <div class="section-4 text-center">

            <div class="col-md-6" id="karta">
			<jdoc:include type="modules" name="karta" style="none"/>
			</div>

            <div class="col-md-6 info-about-us">

			<jdoc:include type="modules" name="sidebar" style="none"/>

            </div>

        </div>

    </div>

</div>
<?php endif; ?>


<?php if($this->countModules('Nijnii_blok_info')) : ?>
<div class="container" class="nigniiBlok">

    <div class="row">

        <div>

		<jdoc:include type="modules" name="Nijnii_blok_info" style="none"/>

        </div>

    </div>

</div>
<?php endif; ?>

<?php if($this->countModules('Footer')) : ?>
<div class="container">

    <div class="row text-center">

	<jdoc:include type="modules" name="Footer" style="none"/>

    </div>

</div>
<?php endif; ?>
		

	</body>

</html>