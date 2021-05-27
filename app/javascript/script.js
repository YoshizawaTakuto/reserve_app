$(document).on('turbolinks:load', function(){
    $('#show-nav').on("click", function(){
        var $show_nav_list = $('.show-nav-list')
        if($show_nav_list.hasClass("open")) {
            $($show_nav_list).removeClass("open");
            $($show_nav_list).slideUp();
        } else {
            $($show_nav_list).addClass("open");
            $($show_nav_list).slideDown();
        }
    });
});