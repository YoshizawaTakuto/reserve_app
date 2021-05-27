$(function(){
    $('#show-nav').click(function(){
        var $show_nav_list = $('.show-nav-list')
        if($show_nav_list.hasClass("open")) {
            $(this).removeClass("open");
            $(this).slideUp();
        } else {
            $(this).addClass("open");
            $(this).slideDown();
        }
    });
});