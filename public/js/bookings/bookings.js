$(document).ready(function () {
    $("#Seating").click(function () { 
        viewSeats();
    });
});

function viewSeats(){
    $('#modalSeatings').modal('show'); 
}