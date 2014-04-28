$(document).ready(function(){
	$('#changeTemplate').click(function(){
		check = $(this).attr('check');
		if ( check == 'left'){	
			$('#logo').css('padding',' 54px 0');
			$(this).empty().text('LTR');
			$('.wrapperlr').children().addClass('rtl');
			$(this).attr('check','right');
		}else {
			$(this).empty().text('RTL');
			$('.wrapperlr').children().removeClass('rtl');
			$(this).attr('check','left');
		}
	});
});