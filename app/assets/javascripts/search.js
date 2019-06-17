function searchPosts(){
    var value = $('#post_search').val();
    console.log(value)
     document.location.href='/posts?val='+value;
    console.log(document.location.href);

}
$(document).ready(function() {
//     console.log('cho?');
    $( "#btn_post_search" ).click(function() {
        console.log('ne tukai');
        searchPosts();
    });
});
