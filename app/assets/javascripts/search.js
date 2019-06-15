function searchPosts(){
    console.log('lox');
    let value = document.getElementById('.main_search_field').value;
    document.location.href='/posts?val=' + value;
}
$(document).ready()
{
    $(".post_search").click(function(){
        console.log('durak')
        searchPosts();
    })
}
