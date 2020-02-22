$(document).ready(function () {

    $("#SizeFP").hide();
    
    $("#SizeFN").click(function () {
        $("#SizeAWD").slideToggle();
        $(this).next().slideToggle();
    });
    $("#SizeAWU").click(function () {
        $("#SizeAWD").slideToggle();
        $("#SizeFP").slideToggle();
    });

});