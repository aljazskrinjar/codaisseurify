
function deleteSong(artistID,songID) {
  $.ajax({
    type: "DELETE",
    url: "/artists/" + artistID + "/songs/" + songID,
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    console.log();

      $('#'+songID+'').remove();



  });
}

function deleteAllSongs() {
  $("li").remove(".song");
  //$("li").remove(".song");
 // var currentUrl = window.location.href
 //  $.ajax({
 //    type: "DELETE",
 //    url: currentUrl + "/somewhere where are all songs",
 //    contentType: "application/json",
 //    dataType: "json"
 //  })
 //  .done(function(data) {
 //    console.log();
 //      //delete all songs
 //      $("li").remove(".song");
 //
 //
 //  });
  }



$(document).ready(function() {


});
