<div class="container register-users">
    <!--div id="triangle"></div-->
    <h1 class="tilte_login">Register</h1>
    <?php $form=$this->beginWidget('CActiveForm', array(
       // 'id'=>'user-form',
        //'enableAjaxValidation'=>true,
    ));
    ?>
    <div class="row">
        <?php echo CHtml::errorSummary($model); ?>
    </div>
   <div class="row">
       <?php if(Yii::app()->user->hasFlash('success')):?>
           <div class="success">
               <?php echo Yii::app()->user->getFlash('success'); ?>
           </div>
       <?php endif; ?>
   </div>
    <div class="row">
        <?php echo $form->labelEx($model,'username'); ?>
        <?php echo $form->textField($model,'username'); ?>
        <?php echo $form->error($model,'username'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model,'password'); ?>
        <?php echo $form->passwordField($model,'password'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model,'confirmation_password'); ?>
        <?php echo $form->passwordField($model,'confirmation_password'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model,'email'); ?>
        <?php echo $form->textField($model,'email'); ?>
        <?php echo $form->error($model,'email'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model,'firstname'); ?>
        <?php echo $form->textField($model,'firstname'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model,'lastname'); ?>
        <?php echo $form->textField($model,'lastname'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model,'birthday'); ?>
        <?php echo $form->dateField($model,'birthday'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model,'address'); ?>
        <?php echo $form->textField($model,'address'); ?>
    </div>


    <div class="row">
        <?php echo CHtml::submitButton( UserModule::t('Register')); ?>
    </div>
    <?php $this->endWidget(); ?>

</div><!-- form -->