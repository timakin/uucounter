// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var UUCounter = {
    track: function() {
        $.post('/uu_counter/tracks', {}, function(res) {
            console.log(res);
        });
    }
};
