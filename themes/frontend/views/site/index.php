
<script>
var modal = (function(){
    var  method = {},
    $overlay,
    $modal,
    $content,
    $close;

    // Append the HTML
	$overlay = $('<div id="overlay"></div>');
	$modal = $('<div id="modal"></div>');
	$content = $('<div id="content"></div>');
	$close = $('<a id="close" href="#">close</a>');

	$modal.hide();
	$overlay.hide();
	$modal.append($content, $close);

	$(document).ready(function(){
		$('body').append($overlay, $modal);
	});
	//Close 
	
	$close.click(function(e){
		e.preventDefault();
		method.close();
	});
	// Set timeout
	setTimeout(function(e){
		//e.preventDefault();
		method.open({content: "<p>Welcome screen</p>"});
	},100);
	setTimeout(function(e){
		//e.preventDefault();
		method.close();
	},3000);
    // Center the modal in the viewport
    method.center = function () {
		var top, left;
		top = Math.max($(window).height() - $modal.outerHeight(), 0) / 2;
		left = Math.max($(window).width() - $modal.outerWidth(), 0) / 2;
		console.log($modal.outerWidth());
		$modal.css({
			top:top + $(window).scrollTop(),
			left:left + $(window).scrollLeft()
		});
	};

    // Open the modal
    method.open = function (settings) {
		$content.empty().append(settings.content);
		
		$modal.css({
			width: settings.width || 'auto', 
			height: settings.height || 'auto'
		})
		method.center();
		

		$(window).bind('resize.modal', method.center);

		$modal.show();
		$overlay.show();
	};

    // Close the modal
    method.close = function () {
		$modal.hide();
		$overlay.hide();
		$content.empty();
		$(window).unbind('resize.modal');
	};
	
    return method;
}());
	setTimeout(function(e){
		modal.open({content: "<p>Welcome screen</p>"});
	},100);
</script>

	<?php echo TbHtml::button('Single toggle',
    array('toggle' => true, 'color' => TbHtml::BUTTON_COLOR_PRIMARY)); ?>