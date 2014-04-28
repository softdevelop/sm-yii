<style>

</style>

<div id="login">
  <!--div id="triangle"></div-->
  <h1>Log in</h1>
	
  <?php echo CHtml::beginForm(); ?>
	<?php echo CHtml::errorSummary($model); ?>
	<?php echo CHtml::activeTextField($model,'username',array('placeholder'=>'Email')) ?>
	<?php echo CHtml::activePasswordField($model,'password',array('placeholder'=>'Password')) ?>
	<?php echo CHtml::submitButton(UserModule::t("Login"),array('style'=>'line-height: 14px !important;')); ?>
  <?php //echo CHtml::endForm(); ?>
	<?php //echo TbHtml::beginFormTb(TbHtml::FORM_LAYOUT_HORIZONTAL); ?>
    <?php //echo TbHtml::textField('UserLogin[username]', '',
        //array('label' => 'Username', 'placeholder' => 'Username')); ?>
    <?php //echo TbHtml::passwordFieldControlGroup('UserLogin[password]', '',
        //array('label' => 'Password', 'placeholder' => 'Password')); ?>
    <?php //echo TbHtml::checkBoxControlGroup('rememberMe', false, array(
        //'label' => 'Remember me',
        //'controlOptions' => array('after' => TbHtml::submitButton('Sign in')),
    //)); ?>
	<?php //echo TbHtml::endForm(); ?>
</div>