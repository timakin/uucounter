// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

const UUID_IDENTIFIER = 'uu_counter_cookie';

function getCookie() {
    var name = UUID_IDENTIFIER;
    var i, c;
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for (i = 0; i < ca.length; i++) {
      c = ca[i];
      while (c.charAt(0) === ' ') {
        c = c.substring(1, c.length);
      }
      if (c.indexOf(nameEQ) === 0) {
        return unescape(c.substring(nameEQ.length, c.length));
      }
    }
    return null;
}

var UUCounter = {
    track: function() {
    var storedUUID = getCookie();
        if (storedUUID) {
            $.post('/uu_counter/track', {}, function(res) {
                console.log(res);
            });
        }
    }
};
