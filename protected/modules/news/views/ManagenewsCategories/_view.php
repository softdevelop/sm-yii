<div class="view">

	<?php echo GxHtml::encode($data->getAttributeLabel('id')); ?>:
	<?php echo GxHtml::link(GxHtml::encode($data->id), array('view', 'id' => $data->id)); ?>
	<br />

	<?php echo GxHtml::encode($data->getAttributeLabel('name')); ?>:
	<?php echo GxHtml::encode($data->name); ?>
	<br />
	<?php echo GxHtml::encode($data->getAttributeLabel('alias')); ?>:
	<?php echo GxHtml::encode($data->alias); ?>
	<br />
	<?php echo GxHtml::encode($data->getAttributeLabel('lft')); ?>:
	<?php echo GxHtml::encode($data->lft); ?>
	<br />
	<?php echo GxHtml::encode($data->getAttributeLabel('rght')); ?>:
	<?php echo GxHtml::encode($data->rght); ?>
	<br />
	<?php echo GxHtml::encode($data->getAttributeLabel('parent_id')); ?>:
	<?php echo GxHtml::encode($data->parent_id); ?>
	<br />
	<?php echo GxHtml::encode($data->getAttributeLabel('image')); ?>:
	<?php echo GxHtml::encode($data->image); ?>
	<br />
	<?php /*
	<?php echo GxHtml::encode($data->getAttributeLabel('description')); ?>:
	<?php echo GxHtml::encode($data->description); ?>
	<br />
	<?php echo GxHtml::encode($data->getAttributeLabel('content')); ?>:
	<?php echo GxHtml::encode($data->content); ?>
	<br />
	<?php echo GxHtml::encode($data->getAttributeLabel('is_published')); ?>:
	<?php echo GxHtml::encode($data->is_published); ?>
	<br />
	<?php echo GxHtml::encode($data->getAttributeLabel('create_time')); ?>:
	<?php echo GxHtml::encode($data->create_time); ?>
	<br />
	<?php echo GxHtml::encode($data->getAttributeLabel('update_time')); ?>:
	<?php echo GxHtml::encode($data->update_time); ?>
	<br />
	*/ ?>

</div>