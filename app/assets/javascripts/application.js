/// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprocketssprockets-directives) for details
// about supported directives.
///
//= require rails-ujs
//= require activestorage
//= require jquery3
//= require jquery_ujs
//= require popper
//= require trix
//= require jquery.purr
//= require best_in_place
//= require cable
//= require rails-ujs

//= require react
//= require react_ujs
//= require components

function newPost(){
document.location.href='/posts/new';
}
$(document).ready(function() {
  $( "#btn_new_post" ).click(function() {
  newPost();
});
});

function oldUser(){
    document.location.href='/users/sign_in';
}
$(document).ready(function() {
    $( "#btn_sign_in" ).click(function() {
        oldUser();
    });
});
function newUser(){
    document.location.href='/users/sign_up';
}
$(document).ready(function() {
    $( "#btn_sign_up" ).click(function() {
        newUser();
    });
});
function allFunfics(){
    document.location.href='/posts';
}
$(document).ready(function() {
    $( "#funfics" ).click(function() {
        allFunfics();
    });
});

