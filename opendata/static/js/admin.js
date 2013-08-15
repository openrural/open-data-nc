django.jQuery(document).ready(function($){

    // Removes ':' from form labels.
    $('.form-row label').each(function(){
        $(this).text($(this).text().replace(':', ''));
    });

    // Shows and hides cities and counties dynamically.
    $('#id_agency_type').bind('change', HideShowFields);
    function HideShowFields(evt){
        var options = evt.target,
            value = options.value;
        console.log(value)
        switch(value){
            case "county":
                $(".field-cities").addClass("hidden");
                $(".field-counties").removeClass("hidden");
                break;
            case "city":
                $(".field-cities").removeClass("hidden");
                $(".field-counties").addClass("hidden");
                break;
            default:
                $(".field-cities").addClass("hidden");
                $(".field-counties").addClass("hidden");
                break;
        }
    }

    $('#id_agency_type').trigger('change')
});