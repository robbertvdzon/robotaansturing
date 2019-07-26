(function($) {
    "use strict";
    
    //Select the slider element.
    var $slider = $('.slider');
    $slider.aminoSlider();

    function normalize(pos){
        var min = 100;
        var max = 1600;
        var diff = max-min
        var posNr = Number(pos);
        return min + ((posNr*diff)/100);
    }

    $( ".slider" ).change(function() {
        $( "#output" ).html("changed");
        var arm1 = $( "#arm1" ).get("0")["dataset"]["value"];
        var arm2 = $( "#arm2" ).get("0")["dataset"]["value"];
        var arm3 = $( "#arm3" ).get("0")["dataset"]["value"];
        var arm4 = $( "#arm4" ).get("0")["dataset"]["value"];
        var arm5 = $( "#arm5" ).get("0")["dataset"]["value"];

        arm1 = normalize(arm1);
        arm2 = normalize(arm2);
        arm3 = normalize(arm3);
        arm4 = normalize(arm4);
        arm5 = normalize(arm5);

        $( "#output" ).html(arm1+"-"+arm2+"-"+arm3+"-"+arm4+"-"+arm5);

        $.ajax({
            type: "POST",
            url: "/move",
            // The key needs to match your method's input parameter (case-sensitive).
            data: "{\"m1\":"+arm1+",\"m2\":"+arm2+",\"m3\":"+arm3+",\"m4\":"+arm4+",\"m5\":"+arm5+",\"msec\":100}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function(data){alert(data);},
            failure: function(errMsg) {
                alert(errMsg);
            }
        });

    });

})(jQuery);