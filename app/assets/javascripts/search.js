function searchPosts(){
    var value = $('#post_search').val();
    console.log(value)
    var Nurl = document.location.href +'?val=' + value;
    document.location.href=Nurl;
    $(this).attr("href",Nurl);
    console.log(Nurl);
}
$(document).ready(function() {
//     console.log('cho?');
    $( "#btn_post_search" ).click(function() {
        console.log('ne tukai');
        searchPosts();
    });
});
