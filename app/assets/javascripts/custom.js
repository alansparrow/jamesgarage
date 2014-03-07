if (typeof jQuery != 'undefined') {
    
    alert("jQuery library is loaded!");
    
}else{
    
    alert("jQuery library is not found!");
    
}



$(document).on('ready page:change', function() {
    $(".fancybox").fancybox();
});
