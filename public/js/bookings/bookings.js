$(document).ready(function () {
    $("#Seating").click(function () { 
        // viewSeats();
    });

    if ($('#checkUser').prop('checked') ) {
        $("#userRow").css("display", "none");
    }

    $('#checkUser').on('change', function() {
        if ($(this).is(':checked') ) {
            $("#userRow").css("display", "none");
        } else {
            $("#userRow").css("display", "block");
        }
    });
});

function viewSeats(){
    $('#modalSeatings').modal('show'); 
}