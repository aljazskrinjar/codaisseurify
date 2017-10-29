
function deleteSong(artistID,songID) {
  $.ajax({
    type: "DELETE",
    url: "/artists/" + artistID + "/songs/" + songID,
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
      $('#'+songID+'').remove();

  });
}

function deleteAllSongs() {
  var buttons = document.getElementsByClassName('btndelete');

 for(var i = 0; i < buttons.length; i++){
     buttons[i].onclick();
  }
  $("li").remove(".song");

  }

function createSong(name) {

  var newSong = {name: name}
  var currentUrl = window.location.href
  var artistID = parseInt(window.location.pathname.split("/").slice(-1)[0]);

  $.ajax({
  type: "POST",
  url: currentUrl + "/songs.json",
  data: JSON.stringify({
    song: newSong
  }),
  contentType: "application/json",
  dataType: "json"
})

.done(function(data) {



  var space = document.createTextNode(" ");
  var paragraph = document.createElement("p");

  var songItem = $("<li></li>");
  songItem.addClass("song");
  songItem.attr('id',data.id );
  songItem.html(name);


  var btn = $("<button></button>");
  btn.addClass("btndelete");
  btn.attr('id',data.name);
  btn.attr('onClick','deleteSong(' + artistID + ',' + data.id + ')');
  btn.html("Delete Song");

  songItem.append(space)
  songItem.append(btn);
  songItem.append(paragraph);

  $("#songlist").append( songItem );
 })
 .fail(function(error) {
    console.log(error)
    error_message = error.responseJSON.title[0];
    showError(error_message);
  });

}


function resetErrors() {
  $("#error_message").remove();
  $("#formgroup-title").removeClass("has-error");
}

function submitSong(event) {
  event.preventDefault();
  resetErrors();
  var input=$("#song_name").val();

  if (input != "") {
    createSong(input);
  }
event.stopImmediatePropagation();
  $("#song_name").val(null);




}



$(document).ready(function() {
  $("form").bind('submit', submitSong);


});
