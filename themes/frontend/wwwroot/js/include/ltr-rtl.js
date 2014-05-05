$(document).ready(function(){
	$('#changeTemplate').click(function(){
		//alert('dd');
		check = $(this).attr('check');
		if ( check == 'left'){	
			//$('#logo').css('padding',' 54px 0');
			$contentAdd = '<a tabindex="-1" href="javascript:void(0)">LTR</a>';
			$(this).empty().append($contentAdd);
			$('#layout').children().find('li').addClass('rightmenu');
			$(this).attr('check','right');
		}else {
			$contentAdd = '<a tabindex="-1" href="javascript:void(0)">RTL</a>';
			$(this).empty().append($contentAdd);
			$('#layout').children().find('li').removeClass('rightmenu');
			$(this).attr('check','left');
		}
	});
});