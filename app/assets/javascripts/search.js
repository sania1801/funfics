function searchPosts(){
    var value = $('#post_search').val();
    document.location.href='/posts?val=' + value;
}
$(document).ready(function() {
    $( "#btn_post_search" ).click(function() {
        searchPosts();
    });
    $("#post_search").keypress(function( event ) {
        if ( event.which == 13 ) {
            searchPosts();
        }
    });
});
