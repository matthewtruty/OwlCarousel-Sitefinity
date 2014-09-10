 var carouselCount = 0;
    $(".owl-carousel").each(function () {
        $(this).attr("id", "owl-carousel" + carouselCount);
        $('#owl-carousel' + carouselCount).owlCarousel({
            items: 3,
            itemsDesktop: [1199, 3],
            itemsDesktopSmall: [980, 2],
            itemsTablet: [768, 1],
            itemsTabletSmall: false,
            itemsMobile: [479, 1],
            rewindNav: false,
            lazyLoad: true,
            navigation: true,
            navigationText: ["Prev", "Next"],
            // Responsive 
            responsive: true,
            responsiveRefreshRate: 200,
            responsiveBaseWidth: window,
            //Pagination
            pagination: false
        });
        carouselCount++;
    });
 
    // Initialize FancyBox
    $(".item a").fancybox();
