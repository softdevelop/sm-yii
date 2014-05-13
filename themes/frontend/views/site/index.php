<?php 
	$baseUrl = Yii::app()->baseUrl.WWWROOT_FRONTEND; 
	$cs = Yii::app()->getClientScript();
	$cs->registerScriptFile($baseUrl.'/js/include/snapsvg.min.js');
	$cs->registerScriptFile($baseUrl.'/js/include/pizza.js');
	$cs->registerScriptFile($baseUrl.'/js/include/isotope.pkgd.js');
?>

<script>
var modal = (function(){
    var  method = {},
    $overlay,
    $modal,
    $content,
    $close;

    // Append the HTML
	$overlay = $('<div id="overlay"></div>');
	$modal = $('<div id="modal"></div>');
	$content = $('<div id="content"></div>');
	$close = $('<a id="close" href="#">close</a>');

	$modal.hide();
	$overlay.hide();
	$modal.append($content, $close);

	$(document).ready(function(){
		$('body').append($overlay, $modal);
	});
	//Close 
	
	$close.click(function(e){
		e.preventDefault();
		method.close();
	});
	// Set timeout
	setTimeout(function(e){
		//e.preventDefault();
		method.open({content: "<p>Welcome screen</p>"});
	},100);
	setTimeout(function(e){
		//e.preventDefault();
		method.close();
	},3000);
    // Center the modal in the viewport
    method.center = function () {
		var top, left;
		top = Math.max($(window).height() - $modal.outerHeight(), 0) / 2;
		left = Math.max($(window).width() - $modal.outerWidth(), 0) / 2;
		console.log($modal.outerWidth());
		$modal.css({
			top:top + $(window).scrollTop(),
			left:left + $(window).scrollLeft()
		});
	};

    // Open the modal
    method.open = function (settings) {
		$content.empty().append(settings.content);
		
		$modal.css({
			width: settings.width || 'auto', 
			height: settings.height || 'auto'
		})
		method.center();
		

		$(window).bind('resize.modal', method.center);

		$modal.show();
		$overlay.show();
	};

    // Close the modal
    method.close = function () {
		$modal.hide();
		$overlay.hide();
		$content.empty();
		$(window).unbind('resize.modal');
	};
	
    return method;
}());
	setTimeout(function(e){
		modal.open({content: "<p>Welcome screen</p>"});
	},100);
</script>
<style>
* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
.span6{
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
.span1,.span2,.span3,.span4,.span5,.span6,.span7,.span8,.span9,.span10,.span11,.span12{
	margin-left:0px !important;
	margin-right:0px !important;
}
.rainbowed > *:nth-child(10n+0) { background: hsl(   0, 100%, 50%); }
.rainbowed > *:nth-child(10n+1) { background: hsl(  36, 100%, 50%); }
.rainbowed > *:nth-child(10n+2) { background: hsl(  72, 100%, 50%); }
.rainbowed > *:nth-child(10n+3) { background: hsl( 108, 100%, 50%); }
.rainbowed > *:nth-child(10n+4) { background: hsl( 144, 100%, 50%); }
.rainbowed > *:nth-child(10n+5) { background: hsl( 180, 100%, 50%); }
.rainbowed > *:nth-child(10n+6) { background: hsl( 216, 100%, 50%); }
.rainbowed > *:nth-child(10n+7) { background: hsl( 252, 100%, 50%); }
.rainbowed > *:nth-child(10n+8) { background: hsl( 288, 100%, 50%); }
.rainbowed > *:nth-child(10n+9) { background: hsl( 324, 100%, 50%); }

.is-varying-sizes .element-item.width2 {
	
}
.is-varying-sizes .element-item.height1 {
	min-height:100px;
}
.is-varying-sizes .element-item.height2 {
	min-height:200px;
}
.is-varying-sizes .element-item.height3 {
	min-height:300px;
}
.is-varying-sizes .element-item.height4 {
	min-height:400px;
}
.is-varying-sizes .element-item.height5 {
	min-height:500px;
}
.is-varying-sizes .element-item.height6 {
	min-height:600px;
}
.element-item { width: 25%; float:left;}
ul[data-graph] li:nth-child(1) {
  color: red;
}

.svgcolor ul li:{
  color: red;
}

ul[data-graph] li:nth-child(1) {
  color: red;
}

ul[data-graph] li:nth-child(2) {
  color: red;
}

ul[data-graph] li:nth-child(3) {
  color: yellow;
}
#my-cool-chart svg{
	width:100%;
}

.nav-collapse .nav li{
	/*float:left;*/
	display:inline-block;
}

</style>
	<div class="span12" id="filters">
		<button type="button" class="btn btn-success" data-filter="*">All</button>
		<button type="button" class="btn btn-success" data-filter=".span5">Span5</button>
		<button type="button" class="btn btn-success" data-filter=".span6">Span6</button>
	</div>
	<div class="span12">
		<div class="isotope is-varying-sizes rainbowed" id="container">
			<div class="element-item span6 height4" style="margin-left: 2.564102564102564%;"><p class="symbol">1</p></div>
			<div class="element-item span5 svgcolor ">
				<p class="symbol">2</p>
				<div class="span3">
					<ul data-pie-id="my-cool-chart" data-options='{"donut": "true"}'>
						<li data-value="36">Pepperoni</li>
						<li data-value="14">Sausage</li>
						<li data-value="8">Cheese</li>
						<li data-value="11">Mushrooms</li>
						<li data-value="7">Chicken</li>
						<li data-value="24">Other</li>
					</ul>
				</div>
				<div class="span10" style="position:;right:0px;top:0px;">
					<div id="my-cool-chart"></div>
				</div>
			</div>
			<div class="element-item span6 height2"><p class="symbol">3</p>
				
				
			</div>
			<div class="element-item span6 height2"><p class="symbol">4</p></div>
			<div class="element-item span5  height2"><p class="symbol">5</p></div>
			<div class="element-item span6 height1" style="margin-left: 2.564102564102564%;"><p class="symbol">12</p></div>
		</div>
	</div>
<script>
	$(document).ready(function(){
		Pizza.init();
		Pizza.init('#my-cool-chart', {
			data: [23, 43, 17, 7, 11],
			stroke_color: 'red',
		});
		var $container = $('#container');

		$container.isotope({ 
			//layoutMode: 'masonryHorizontal',
			layoutMode: 'fitRows',
			itemSelector: '.element-item',
			masonry: {
				columnWidth: 30,
			}
		});
		$('#filters').on( 'click', 'button', function( event ) {
			var filtr = $(this).attr('data-filter');
			$container.isotope({ filter: filtr });
		});
		
	});
	
</script>