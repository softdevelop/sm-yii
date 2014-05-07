<?php 
	$baseUrl = Yii::app()->baseUrl.WWWROOT_FRONTEND; 
	$cs = Yii::app()->getClientScript();
	//$cs->registerCssFile($baseUrl.'/css//include/sortable.css');
	$cs->registerScriptFile($baseUrl.'/js/include/jquery.flot.js');
	$cs->registerScriptFile($baseUrl.'/js/include/jquery.flot.categories.js');
?>
<?php 
	
?>
<style>
#placeholder{
	width:100%;
	height:400px;
}
</style>
<div class="page-header">
	<h3>Show detail for <?php echo $stockname;?></h3>
</div>
<div id="placeholder">

</div>
<script type="text/javascript">
	
	$(function() {
		var data= [] ;
		var buffer= [] ;
		<?php foreach($stocks as $key=>$value):?>
				buffer[<?php echo $key?>] = [ '<?php echo $value->timedate ?>',  <?php echo $value->price; ?> ];
				data.push(buffer[<?php echo $key?>]);
		<?php endforeach;?>
		/*var data = [ ["January", 10], ["February", 8], ["March", 4], ["April", 13], ["May", 17], ["June", 9] ];*/
		$.plot("#placeholder", [ data ], {
			series: {
				bars: {
					show: true,
					barWidth: 0.3,
					align: "center"
				}
			},
			xaxis: {
				mode: "categories",
				tickLength: 0
			}
		});
	});
</script>