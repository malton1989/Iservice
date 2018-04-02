<?php
defined('_JEXEC') or die;

$img= array();
$link= array();
$text= array();
for($i=1; $i<4;$i++){
	if($params->get('img_'.$i)!='')
	{
		$img[$i] = $params->get('img_'.$i);
		$link[$i] = $params->get('link_'.$i);
		$text[$i] = $params->get('text_'.$i);
	}
}
?>
<script
  src="http://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
  <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<div class="container<?php echo $params->get('moduleclass_sfx'); ?>" >

	<div class="row">

		<div id="myCarousel" class="carousel slide" data-ride="carousel">

			<!-- Wrapper for slides -->

			<div class="carousel-inner" role="listbox">


			<?php foreach($img as $key => $value)
			{
				echo '<div class="item">';
				if($link[$key]=='')
				{
					echo '<img src="'.$value.'">';}
					else{
						echo'<a href="'.$link[$key].'"><img src="'.$value.'"/></a>';
					}
					if($text[$key]!=''){
						echo'<div class="carousel-caption">'.$text[$key].'</div>';
					}
					echo'</div>';
			}
			?>

			</div>



			<!-- Left and right controls -->

			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">

				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>

				<span class="sr-only">Previous</span>

			</a>

			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">

				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>

				<span class="sr-only">Next</span>

			</a>

		</div>

	</div>

</div>