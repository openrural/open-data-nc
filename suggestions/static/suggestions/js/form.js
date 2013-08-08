$(document).ready(function(){

    $('#id_agency_type').bind('change', HideShowFields);

    function HideShowFields(evt){
        var options = evt.target,
            value = options.value;
        switch(value){
            case "county":
                $(".control-group:has(.suggestions-city)").addClass("hidden");
                $(".control-group:has(.suggestions-county)").removeClass("hidden");
                break;
            case "city":
                $(".control-group:has(.suggestions-city)").removeClass("hidden");
                break;
            default:
                $('.control-group:has(.suggestions-hidden)').addClass("hidden");
                break;
        }
    }

    $('#id_agency_type').trigger('change')
});