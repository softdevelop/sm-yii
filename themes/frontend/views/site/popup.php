<?php 
	$baseUrl = Yii::app()->baseUrl.WWWROOT_FRONTEND; 
	$cs = Yii::app()->getClientScript();
	$cs->registerScriptFile($baseUrl.'/js/include/jquery.noty.packaged.js');
?>
<style>
span.runner:hover {
	color: #e17b19;
	cursor: pointer;
}
span.runner {
	-webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25), inset 0 1px 0 rgba(255, 255, 255, 0.50);
	-moz-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25), inset 0 1px 0 rgba(255, 255, 255, 0.50);
	box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25), inset 0 1px 0 rgba(255, 255, 255, 0.50);
	padding: 4px 8px;
	font-size: 14px;
	line-height: 40px;
}
::selection {
	background: #c47529;
	color: #fff;
	text-shadow: none;
}
</style>

<div class="span12">
	<div class="g1 layout-demo">
		<h6>
			<span class="runner" data-layout="center" data-type="alert">Alert <i class="icon-caret-right"></i></span>
			<span class="runner" data-layout="center" data-type="success">Success <i class="icon-caret-right"></i></span>
			<span class="runner" data-layout="center" data-type="error">Error <i class="icon-caret-right"></i></span>  <br>
			<span class="runner" data-layout="center" data-type="warning">Warning <i class="icon-caret-right"></i></span>
			<span class="runner" data-layout="center" data-type="information">Information <i class="icon-caret-right"></i></span>
			<span class="runner" data-layout="center" data-type="confirm">Confirm <i class="icon-caret-right"></i></span>
		</h6>
	</div>
</div>
<script>
	/* 
 * Authors: Nedim Arabaci (http://ned.im)
 */
var notes = [];

notes['alert'] = 'Best check yo self, you\'re not looking too good.';
notes['error'] = 'Change a few things up and try submitting again.';
notes['success'] = 'You successfully read this important alert message.';
notes['information'] = 'This alert needs your attention, but it\'s not super important.';
notes['warning'] = '<strong>Warning!</strong> <br /> Best check yo self, you\'re not looking too good.';
notes['confirm'] = 'Do you want to continue?';

$(document).ready(function () {
	//commit_history();

	$('.inner-menu').appendTo($('h4')).fadeIn();

	if (location.hash) {
		$('a[href=' + location.hash + ']').trigger('click');
	} else {
		$('a[href=#welcome]').trigger('click');
	}

	$('.inner-menu a').click(function () {
		var self = $(this);
		$("html, body").animate({ scrollTop: $(self.attr('href')).offset().top - 20 }, 1000);
		window.location.hash = self.attr('href');
		return false;
	});

	$('span.runner').click(function () {

		var self = $(this);

		noty({
			text        : notes[self.data('type')],
			type        : self.data('type'),
			dismissQueue: true,
			layout      : self.data('layout'),
			buttons     : (self.data('type') != 'confirm') ? false : [
				{addClass: 'btn btn-primary', text: 'Ok', onClick: function ($noty) {
						$noty.close();
						noty({force: true, text: 'You clicked "Ok" button', type: 'success', layout: self.data('layout')});
					}
				},
				{addClass: 'btn btn-danger', text: 'Cancel', onClick: function ($noty) {
						$noty.close();
						noty({force: true, text: 'You clicked "Cancel" button', type: 'error', layout: self.data('layout')});
					}
				}
			]
		});
		return false;
	});
});
</script>