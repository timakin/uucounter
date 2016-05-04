// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

const UUID_IDENTIFIER = 'uu_counter_cookie';
const VISIT_TTL       = 2 * 365 * 24 * 60;

function generateUUID() {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
        var r = Math.random()*16|0, v = c == 'x' ? r : (r&0x3|0x8);
        return v.toString(16);
    });
}


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

function setCookie(value) {
    var name = UUID_IDENTIFIER;
    var ttl  = VISIT_TTL;
    var expires = "";
    var cookieDomain = "";
    if (ttl) {
      var date = new Date();
      date.setTime(date.getTime() + (ttl * 60 * 1000));
      expires = "; expires=" + date.toGMTString();
    }
    cookieDomain = "; domain=" + document.domain;
    document.cookie = name + "=" + escape(value) + expires + cookieDomain + "; path=/";
}


$(function(){
    var uucCookie = getCookie();
    if (uucCookie) {
        var uuid = generateUUID();
        setCookie(uuid);
    }
});

var UUCounter = {
    var storedUUID = getCookie();
    track: function() {
        $.ajax.sendRequest('POST', '/uu_counter/track', function(res) {
            // uu_counter tracked user access.
        });
    }
};
