// usage: log('inside coolFunc', this, arguments);
// paulirish.com/2009/log-a-lightweight-wrapper-for-consolelog/
window.log = function f(){ log.history = log.history || []; log.history.push(arguments); if(this.console) { var args = arguments, newarr; try { args.callee = f.caller } catch(e) {}; newarr = [].slice.call(args); if (typeof console.log === 'object') log.apply.call(console.log, console, newarr); else console.log.apply(console, newarr);}};

// make it safe to use console.log always
(function(a){function b(){}for(var c="assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,markTimeline,profile,profileEnd,time,timeEnd,trace,warn".split(","),d;!!(d=c.pop());){a[d]=a[d]||b;}})
(function(){try{console.log();return window.console;}catch(a){return (window.console={});}}());


// place any jQuery/helper plugins in here, instead of separate, slower script files.

$(document).ready(function(){
   $('#logo_text').hide();

   $('#menu-toggle').click(function () {
      $('#menu').toggleClass('open');
      e.preventDefault();
    });

   $(window).scroll(function(){
      // get the height of #wrap
      var h = $('#logo').height();
      var x = $(window).width();
      var y = $(window).scrollTop();
      if( y > (h+50) && x < 767 ){
         $('#logo_text').fadeIn('slow');
      } else {
         $('#logo_text').fadeOut('slow');
      }
   });
})

//*** HOMEPAGE TABLE ****//
// add class for scoping styles - cells should be hidden only when JS is on
$('table').addClass("enhanced");

var container = $('<div class="table-menu table-menu-hidden"><ul /></div>'); 

$( "thead th" ).each(function(i){
   var th = $(this),
      id = th.attr("id"), 
      classes = th.attr("class");  // essential, optional (or other content identifiers)
         
   // assign an ID to each header, if none is in the markup
   if (!id) {
      id = ( "col-" ) + i;
      th.attr("id", id);
   };      
         
   // loop through each row to assign a "headers" attribute and any classes (essential, optional) to the matching cell
   // the "headers" attribute value = the header's ID
   $( "tbody tr" ).each(function(){
      var cell = $(this).find("th, td").eq(i);                        
      cell.attr("headers", id);
      if (classes) { cell.addClass(classes); };
   });

   // create the menu hide/show toggles
   if ( !th.is(".persist") ) {
   
      // note that each input's value matches the header's ID; 
      // later we'll use this value to control the visibility of that header and it's associated cells
      var toggle = $('<li><input type="checkbox" name="toggle-cols" id="toggle-col-'+i+'" value="'+id+'" /> <label for="toggle-col-'+i+'">'+th.text()+'</label></li>');
      
      // append each toggle to the container
      container.find("ul").append(toggle); 

      // assign behavior
      toggle.find("input")
      
         // when the checkbox is toggled
         .change(function(){
            var input = $(this), 
                  val = input.val(),  // this equals the header's ID, i.e. "company"
                  cols = $("#" + val + ", [headers="+ val +"]"); // so we can easily find the matching header (id="company") and cells (headers="company")
         
            if (input.is(":checked")) { cols.show(); }
            else { cols.hide(); };      
         })
         
         // custom event that sets the checked state for each toggle based on column visibility, which is controlled by @media rules in the CSS
         // called whenever the window is resized or reoriented (mobile)
         .bind("updateCheck", function(){
            if ( th.css("display") ==  "table-cell") {
               $(this).attr("checked", true);
            }
            else {
               $(this).attr("checked", false);
            };
         })
         
         // call the custom event on load
         .trigger("updateCheck");  
         
   }; // end conditional statement ( !th.is(".persist") )
}); // end headers loop 

// update the inputs' checked status
$(window).bind("orientationchange resize", function(){
   container.find("input").trigger("updateCheck");
}); 

var menuWrapper = $('<div class="table-menu-wrapper" />'),
    menuBtn = $('<a href="#" class="table-menu-btn">Display</a>');
      
menuBtn.click(function(){
   container.toggleClass("table-menu-hidden");            
   return false;
});
    
$('#latest_resources_sidebar').append(menuWrapper).append(menuBtn).append(container);
$('table').before(menuWrapper);  // append the menu immediately before the table

// assign click-away-to-close event
$(document).click(function(e){                              
   if ( !$(e.target).is( container ) && !$(e.target).is( container.find("*") ) ) {          
      container.addClass("table-menu-hidden");
   }                
}); 
//*** /HOMEPAGE TABLE ***//

