<?php 
	$baseUrl = Yii::app()->baseUrl.WWWROOT_FRONTEND; 
	$cs = Yii::app()->getClientScript();
	$cs->registerCssFile($baseUrl.'/css//include/sortable.css');
	$cs->registerScriptFile($baseUrl.'/js/include/jquery.tablesorter.js');
	$cs->registerScriptFile($baseUrl.'/js/include/jquery.flot.js');
	$cs->registerScriptFile($baseUrl.'/js/include/jquery.flot.pie.js');
?>
<table class="table table-bordered" id="myTable">
	<thead>
		<tr>
			<th>#</th>
			<th><?php echo Yii::t('strings','Stock Name')?></th>
			<th>Chart</th>
		</tr>
	</thead>
	<tbody>
	<?php if ($stocks!==null):?>
		<?php $i=1;?>
		<?php foreach ($stocks as $key=>$value):?>
			<tr>
				<td><?php echo $i; $i++;?></td>
				<td><a href="<?php echo Yii::app()->createUrl('/stocks/show/view/stockname/'.$value->stockname)?>"><?php echo $value->stockname;?></a></td>
				<td><div id="placeholder<?php echo $i;?>" style="height:200px;"> </div></td>
				<script type="text/javascript">
					var data = [],
						series = Math.floor(Math.random() * 2) + 3;

					for (var i = 0; i < series; i++) {
						data[i] = {
							label: "Label" + (i + 1),
							data: Math.floor(Math.random() * 100) + 1
						}
					}
					var number = 'placeholder<?php echo $i;?>';
					$.plot('#'+number, data, {
					    series: {
					        pie: {
					            show: true
					        }
					    },
					    legend: {
					        show: false
					    }
					});
				</script>
			</tr>
		<?php endforeach;?>
	<?php endif;?>
	</tbody>
</table>
<script>
	$(document).ready(function(){
        $("#myTable").tablesorter();
		
    });
</script>
