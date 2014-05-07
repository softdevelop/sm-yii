<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content="en" />
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta name="format-detection" content="telephone=no" />
	<link href="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/css/include/reset.css" rel="stylesheet" />
	<link href="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/css/include/grid.css" rel="stylesheet" />
	<!--link href="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/css/include/awesome.css" rel="stylesheet" /-->
	<link href="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/css/include/animations.css" rel="stylesheet" />
	<link href="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/lib/revolution/css/revolution.css" rel="stylesheet" />
	<link href="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/lib/bxslider/jquery.bxslider.css" rel="stylesheet" />
	<link href="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/lib/fancybox/jquery.fancybox.css" rel="stylesheet" />
	<link href="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/lib/switcher/css/switcher.css" rel="stylesheet" />
	
	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
	<?php Yii::app()->bootstrap->register(); ?>
	<link href="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/css/main1.css" rel="stylesheet" />
	<link href="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/css/newcustom.css" rel="stylesheet" />
	
	<link href="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/css/custom.css" rel="stylesheet" />
</head>

<body data-page="home" data-boxed="false">

<!--div class="container" id="page">
	<div id="header">
		<div id="logo"><?php //echo CHtml::encode(Yii::app()->name); ?></div>
	</div>
	</div-->

	<?php //$this->widget('zii.widgets.CBreadcrumbs', array('links'=>$this->breadcrumbs,)); ?>
	<!-- LAYOUT -->
	<div id="layout">
		<!-- HEADER -->
		<?php //$this->renderPartial('//layouts/_header');; ?>
		<a class="btn btn-navbar" id="displaymenu" data-toggle="collapse" data-target="#topmenu">
			<span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
		</a>
		<div class="nav-collapse in collapse" id="topmenu" style="height: auto;">
			<?php if(isset(Yii::app()->session['leftOrright']) && (Yii::app()->session['leftOrright']== 'right')){
				echo TbHtml::tabs(array(
					array('label' => Yii::t('strings','Home'), 'url' => '#', 'active' => true, 'class'=>'rightmenu'),
					array('label' => Yii::t('strings','Profile'), 'url' => '#','class'=>'rightmenu'),
					array('label' => Yii::t('strings','Messages'), 'url' => '#','class'=>'rightmenu'),
					array('label' => Yii::t('strings','LTR'), 'url' => 'javascript:void(0)', 'id'=>'changeTemplate' , 'check' => 'right','class'=>'rightmenu'),
				)); 
			}
			else{
				echo TbHtml::tabs(array(
					array('label' => Yii::t('strings','Home'), 'url' => '#', 'active' => true, 'class'=>''),
					array('label' => Yii::t('strings','Profile'), 'url' => '#'),
					array('label' => Yii::t('strings','Messages'), 'url' => '#'),
					array('label' => Yii::t('strings','LTR'), 'url' => 'javascript:void(0)', 'id'=>'changeTemplate' , 'check' => 'left'),
				)); 
			} ?>
		</div>
		<div class="row-fluid main">
			<div class="span3 bs-docs-sidebar <?php echo Yii::app()->session['leftOrright']=='right'?'rightmenu':null; ?>">
				<ul class="nav nav-list bs-docs-sidenav affix-top">
					<li class="active"><a href="#typography"><i class="icon-chevron-right"></i> Sample</a></li>
					<li class=""><a href="#"><i class="icon-chevron-right"></i> Sample1</a></li>
					<li class=""><a href="#"><i class="icon-chevron-right"></i> Sample2</a></li>
					<li><a href="#"><i class="icon-chevron-right"></i> Sample3</a></li>
					<li><a href="#"><i class="icon-chevron-right"></i> Sample4</a></li>
					<li><a href="#"><i class="icon-chevron-right"></i> Sample5</a></li>
				</ul>
			</div>
			<div class="span9">
				<?php echo $content; ?>
			</div>
		</div>
		
		
	</div>
</body>
		
		
		<script src="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/js/include/jquery.modal.js"></script>
		<script src="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/js/include/ltr-rtl.js"></script>
		<!--script src="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/js/include/respond.js"></script>
		<script src="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/js/include/retina.js"></script>
		<script src="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/js/include/jquery-ui.js"></script>
		<script src="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/js/include/jquery.mobile.js"></script>
		<script src="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/js/include/browser.js"></script>
		<script src="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/js/include/scale.js"></script>
		<script src="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/js/include/quicksand.js"></script>
		<script src="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/lib/revolution/js/plugins.js"></script>
		<script src="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/lib/revolution/js/revolution.js"></script>
		<script src="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/lib/bxslider/jquery.bxslider.min.js"></script>
		<script src="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/lib/fancybox/jquery.fancybox.pack.js"></script>
		<script src="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/lib/switcher/js/switcher.js"></script>
		<script src="<?php echo Yii::app()->request->baseUrl.WWWROOT_FRONTEND;?>/js/main.js"></script-->
		
</html>