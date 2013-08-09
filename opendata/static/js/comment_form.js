$(document).ready(function(){
    $('#resource_comment_form').submit(function (evt) {
        if ($("#id_comment")[0].value == "" || !$("#id_rating_0").hasClass("star-rating-on")) {
            evt.stopImmediatePropagation();
            evt.preventDefault();
            $('#comment_field_errors')[0].innerHTML = "You must enter both a comment and select a rating."
        }
    });
});