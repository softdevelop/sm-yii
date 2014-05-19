<?php $this->breadcrumbs = array(
	'Rights'=>Rights::getBaseUrl(),
	Rights::t('core', 'Create :type', array(':type'=>Rights::getAuthItemTypeName($_GET['type']))),
); ?>

<div class="createAuthItem">

	<!--h2><?php //echo Rights::t('core', 'Create :type', array(
		//':type'=>Rights::getAuthItemTypeName($_GET['type']),
	//)); ?></h2-->
	<h2> <?php if ($_GET['type'] == 0) echo 'Create Role';
				else echo 'Create Group'; ?></h2>
	<?php $this->renderPartial('_form', array('model'=>$formModel)); ?>

</div>