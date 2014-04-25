<?php

$this->breadcrumbs = array(
	$model->label(2) => array('index'),
	GxHtml::valueEx($model),
);

$this->menu=array(
	array('label'=>'List' . ' ' . $model->label(2), 'url'=>array('index')),
	array('label'=>'Create' . ' ' . $model->label(), 'url'=>array('create')),
	array('label'=>'Update' . ' ' . $model->label(), 'url'=>array('update', 'id' => $model->id)),
	array('label'=>'Delete' . ' ' . $model->label(), 'url'=>'#', 'linkOptions' => array('submit' => array('delete', 'id' => $model->id), 'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage' . ' ' . $model->label(2), 'url'=>array('admin')),
);
?>

<h1><?php echo 'View' . ' ' . GxHtml::encode($model->label()) . ' ' . GxHtml::encode(GxHtml::valueEx($model)); ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data' => $model,
	'attributes' => array(
		'id',
		'name',
		'alias',
		array(
					'name' => 'category',
					'type' => 'raw',
					'value' => $model->category !== null ? GxHtml::link(GxHtml::encode(GxHtml::valueEx($model->category)), array('serviceCategories/view', 'id' => GxActiveRecord::extractPkValue($model->category, true))) : null,
					),
		'description',
		'content',
		//'image',
		array(
			'name'=>'image',
			//'type' => 'image',
			//'value' => Yii::app()->createUrl("/").Yii::app()->controller->module->image["url"].$dataImage,
			//'htmlOptions'=>array('style'=> 'max-width: 100px; max-height: 70px'),
			'type'=>'raw',
			'value'=> CHtml::image(Yii::app()->createUrl("/").Yii::app()->controller->module->image["url"].$model->image,'alt', array('style'=> 'max-width: 400px; max-height: 400px')),
		),
		//'price',
		array(
			'name'=>'price',
			'type'=>'raw',
			'value'=>$model->price,
		),
		'special_price',
		'quantity',
		'style',
		'priority',
		'is_special:boolean',
		'is_published:boolean',
		'create_time',
		'update_time',
	),
)); ?>

