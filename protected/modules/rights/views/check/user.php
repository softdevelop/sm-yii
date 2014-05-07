<style>
	div.page-container div.page-content div.form {
		border:0 none;
	}
</style>
<div class="add-assignment row-fluid last">

	<h3><?php //echo Rights::t('core', 'Assign item'); ?>Check Permission for <?php echo $user->username; ?></h3>

	<?php //if( $formModel!==null ): ?>

		<div class="form">
			<?php $form=$this->beginWidget('CActiveForm'); ?>
				<div class="row-fluid">
					<?php echo $form->dropDownList($model, 'itemname', $assignSelectOptions,array('id'=>'checkpermission')); ?>
					<?php echo $form->error($model, 'itemname'); ?>
					<input type="hidden" id="user" value="<?php echo $user->id;?>">
					<span id="result">
					</span>
				</div>
			<?php $this->endWidget(); ?>
		</div>

</div>

<script>
	$(document).ready(function(){
		$("#checkpermission").change(function(){
			$permission = $('#checkpermission').find(":selected").text();
			$id = $('#user').val();
			
			$.ajax({
				url: '/rights/check/ajax',
				type: 'POST',
				data : {
					permission : $permission,
					id : $id,
				},
				success: function(res){
					if (res.error){
						$('#result').html('Can Not Access');
					}else{
						$('#result').html('Can Access');
					}
					
				},
				error: function(res){
					console.log(res);
				}
			});
		});
	});
</script>