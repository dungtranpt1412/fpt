jQuery(document).ready(function($){




	/************** Scroll Navigation *********************/
	$('.navigation').singlePageNav({
        currentClass : 'active',
        filter: ':not(.external)'
    });


	/************** FlexSlider *********************/
    $('.flexslider').flexslider({
	    animation: "fade",
	    directionNav: false
	});


    /************** Responsive Navigation *********************/




});