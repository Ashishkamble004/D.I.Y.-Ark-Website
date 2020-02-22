$(document).ready(function () {

    $(".AMD_GRAPHIC").hide();
    $(".NVIDIA_GRAPHIC").hide();
    $("#BrandFP").hide();
    $("#NSeriesFP").hide();
    $("#NInterWidthFP").hide();
    $("#NStandMemoConfFP").hide();
    $("#ASeriesFP").hide();
    $("#ASubseriesFP").hide();
    $("#AGPUClockFP").hide();
    $("#AMemoAmtFP").hide();
    $("#ASubS_D0").hide();


    $("#BrandFN").click(function () {
        $("#BrandAWD").slideToggle();
        $(this).next().slideToggle();
    });
    $("#BrandAWU").click(function () {
        $("#BrandAWD").slideToggle();
        $("#BrandFP").slideToggle();
    });

    $("#NSeriesFN").click(function () {
        $("#NSeriesAWD").slideToggle();
        $(this).next().slideToggle();
    });
    $("#NSeriesAWU").click(function () {
        $("#NSeriesAWD").slideToggle();
        $("#NSeriesFP").slideToggle();
    });

    $("#NInterWidthFN").click(function () {
        $("#NInterWidthAWD").slideToggle();
        $(this).next().slideToggle();
    });
    $("#NInterWidthAWU").click(function () {
        $("#NInterWidthAWD").slideToggle();
        $("#NInterWidthFP").slideToggle();
    });

    $("#NStandMemoConfFN").click(function () {
        $("#NStandMemoConfAWD").slideToggle();
        $(this).next().slideToggle();
    });
    $("#NStandMemoConfAWU").click(function () {
        $("#NStandMemoConfAWD").slideToggle();
        $("#NStandMemoConfFP").slideToggle();
    });


    $("#ASeriesFN").click(function () {
        $("#ASeriesAWD").slideToggle();
        $(this).next().slideToggle();
    });
    $("#ASeriesAWU").click(function () {
        $("#ASeriesAWD").slideToggle();
        $("#ASeriesFP").slideToggle();
    });


    $("#ASubseriesFN").click(function () {
        $("#ASubseriesAWD").slideToggle();
        $(this).next().slideToggle();
    });
    $("#ASubseriesAWU").click(function () {
        $("#ASubseriesAWD").slideToggle();
        $("#ASubseriesFP").slideToggle();
    });


    $("#AGPUClockFN").click(function () {
        $("#AGPUClockAWD").slideToggle();
        $(this).next().slideToggle();
    });
    $("#AGPUClockAWU").click(function () {
        $("#AGPUClockAWD").slideToggle();
        $("#AGPUClockFP").slideToggle();
    });


    $("#AMemoAmtFN").click(function () {
        $("#AMemoAmtAWD").slideToggle();
        $(this).next().slideToggle();
    });
    $("#AMemoAmtAWU").click(function () {
        $("#AMemoAmtAWD").slideToggle();
        $("#AMemoAmtFP").slideToggle();
    });

    $("#Brand_Cb1").click(function () {
        $(".NVIDIA_GRAPHIC").show();
        $(".AMD_GRAPHIC").hide();
        $("#NSeriesFP").hide();
        $("#NInterWidthFP").hide();
        $("#NStandMemoConfFP").hide();
    });
    $("#Brand_Cb2").click(function () {
        $(".AMD_GRAPHIC").show();
        $(".NVIDIA_GRAPHIC").hide();
        $("#ASeriesFP").hide();
        $("#ASubseriesFP").hide();
        $("#AGPUClockFP").hide();
        $("#AMemoAmtFP").hide();
        $("#ASubS_D0").hide();
    });


    $("#NS_Cb1").click(function () {
        $("#NIW_D1").hide();
        $("#NIW_D2").show();
        $("#NIW_D3").show();
        $("#NIW_D4").show();
        $("#NStdMC_D1").hide();
        $("#NStdMC_D2").hide();
        $("#NStdMC_D3").show();
        $("#NStdMC_D4").show();
        $("#NStdMC_D5").show();
        $("#NStdMC_D6").show();
        $("#NStdMC_D7").show();
    });
    $("#NS_Cb2").click(function () {
        $("#NIW_D1").show();
        $("#NIW_D2").show();
        $("#NIW_D3").hide();
        $("#NIW_D4").hide();
        $("#NStdMC_D1").hide();
        $("#NStdMC_D2").show();
        $("#NStdMC_D3").show();
        $("#NStdMC_D4").show();
        $("#NStdMC_D5").show();
        $("#NStdMC_D6").show();
        $("#NStdMC_D7").show();
    });
    $("#NS_Cb3").click(function () {
        $("#NIW_D1").show();
        $("#NIW_D2").show();
        $("#NIW_D3").hide();
        $("#NIW_D4").hide();
        $("#NStdMC_D1").show();
        $("#NStdMC_D2").hide();
        $("#NStdMC_D3").hide();
        $("#NStdMC_D4").hide();
        $("#NStdMC_D5").hide();
        $("#NStdMC_D6").hide();
        $("#NStdMC_D7").hide();
    });


    $("#AS_Cb1").click(function () {
        $("#ASubS_D1").hide();
        $("#ASubS_D2").hide();
        $("#ASubS_D3").hide();
        $("#ASubS_D4").hide();
        $("#ASubS_D5").show();
        $("#ASubS_D6").show();
        $("#ASubS_D7").show();
        $("#ASubS_D8").show();
        $("#ASubS_D9").show();
        $("#ASubS_D10").show();
        $("#ASubS_D0").hide();
        $("#AMemoAmt_D1").hide();
        $("#AMemoAmt_D2").show();
        $("#AMemoAmt_D3").show();
        $("#AMemoAmt_D4").show();
        $("#AMemoAmt_D5").show();
        $("#AMemoAmt_D6").show();
    });
    $("#AS_Cb2").click(function () {
        $("#ASubS_D1").hide();
        $("#ASubS_D2").hide();
        $("#ASubS_D3").hide();
        $("#ASubS_D4").hide();
        $("#ASubS_D5").show();
        $("#ASubS_D6").show();
        $("#ASubS_D7").hide();
        $("#ASubS_D8").hide();
        $("#ASubS_D9").hide();
        $("#ASubS_D10").hide();
        $("#ASubS_D0").hide();
        $("#AMemoAmt_D1").hide();
        $("#AMemoAmt_D2").show();
        $("#AMemoAmt_D3").hide();
        $("#AMemoAmt_D4").show();
        $("#AMemoAmt_D5").hide();
        $("#AMemoAmt_D6").hide();
    });
    $("#AS_Cb3").click(function () {
        $("#ASubS_D1").hide();
        $("#ASubS_D2").hide();
        $("#ASubS_D3").hide();
        $("#ASubS_D4").hide();
        $("#ASubS_D5").hide();
        $("#ASubS_D6").hide();
        $("#ASubS_D7").hide();
        $("#ASubS_D8").hide();
        $("#ASubS_D9").hide();
        $("#ASubS_D10").hide();
        $("#ASubS_D0").show();
        $("#AMemoAmt_D1").show();
        $("#AMemoAmt_D2").hide();
        $("#AMemoAmt_D3").hide();
        $("#AMemoAmt_D4").hide();
        $("#AMemoAmt_D5").hide();
        $("#AMemoAmt_D6").hide();
    });
    $("#AS_Cb4").click(function () {
        $("#ASubS_D1").hide();
        $("#ASubS_D2").hide();
        $("#ASubS_D3").hide();
        $("#ASubS_D4").hide();
        $("#ASubS_D5").hide();
        $("#ASubS_D6").hide();
        $("#ASubS_D7").hide();
        $("#ASubS_D8").hide();
        $("#ASubS_D9").hide();
        $("#ASubS_D10").hide();
        $("#ASubS_D0").show();
        $("#AMemoAmt_D1").hide();
        $("#AMemoAmt_D2").hide();
        $("#AMemoAmt_D3").hide();
        $("#AMemoAmt_D4").hide();
        $("#AMemoAmt_D5").hide();
        $("#AMemoAmt_D6").show();
    });
    $("#AS_Cb5").click(function () {
        $("#ASubS_D1").hide();
        $("#ASubS_D2").hide();
        $("#ASubS_D3").hide();
        $("#ASubS_D4").hide();
        $("#ASubS_D5").hide();
        $("#ASubS_D6").hide();
        $("#ASubS_D7").show();
        $("#ASubS_D8").show();
        $("#ASubS_D9").show();
        $("#ASubS_D10").show();
        $("#ASubS_D0").hide();
        $("#AMemoAmt_D1").show();
        $("#AMemoAmt_D2").show();
        $("#AMemoAmt_D3").show();
        $("#AMemoAmt_D4").hide();
        $("#AMemoAmt_D5").show();
        $("#AMemoAmt_D6").hide();
    });
});