$(document).ready(function () {

    $("#CoreFP").hide();
    $("#BaseClockFP").hide();
    $("#SeriesFP").hide();
    $("#SubseriesFP").hide();
    $("#ArchitectureFP").hide();
    $(".rb").hide();
    $("#SubS_D0").hide();


    $("#SeriesFN").click(function () {
        $("#SeriesAWD").slideToggle();
        $(this).next().slideToggle();
    });
    $("#SeriesAWU").click(function () {
        $("#SeriesAWD").slideToggle();
        $("#SeriesFP").slideToggle();
    });


    $("#SubseriesFN").click(function () {
        $("#SubseriesAWD").slideToggle();
        $(this).next().slideToggle();
    });
    $("#SubseriesAWU").click(function () {
        $("#SubseriesAWD").slideToggle();
        $("#SubseriesFP").slideToggle();
    });


    $("#BaseClockFN").click(function () {
        $("#BaseClockAWD").slideToggle();
        $(this).next().slideToggle();
    });
    $("#BaseClockAWU").click(function () {
        $("#BaseClockAWD").slideToggle();
        $("#BaseClockFP").slideToggle();
    });


    $("#ArchitectureFN").click(function () {
        $("#ArchitectureAWD").slideToggle();
        $(this).next().slideToggle();
    });
    $("#ArchitectureAWU").click(function () {
        $("#ArchitectureAWD").slideToggle();
        $("#ArchitectureFP").slideToggle();
    });


    $("#CoreFN").click(function () {
        $("#CoreAWD").slideToggle();
        $(this).next().slideToggle();
    });
    $("#CoreAWU").click(function () {
        $("#CoreAWD").slideToggle();
        $("#CoreFP").slideToggle();
    });


    $("#S_Cb1").click(function () {
        $("#SubS_D1").hide();
        $("#SubS_D2").hide();
        $("#SubS_D3").hide();
        $("#SubS_D4").hide();
        $("#SubS_D5").hide();
        $("#SubS_D6").hide();
        $("#SubS_D0").show();
        $("#Core_D1").show();
        $("#Core_D2").hide();
        $("#Core_D3").hide();
        $("#Core_D4").hide();
        $("#Core_D5").hide();
        $("#Core_D6").hide();
        $("#Core_D7").hide();
        $("#Core_D8").hide();
        $("#Core_D9").hide();
        $("#Core_D10").hide();
        $("#Core_D11").hide();
        $("#Arch_D1").show();
        $("#Arch_D2").hide();
    });
    $("#S_Cb2").click(function () {
        $("#SubS_D1").hide();
        $("#SubS_D2").hide();
        $("#SubS_D3").hide();
        $("#SubS_D4").hide();
        $("#SubS_D5").hide();
        $("#SubS_D6").hide();
        $("#SubS_D0").show();
        $("#Core_D1").show();
        $("#Core_D2").hide();
        $("#Core_D3").hide();
        $("#Core_D4").hide();
        $("#Core_D5").hide();
        $("#Core_D6").hide();
        $("#Core_D7").hide();
        $("#Core_D8").hide();
        $("#Core_D9").hide();
        $("#Core_D10").hide();
        $("#Core_D11").hide();
        $("#Arch_D1").show();
        $("#Arch_D2").hide();
    });
    $("#S_Cb3").click(function () {
        $("#SubS_D1").show();
        $("#SubS_D2").show();
        $("#SubS_D3").show();
        $("#SubS_D4").hide();
        $("#SubS_D5").hide();
        $("#SubS_D6").hide();
        $("#SubS_D0").hide();
        $("#Core_D1").show();
        $("#Core_D2").show();
        $("#Core_D3").show();
        $("#Core_D4").show();
        $("#Core_D5").show();
        $("#Core_D6").hide();
        $("#Core_D7").hide();
        $("#Core_D8").hide();
        $("#Core_D9").hide();
        $("#Core_D10").hide();
        $("#Core_D11").hide();
        $("#Arch_D1").show();
        $("#Arch_D2").show();
    });
    $("#S_Cb4").click(function () {
        $("#SubS_D1").hide();
        $("#SubS_D2").hide();
        $("#SubS_D3").hide();
        $("#SubS_D4").show();
        $("#SubS_D5").show();
        $("#SubS_D6").show();
        $("#SubS_D0").hide();
        $("#Core_D1").hide();
        $("#Core_D2").show();
        $("#Core_D3").show();
        $("#Core_D4").show();
        $("#Core_D5").show();
        $("#Core_D6").show();
        $("#Core_D7").show();
        $("#Core_D8").show();
        $("#Core_D9").show();
        $("#Core_D10").show();
        $("#Core_D11").show();
        $("#Arch_D1").show();
        $("#Arch_D2").show();
    });
});