function setCookie(cname,cvalue,exdays)
{
    var d = new Date();
    d.setTime(d.getTime()+(exdays*24*60*60*1000));
    var expires = "expires="+d.toGMTString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
}

function getCookie(cname)
{
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++)
    {
        var c = ca[i].trim();
        if (c.indexOf(name)==0) return c.substring(name.length,c.length);
    }
    return "";
}

$(document).ready(function(){
    if(getCookie("position")=='left'){
        $('.container.register-users').addClass('righttoleft');
    }

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
            $('.container.register-users').addClass('righttoleft');
			$(this).attr('check','right');
            setCookie("position",check,1);
		}else {
            setCookie("position",check,-1);
			$contentAdd = '<a tabindex="-1" href="javascript:void(0)">RTL</a>';
			$('.row-fluid.main').children().removeClass('rightmenu');
			$(this).empty().append($contentAdd);
			$('#layout #topmenu').find('li').removeClass('rightmenu');
			$('.nav.nav-list').find('li').removeClass('text-ali-right');
			$(this).attr('check','left');
            $('.container.register-users').removeClass('righttoleft');

		}
		// code control

		$.ajax({
			url : '/site/ajaxfortheme',
			type  : 'POST',
			data : {
				check:check
			},
			success : function(res){

				console.log(res);
			},
			error : function(res){
				
			}
		});
	});
});