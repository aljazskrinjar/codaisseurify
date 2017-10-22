
function deleteSong(artistID,songID) {
  $.ajax({
    type: "DELETE",
    url: "/artists/" + artistID + "/songs/" + songID,
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    console.log(data);

    //Here I should update songs, so it will show the new list

  });
}


$(document).ready(function() {
});
