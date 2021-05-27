// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require jquery
//= require rails-ujs
//= require turbolinks
//= require_tree .
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
require('jquery')

Rails.start()
Turbolinks.start()
ActiveStorage.start()

$(document).on('turbolinks:load', function(){
    $('#show-nav').click(function(){
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
