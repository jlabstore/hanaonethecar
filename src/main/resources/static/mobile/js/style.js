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

	$('.accordion > li .content').hide();
	$('.accordion').children('li:first-child').addClass('active').children('.content').slideDown();

	$('.accordion > li .bar p.title').click(function() {
		var $parent = $(this).parent('.bar').parent('li');
		var $allParents = $parent.siblings('li');
		var $allPanels = $parent.siblings('li').children('.content');
		var $target = $(this).parent('.bar').parent('li').children('.content');
		if($parent.hasClass('active')){
			$parent.removeClass('active');
			$target.slideUp('fast'); 
		}else{
			$allParents.removeClass('active');
			$allPanels.slideUp('fast');
			$parent.addClass('active');
			$target.slideDown('fast');
		}
		return false;
	});

	// float on bottom

	var $btnFloat = $('.btnFloat');
	if ($btnFloat.length) {
		var $btnFloatTop = $btnFloat.offset().top + 50;
		$(window).scroll(function(){
			var $currentScroll = $(this).scrollTop();
			if($currentScroll > $btnFloatTop){
				$btnFloat.addClass('floatOnBottom');
			}else{
				$btnFloat.removeClass('floatOnBottom');
			};
		});
	};

	// land on bottom

	var $btnLand = $('.btnLand').addClass('floatOnTop');
	var $btnLandDist = 267;
	if ($btnLand.length) {
		$(window).scroll(function(){
			var $btnLandTop = $(document).height() - $(window).height() - $btnLandDist;
			var $currentScroll = $(this).scrollTop();
			if($currentScroll > $btnLandTop){
				$btnLand.removeClass('floatOnTop');
			}else{
				$btnLand.addClass('floatOnTop');
			};
		});
	};

});
