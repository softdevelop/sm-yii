<?php 
	$baseUrl = Yii::app()->baseUrl.WWWROOT_FRONTEND; 
	$cs = Yii::app()->getClientScript();
	$cs->registerCssFile($baseUrl.'/css//include/sortable.css');
	$cs->registerScriptFile($baseUrl.'/js/include/jquery.tablesorter.js');
?>
<table class="table table-bordered" id="myTable">
	<thead>
		<tr>
			<th>#</th>
			<th><?php echo Yii::t('strings','Stock Name')?></th>
		</tr>
	</thead>
	<tbody>
	<?php if ($stocks!==null):?>
		<?php $i=1;?>
		<?php foreach ($stocks as $key=>$value):?>
			<tr>
				<td><?php echo $i; $i++;?></td>
				<td><a href="<?php echo Yii::app()->createUrl('/stocks/show/view/stockname/'.$value->stockname)?>"><?php echo $value->stockname;?></a></td>
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
