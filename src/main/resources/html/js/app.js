(function($) {
    "use strict";

    document.addEventListener('keydown', logKey);

    var currSpeedArm1 = 1530;
    var currSpeedArm2 = 1530;
    var currSpeedArm3 = 1530;
    var currSpeedArm4 = 1530;
    var currSpeedArm5 = 1530;

    var snelLinks = 1400;
    var langzaamLinks = 1485;
    var stil = 1530;
    var langzaamRechts = 1624;
    var snelRechts = 1800;


    $( "#key1" ).click( function( event ) {processKey("1");} );
    $( "#key2" ).click( function( event ) {processKey("2");} );
    $( "#key3" ).click( function( event ) {processKey("3");} );
    $( "#key4" ).click( function( event ) {processKey("4");} );
    $( "#key5" ).click( function( event ) {processKey("5");} );

    $( "#keyq" ).click( function( event ) {processKey("q");} );
    $( "#keyw" ).click( function( event ) {processKey("w");} );
    $( "#keye" ).click( function( event ) {processKey("e");} );
    $( "#keyr" ).click( function( event ) {processKey("r");} );
    $( "#keyt" ).click( function( event ) {processKey("t");} );

    $( "#keya" ).click( function( event ) {processKey("a");} );
    $( "#keys" ).click( function( event ) {processKey("s");} );
    $( "#keyd" ).click( function( event ) {processKey("d");} );
    $( "#keyf" ).click( function( event ) {processKey("f");} );
    $( "#keyg" ).click( function( event ) {processKey("g");} );

    $( "#keyz" ).click( function( event ) {processKey("z");} );
    $( "#keyx" ).click( function( event ) {processKey("x");} );
    $( "#keyc" ).click( function( event ) {processKey("c");} );
    $( "#keyv" ).click( function( event ) {processKey("v");} );
    $( "#keyb" ).click( function( event ) {processKey("b");} );

    function logKey(e) {
        console.log(e);
        processKey(e.key);
    }


    function move1(){
        $( "#output" ).html("move1");
        $.ajax({
            type: "POST",
            url: "/move1",
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


    function move3(){
        $( "#output" ).html("move3");
        $.ajax({
            type: "POST",
            url: "/move3",
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


    function move2(){
        $( "#output" ).html("move2");
        $.ajax({
            type: "POST",
            url: "/move2",
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


    function moveArm(arm, delta){
        $( "#output" ).html("movearm");
        $.ajax({
            type: "POST",
            url: "/movearm",
            data: "{\"arm\":"+arm+",\"delta\":"+delta+"}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function(data){alert(data);},
            failure: function(errMsg) {
                alert(errMsg);
            }
        });
    }



    function processKey(key){
        if (key=='8') {
            move1();
            return;
        }
        if (key=='9') {
            move2();
            return;
        }
        if (key=='0') {
            move3();
            return;
        }

        if (key=='1') {
            moveArm(0,-0.3);
            return;
        }
        if (key=='2') {
            moveArm(0,-0.1);
            return;
        }
        if (key=='4') {
            moveArm(0,0.1);
            return;
        }
        if (key=='5') {
            moveArm(0,0.3);
            return;
        }


        if (key=='q') {
            moveArm(1,-0.3);
            return;
        }
        if (key=='w') {
            moveArm(1,-0.1);
            return;
        }
        if (key=='e') {
            moveArm(1,0.1);
            return;
        }
        if (key=='r') {
            moveArm(1,0.3);
            return;
        }


        if (key=='a') {
            moveArm(2,-0.3);
            return;
        }
        if (key=='s') {
            moveArm(2,-0.1);
            return;
        }
        if (key=='d') {
            moveArm(2,0.1);
            return;
        }
        if (key=='f') {
            moveArm(2,0.3);
            return;
        }


        if (key=='z') {
            moveArm(3,-0.3);
            return;
        }
        if (key=='x') {
            moveArm(3,-0.1);
            return;
        }
        if (key=='c') {
            moveArm(3,0.1);
            return;
        }
        if (key=='v') {
            moveArm(3,0.3);
            return;
        }



        if (key=='1') currSpeedArm1 = snelLinks;
        if (key=='2') currSpeedArm1 = langzaamLinks;
        if (key=='3') currSpeedArm1 = stil;
        if (key=='4') currSpeedArm1 = langzaamRechts;
        if (key=='5') currSpeedArm1 = 1800;

        if (key=='q') currSpeedArm2 = snelLinks;
        if (key=='w') currSpeedArm2 = langzaamLinks;
        if (key=='e') currSpeedArm2 = stil;
        if (key=='r') currSpeedArm2 = langzaamRechts;
        if (key=='t') currSpeedArm2 = 1800;

        if (key=='a') currSpeedArm3 = snelLinks;
        if (key=='s') currSpeedArm3 = langzaamLinks;
        if (key=='d') currSpeedArm3 = stil;
        if (key=='f') currSpeedArm3 = langzaamRechts;
        if (key=='g') currSpeedArm3 = 1800;

        if (key=='z') currSpeedArm4 = snelLinks;
        if (key=='x') currSpeedArm4 = langzaamLinks;
        if (key=='c') currSpeedArm4 = stil;
        if (key=='v') currSpeedArm4 = langzaamRechts;
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