<div class="span12 <?php  
		if (isset(currentUser()->language)){
			if (currentUser()->language == 'ar') echo 'righttoleft';
		}
	?>">
	<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'booking-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>
	<div class="span12">
		<h2><?php echo Yii::t('strings','Booking a room by ajax validation in Yii');?></h3>
	</div>
	<div class="span12 inforoom">
		<h3><?php echo Yii::t('strings','Infomation Room');?></h3>
		<?php echo $form->errorSummary($model); ?>

		<div class="span12">
			<?php echo $form->labelEx($model,'price'); ?>
			<?php echo $form->textField($model,'price',array('size'=>50,'maxlength'=>50)); ?>
			<?php echo $form->error($model,'price'); ?>
		</div>

		<div class="span12">
			<?php echo $form->labelEx($model,'room'); ?>
			<?php echo $form->textField($model,'room',array('size'=>50,'maxlength'=>50)); ?>
			<?php echo $form->error($model,'room'); ?>
		</div>

		<div class="span12">
			<?php echo $form->labelEx($model,'days'); ?>
			<?php echo $form->textField($model,'days'); ?>
			<?php echo $form->error($model,'days'); ?>
		</div>
		
		<div class="span12" style="text-align:left">
			
			<button id="" class="btn btn-primary nextinforoom" style="display: inline-block;">Next</button>
		</div>
	</div>
	<div class="span12 puchaser" style="display:none">
		<h3><?php echo Yii::t('strings','Info Purchaser')?></h3>
		<div class="span12">
			<?php echo $form->labelEx($model,'name'); ?>
			<?php echo $form->textField($model,'name',array('size'=>50,'maxlength'=>50)); ?>
			<?php echo $form->error($model,'name'); ?>
		</div>

		<div class="span12">
			<?php echo $form->labelEx($model,'address'); ?>
			<?php echo $form->textField($model,'address',array('size'=>60,'maxlength'=>255)); ?>
			<?php echo $form->error($model,'address'); ?>
		</div>

		<div class="span12">
			<?php echo $form->labelEx($model,'phone'); ?>
			<?php echo $form->textField($model,'phone',array('size'=>50,'maxlength'=>50)); ?>
			<?php echo $form->error($model,'phone'); ?>
		</div>
		<div class="span12" style="text-align: left">
			<button id="save-btn" class="btn btn-primary  previouspuchaser" style="display: inline-block;">Previous</button>
			<button id="save-btn" class="btn btn-primary  nextpuchaser" style="display: inline-block;">Next</button>
		</div>
	</div>
	<div class="span12 payment" style="display:none">
		<h3><?php echo Yii::t('strings','Payment')?></h3>
		<div class="span12">
			<?php echo $form->labelEx($model,'credit'); ?>
			<?php echo $form->textField($model,'credit',array('size'=>50,'maxlength'=>50)); ?>
			<?php echo $form->error($model,'credit'); ?>
		</div>

		<div class="span12" style="text-align: left">
			<button id="save-btn" class="btn btn-primary hide previouspayment" style="display: inline-block;">Previous</button>
			<button id="save-btn" class="btn btn-primary hide finished" style="display: inline-block;">Finihed</button>
			
		</div>
	</div>
	<?php $this->endWidget(); ?>
	
</div>
<div id="msg" class="alert hide" style="clear:both;"></div>
<script>
	$(document).ready(function(){
		$(".nextinforoom").on('click', function(){
			event.preventDefault()
			$.ajax({
				url : '/site/datavalidation',
				type : 'POST',
				data : {
					step1 : 'step1',
					price :  $('input[name="Booking[price]"]').val(),
					room :  $('input[name="Booking[room]"]').val(),
					days :  $('input[name="Booking[days]"]').val(),
				},
				success : function(res){
					console.log(res);
					if (res.error){
						var re = '';
						console.log(res.content);
						msg = jQuery.parseJSON(res.content);
						console.log(msg);
						myobj = jQuery.parseJSON(msg);//convert to Object
						console.log(myobj);
						$.each(myobj, function( index, value ) {
							re += value+"<br>";
						});
						
						$("#msg").removeClass("alert-success").addClass("alert-error").html(re).show();
						//console.log(res.content.lenth());
						//$.each(res.content, function(k, v) { msg += v+"<br>"; });
					}else{
						msg = 'Finished Infomation Room';
						$("#msg").removeClass("alert-error").addClass("alert-success").html(msg).show();
						hideAll();
						$('.puchaser').show();
					}
				},
				error : function(res){
					console.log(res);
				}
			})
				
			return false;
		});
		$(".nextpuchaser").on('click', function(){
			event.preventDefault()
			$.ajax({
				url : '/site/datavalidation',
				type : 'POST',
				data : {
					step2 : 'step2',
					name :  $('input[name="Booking[name]"]').val(),
					address :  $('input[name="Booking[address]"]').val(),
					phone :  $('input[name="Booking[phone]"]').val(),
				},
				success : function(res){
					if (res.error){
						//var key;
						msg = jQuery.parseJSON(res.content);
						myobj = jQuery.parseJSON(msg);//convert to Object
						$.each(myobj, function( index, value ) {
							re += value+"<br>";
						});
						
						/*for(var key in Showerror) {
							 msg += Showerror[key]+"<br>";
						}*/
						$("#msg").removeClass("alert-success").addClass("alert-error").html(re).show();
						//console.log(res.content.lenth());
						//$.each(res.content, function(k, v) { msg += v+"<br>"; });
						console.log(msg);
					}else{
						msg = 'Finished Infomation Purchaser';
						$("#msg").removeClass("alert-error").addClass("alert-success").html(msg).show();
						hideAll();
						$('.payment').show();
					}
					//alert('dd');
				},
				error : function(res){
					console.log(res);
				}
			})
				
			return false;
		});
		$(".finished").on('click', function(){
			event.preventDefault()
			$.ajax({
				url : '/site/datavalidation',
				type : 'POST',
				data : {
					step3 : 'step3',
					credit :  $('input[name="Booking[credit]"]').val(),
				},
				success : function(res){
					if (res.error){
						//var key;
						msg = jQuery.parseJSON(res.content);
						myobj = jQuery.parseJSON(msg);//convert to Object
						$.each(myobj, function( index, value ) {
							re += value+"<br>";
						});
						
						$("#msg").removeClass("alert-success").addClass("alert-error").html(re).show();
						//console.log(res.content.lenth());
						//$.each(res.content, function(k, v) { msg += v+"<br>"; });
						console.log(msg);
					}else{
						window.location.href= '/bookings/default/list';
						msg = 'Finished Step3';
						$("#msg").removeClass("alert-error").addClass("alert-success").html(msg).show();
						hideAll();
						$('.payment').show();
					}
					//alert('dd');
				},
				error : function(res){
					console.log(res);
				}
			})
				
			return false;
		});
		
		
		$(".previouspuchaser").on('click', function(){
			hideAll();
			$('.inforoom').show();
			return false;
		});
		$(".previouspayment").on('click', function(){
			hideAll();
			$('.puchaser').show();
			return false;
		});
		
		function hideAll(){
			$('.inforoom').hide();
			$('.puchaser').hide();
			$('.payment').hide();
		}
	})

</script>