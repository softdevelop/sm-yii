<?php if(Yii::app()->user->hasFlash('success')):?>
	<div id="msg" class="alert hide alert-success" style="clear: both; display: block;">	
		<a href="#" class="close" data-dismiss="alert" type="button">×</a>
		<?php echo Yii::app()->user->getFlash('success'); ?>
	</div>
<?php endif; ?>
<h1>Bookings</h1>

<?php /*$this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); 
*/?>

<?php $this->widget('bootstrap.widgets.TbGridView', array(
   'dataProvider' => $dataProvider,
   
   'template' => "{items}",
   'columns' => array(
        array(
            'name' => 'id',
            'header' => '#',
            'htmlOptions' => array('color' =>'width: 60px'),
        ),
        array(
            'name' => 'price',
            'header' => Yii::t('strings','Price'),
        ),
        array(
            'name' => 'room',
            'header' => Yii::t('strings','Room'),
        ),
		array(
            'name' => 'days',
            'header' => Yii::t('strings','Days'),
        ),
		array(
            'name' => 'name',
            'header' => Yii::t('strings','Name'),
        ),
		array(
            'name' => 'address',
            'header' => Yii::t('strings','Address'),
        ),
		array(
            'name' => 'phone',
            'header' => Yii::t('strings','Phone'),
        ),
    ),
)); ?>