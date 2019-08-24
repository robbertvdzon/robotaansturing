(function($) {
    "use strict";

    document.addEventListener('keydown', logKey);

    var currSpeedArm1 = 1530;
    var currSpeedArm2 = 1530;
    var currSpeedArm3 = 1530;
    var currSpeedArm4 = 1530;
    var currSpeedArm5 = 1530;

    $( "#key1" ).click( function( event ) {processKey("1");} );
    $( "#key2" ).click( function( event ) {processKey("2");} );
    $( "#key3" ).click( function( event ) {processKey("3");} );
    $( "#key4" ).click( function( event ) {processKey("4");} );
    $( "#key5" ).click( function( event ) {processKey("5");} );

    function logKey(e) {
        console.log(e);
        processKey(e.key);
    }

    function processKey(key){
        if (key=='1') currSpeedArm1 = 1400;
        if (key=='2') currSpeedArm1 = 1490;
        if (key=='3') currSpeedArm1 = 1530;
        if (key=='4') currSpeedArm1 = 1624;
        if (key=='5') currSpeedArm1 = 1800;

        if (key=='q') currSpeedArm2 = 1400;
        if (key=='w') currSpeedArm2 = 1490;
        if (key=='e') currSpeedArm2 = 1530;
        if (key=='r') currSpeedArm2 = 1624;
        if (key=='t') currSpeedArm2 = 1800;

        if (key=='a') currSpeedArm3 = 1400;
        if (key=='s') currSpeedArm3 = 1490;
        if (key=='d') currSpeedArm3 = 1530;
        if (key=='f') currSpeedArm3 = 1624;
        if (key=='g') currSpeedArm3 = 1800;

        if (key=='z') currSpeedArm4 = 1400;
        if (key=='x') currSpeedArm4 = 1490;
        if (key=='c') currSpeedArm4 = 1530;
        if (key=='v') currSpeedArm4 = 1624;
        if (key=='b') currSpeedArm4 = 1800;

        setSpeed(currSpeedArm1, currSpeedArm2, currSpeedArm3, currSpeedArm4, currSpeedArm5);
        // $( "#output" ).html(key);
    }


    function setSpeed(arm1, arm2, arm3, arm4, arm5){

        $( "#output" ).html(arm1+"-"+arm2+"-"+arm3+"-"+arm4+"-"+arm5);

        $.ajax({
            type: "POST",
            url: "/move",
            // The key needs to match your method's input parameter (case-sensitive).
            data: "{\"m1\":"+arm1+",\"m2\":"+arm2+",\"m3\":"+arm3+",\"m4\":"+arm4+",\"m5\":"+arm5+",\"msec\":1000}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function(data){alert(data);},
            failure: function(errMsg) {
                alert(errMsg);
            }
        });
    }

//-----------------------------


    //Select the slider element.
    var $slider = $('.slider');
    $slider.aminoSlider();

    function normalize(pos){
        var min = 1450;
        var max = 1650;
        var diff = max-min
        var posNr = Number(pos);
        return min + ((posNr*diff)/100);
    }


    function move(arm1, arm2, arm3, arm4, arm5){

        var arm1 = normalize(arm1);
        var arm2 = normalize(arm2);
        var arm3 = normalize(arm3);
        var arm4 = normalize(arm4);
        var arm5 = normalize(arm5);

        $( "#output" ).html(arm1+"-"+arm2+"-"+arm3+"-"+arm4+"-"+arm5);

        $.ajax({
            type: "POST",
            url: "/move",
            // The key needs to match your method's input parameter (case-sensitive).
            data: "{\"m1\":"+arm1+",\"m2\":"+arm2+",\"m3\":"+arm3+",\"m4\":"+arm4+",\"m5\":"+arm5+",\"msec\":1000}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function(data){alert(data);},
            failure: function(errMsg) {
                alert(errMsg);
            }
        });
    }

    //30 20
    // 50 50

    $( "#sec1" ).click( function( event ) {
        move(50, 50, 50, 50, 50);
    } );
    $( "#sec2" ).click( function( event ) {
        move(44, 35, 38, 38, 50);
    } );
    $( "#sec3" ).click( function( event ) {
        move(49, 30, 21, 45, 50);
    } );

    $( ".slider" ).change(function() {
        $( "#output" ).html("changed");
        var arm1 = $( "#arm1" ).get("0")["dataset"]["value"];
        var arm2 = $( "#arm2" ).get("0")["dataset"]["value"];
        var arm3 = $( "#arm3" ).get("0")["dataset"]["value"];
        var arm4 = $( "#arm4" ).get("0")["dataset"]["value"];
        var arm5 = $( "#arm5" ).get("0")["dataset"]["value"];



        move(arm1, arm2, arm3, arm4, arm5);


    });

})(jQuery);