
function deleteSong(artistID,songID) {
  $.ajax({
    type: "DELETE",
    url: "/artists/" + artistID + "/songs/" + songID,
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
      $('#'+songID+'').remove();

  })
  .fail(function(error) {
    console.log(error);
    // alert(error.responseText);
    alert("Oops. Something went wrong")
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
  var artistID = currentUrl.split("/").pop()

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
   console.log(error);
    // alert(error.responseText);
    alert("Oops something went wrong")
  });

}


function submitSong(event) {
  event.preventDefault();

  var input=$("#song_name").val();

  if (input != "") {
    createSong(input);
  } else {
    alert("Name should not be blank.");
  }

  //added so the form does not submit
  event.stopImmediatePropagation();
  $("#song_name").val(null);

}

$(document).ready(function() {
  $("form").bind('submit', submitSong);
});
