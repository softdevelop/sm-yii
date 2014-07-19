<style>
	div.page-container div.page-content div.form {
		border:0 none;
	}
</style>
<div class="add-assignment row-fluid last">

	<h3><?php //echo Rights::t('core', 'Assign item'); ?>
		<?php echo Yii::t('strings','Please Select a user to check');?>
	</h3>

	<?php //if( $formModel!==null ): ?>

		<div class="form">
			<?php $form=$this->beginWidget('CActiveForm'); ?>
				<div class="row-fluid">
					<?php $list = CHtml::listData($models,'id', 'username'); ?>
					<?php echo $form->dropDownList($model, 'username', $list); ?>
					<?php echo $form->error($model, 'username'); ?>
					<span id="result">
					</span>
				</div>
			<?php $this->endWidget(); ?>
		</div>

</div>

<script>
	$(document).ready(function(){
		$('#User_username').on('change',function(){
			userid = $('#User_username').val();
			window.location.href="/rights/check/user/id/"+userid;
		})
	})

</script>
