$(document).ready(function(){
	$('#changeTemplate').click(function(){
		//alert('dd');
		check = $(this).attr('check');
		// front end control
		if ( check == 'left'){	
			//$('#logo').css('padding',' 54px 0');
			$contentAdd = '<a tabindex="-1" href="javascript:void(0)">LTR</a>';
			
			$('.row-fluid.main').children().addClass('rightmenu');
			$(this).empty().append($contentAdd);
			$('#layout #topmenu').find('li').addClass('rightmenu');
			$('.nav.nav-list').find('li').addClass('text-ali-right');
			$(this).attr('check','right');
		}else {
			$contentAdd = '<a tabindex="-1" href="javascript:void(0)">RTL</a>';
			$('.row-fluid.main').children().removeClass('rightmenu');
			$(this).empty().append($contentAdd);
			$('#layout #topmenu').find('li').removeClass('rightmenu');
			$('.nav.nav-list').find('li').removeClass('text-ali-right');
			$(this).attr('check','left');
		}
		// code control
		
		$.ajax({
			url : '/site/ajaxfortheme',
			type  : 'POST',
			data : {
				check: check,
			},
			success : function(res){
				console.log(res);
			},
			error : function(res){
				
			},
		});
	});
});