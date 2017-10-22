
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
    //songID.parentNode.removeChild(songID);

  });
}


// function createSong(title) {
//   var newSong = { name: name };
//
//   $.ajax({
//     type: "POST",
//     url: "/songs.json",
//     data: JSON.stringify({
//         song: newSong
//     }),
//     contentType: "application/json",
//     dataType: "json"})
//
//     .done(function(data) {
//       console.log(data);
//
//       var checkboxId = "song-" + data.id;
//
//       var listItem = $("<li></li>");
//       listItem.addClass("song");
//       listItem.attr('data-id', data.id);
//
//       var checkbox = $('<input>');
//       checkbox.attr('type', 'checkbox');
//       checkbox.attr('id', checkboxId);
//       checkbox.val(1);
//       checkbox.bind('change', toggleDone);
//
//       var space = document.createTextNode(" ");
//
//       var label = $('<label></label>');
//       label.attr('for', checkboxId);
//       label.html(data.title);
//
//       listItem.append(checkbox);
//       listItem.append(space);
//       listItem.append(label);
//
//       $("#songlist").append( listItem );
//
//       updateCounters();
//     })
//
//     .fail(function(error) {
//       console.log(error);
//
//       error_message = error.responseJSON.title[0];
//       showError(error_message);
//     });
// }
//
// function submitSong(event) {
//   event.preventDefault();
//
//   createSong($("#song_name").val());
//   $("#song_name").val(null);
//
// }


$(document).ready(function() {
});
