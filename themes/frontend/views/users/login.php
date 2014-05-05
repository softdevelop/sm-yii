<div id="login">
  <!--div id="triangle"></div-->
  <h1 class="tilte_login">Log in</h1>
  <?php echo CHtml::beginForm(); ?>
	<?php echo CHtml::errorSummary($model); ?>
    <?php echo CHtml::activeTextField($model,'username',array('placeholder'=>'Email')) ?>
	<?php echo CHtml::activePasswordField($model,'password',array('placeholder'=>'Password')) ?>
	<?php echo CHtml::submitButton(UserModule::t("Login"),array('style'=>'line-height: 14px !important;')); ?>
</div>