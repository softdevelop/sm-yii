<?php

$this->breadcrumbs = array(
	Banner::label(2),
	'Index',
);

$this->menu = array(
	array('label'=>'Create' . ' ' . Banner::label(), 'url' => array('create')),
	array('label'=>'Manage' . ' ' . Banner::label(2), 'url' => array('admin')),
);
?>

<h1><?php echo GxHtml::encode(Banner::label(2)); ?></h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); 