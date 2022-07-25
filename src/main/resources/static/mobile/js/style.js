$(function() {

	/*-------------------------------------------------------------
	layout
	-------------------------------------------------------------*/ 

	// side menu

	$('#header p.menu button').click(function() {
		$('body').toggleClass('sideMenu');
	});

	//close the side menu

	$('#side').on('click', function(e){
		if( $(e.target).is('#side') ) {
			e.preventDefault();
			$('body').removeClass('sideMenu');
		}
	});

	/*-------------------------------------------------------------
	content
	-------------------------------------------------------------*/ 

	// tab contents

	$('.tab ul li a').click(function(e) {
		e.preventDefault();
		$(this).parent('li').addClass('active').siblings().removeClass('active');
		var target = $(this).attr('href');
		var contents = $(this).closest('.tab').siblings('.contents').children('div');
		$(contents).each(function(){
			if($(this).is(target)) {
				$(this).addClass('active');
			} else {
				$(this).removeClass('active');
			};
		});
	});

	// accordion

	$('.accordion > li .con').hide().first().parent('li').addClass('active');
	$('.accordion > li .bar p.title').click(function() {
		$this.parent('.bar').parent('li').addClass('active').siblings('li').removeClass('active');
		return false;
	});

});
