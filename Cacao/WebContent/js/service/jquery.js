/**
 * 
 */

$(function(){
	$('.accordion').each(function(){
		var dl = $(this);
		var allDt = dl.find('dt');
		var allDd = dl.find('dd');
		
		allDd.hide();
		allDt.css('cursor','pointer');
		
		allDt.click(function(){
			allDd.hide();
			$(this).next().show();
			allDt.css('cursor','pointer');
			$(this).css('cursor','default');
		});
	});
	
});