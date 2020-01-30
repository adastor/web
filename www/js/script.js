var Expand = (function() {
  var tile = $('.ss');
  var tileLink = $('.ss > .sc');
  var tileText = tileLink.find('.sit');
  var stripClose = $('.sx');
  
  var expanded  = false;

  var open = function() {
      
    var tile = $(this).parent();

      if (!expanded) {
        tile.addClass('sse');
        // add delay to inner text
        tileText.css('transition', 'all .5s .3s cubic-bezier(0.23, 1, 0.32, 1)');
        stripClose.addClass('sxs');
        stripClose.css('transition', 'all .6s 1s cubic-bezier(0.23, 1, 0.32, 1)');
        expanded = true;
      } 
    };
  
  var close = function() {
    if (expanded) {
      tile.removeClass('sse');
      // remove delay from inner text
      tileText.css('transition', 'all 0.15s 0 cubic-bezier(0.23, 1, 0.32, 1)');
      stripClose.removeClass('sxs');
      stripClose.css('transition', 'all 0.2s 0s cubic-bezier(0.23, 1, 0.32, 1)')
      expanded = false;
    }
  }

    var bindActions = function() {
      tileLink.on('click', open);
      stripClose.on('click', close);
    };

    var init = function() {
      bindActions();
    };

    return {
      init: init
    };

  }());

Expand.init();
