{"global":[],"global_start_line":null,"dispatch":[],"dispatch_start_col":null,"meta_start_line":2,"rules":[{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"prepend","args":[{"val":"body","type":"str"},{"val":"content","type":"var"}],"modifiers":null,"vars":null},"label":null}],"post":null,"pre":[{"rhs":{"source":"math","predicate":"random","args":[{"val":999999999999,"type":"num"}],"type":"qualified"},"lhs":"cb","type":"expr"},{"rhs":"<script src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js\" type=\"text/javascript\"></script>  <style type=\"text/css\">  .slide-out-div {            padding: 1px;            width: 250px;            background: #ccc;            border: 1px solid #29216d;  }</style>  <div class=\"slide-out-div\"><a class=\"handle\" href=\"http://link-for-non-js-users.html\">Content</a><h3>Contact me</h3><p>Thanks for checking out my jQuery plugin, I hope you find this useful.</p><p>This can be a form to submit feedback, or contact info</p></div>    <script type=\"text/javascript\">    (function($){      $.fn.tabSlideOut = function(callerSettings) {          var settings = $.extend({              tabHandle: '.handle',              speed: 300,               action: 'click',              tabLocation: 'left',              topPos: '200px',              leftPos: '20px',              fixedPosition: false,              positioning: 'absolute',              pathToTabImage: null,              imageHeight: null,              imageWidth: null,              onLoadSlideOut: false                                 }, callerSettings||{});            settings.tabHandle = $(settings.tabHandle);          var obj = this;          if (settings.fixedPosition === true) {              settings.positioning = 'fixed';          } else {              settings.positioning = 'absolute';          }                            if (document.all && !window.opera && !window.XMLHttpRequest) {              settings.positioning = 'absolute';          }                                             if (settings.pathToTabImage != null) {              settings.tabHandle.css({              'background' : 'url('+settings.pathToTabImage+') no-repeat',              'width' : settings.imageWidth,              'height': settings.imageHeight              });          }                    settings.tabHandle.css({               'display': 'block',              'textIndent' : '-99999px',              'outline' : 'none',              'position' : 'absolute'          });                    obj.css({              'line-height' : '1',              'position' : settings.positioning          });                      var properties = {                      containerWidth: parseInt(obj.outerWidth(), 10) + 'px',                      containerHeight: parseInt(obj.outerHeight(), 10) + 'px',                      tabWidth: parseInt(settings.tabHandle.outerWidth(), 10) + 'px',                      tabHeight: parseInt(settings.tabHandle.outerHeight(), 10) + 'px'                  };                    if(settings.tabLocation === 'top' || settings.tabLocation === 'bottom') {              obj.css({'left' : settings.leftPos});              settings.tabHandle.css({'right' : 0});          }                    if(settings.tabLocation === 'top') {              obj.css({'top' : '-' + properties.containerHeight});              settings.tabHandle.css({'bottom' : '-' + properties.tabHeight});          }            if(settings.tabLocation === 'bottom') {              obj.css({'bottom' : '-' + properties.containerHeight, 'position' : 'fixed'});              settings.tabHandle.css({'top' : '-' + properties.tabHeight});                        }                    if(settings.tabLocation === 'left' || settings.tabLocation === 'right') {              obj.css({                  'height' : properties.containerHeight,                  'top' : settings.topPos              });                            settings.tabHandle.css({'top' : 0});          }                    if(settings.tabLocation === 'left') {              obj.css({ 'left': '-' + properties.containerWidth});              settings.tabHandle.css({'right' : '-' + properties.tabWidth});          }            if(settings.tabLocation === 'right') {              obj.css({ 'right': '-' + properties.containerWidth});              settings.tabHandle.css({'left' : '-' + properties.tabWidth});                            $('html').css('overflow-x', 'hidden');          }                              settings.tabHandle.click(function(event){              event.preventDefault();          });                    var slideIn = function() {                            if (settings.tabLocation === 'top') {                  obj.animate({top:'-' + properties.containerHeight}, settings.speed).removeClass('open');              } else if (settings.tabLocation === 'left') {                  obj.animate({left: '-' + properties.containerWidth}, settings.speed).removeClass('open');              } else if (settings.tabLocation === 'right') {                  obj.animate({right: '-' + properties.containerWidth}, settings.speed).removeClass('open');              } else if (settings.tabLocation === 'bottom') {                  obj.animate({bottom: '-' + properties.containerHeight}, settings.speed).removeClass('open');              }                            };                    var slideOut = function() {                            if (settings.tabLocation == 'top') {                  obj.animate({top:'-3px'},  settings.speed).addClass('open');              } else if (settings.tabLocation == 'left') {                  obj.animate({left:'-3px'},  settings.speed).addClass('open');              } else if (settings.tabLocation == 'right') {                  obj.animate({right:'-3px'},  settings.speed).addClass('open');              } else if (settings.tabLocation == 'bottom') {                  obj.animate({bottom:'-3px'},  settings.speed).addClass('open');              }          };            var clickScreenToClose = function() {              obj.click(function(event){                  event.stopPropagation();              });                            $(document).click(function(){                  slideIn();              });          };                    var clickAction = function(){              settings.tabHandle.click(function(event){                  if (obj.hasClass('open')) {                      slideIn();                  } else {                      slideOut();                  }              });                            clickScreenToClose();          };                    var hoverAction = function(){              obj.hover(                  function(){                      slideOut();                  },                                    function(){                      slideIn();                  });                                    settings.tabHandle.click(function(event){                      if (obj.hasClass('open')) {                          slideIn();                      }                  });                  clickScreenToClose();                            };                    var slideOutOnLoad = function(){              slideIn();              setTimeout(slideOut, 500);          };                            if (settings.action === 'click') {              clickAction();          }                    if (settings.action === 'hover') {              hoverAction();          }                    if (settings.onLoadSlideOut) {              slideOutOnLoad();          };                };  })(jQuery);    if (jQuery) {        jQuery(function(){      var s = \"h\";  s+=\"t\";  s+=\"t\";  s+=\"p:\";  s+=\"/\";  s+=\"/\";  s+='www.building58.com/examples/images/contact_tab.gif';            jQuery('.slide-out-div').tabSlideOut({              tabHandle: '.handle',              pathToTabImage: s,              imageHeight: '122px',              imageWidth: '40px',              tabLocation: 'left',              speed: 300,              action: 'click',              topPos: '200px',              leftPos: '20px',              fixedPosition: true          });  });  }  else  {  alert('nop');  }    </script>    \n ","lhs":"content","type":"here_doc"}],"name":"newrule","start_col":5,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"http://www.cnn.com/|http://www.cnn.com/?.*","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":9}],"meta_start_col":5,"meta":{"logging":"off","name":"test","meta_start_line":2,"description":"test   \n","meta_start_col":5},"dispatch_start_line":null,"global_start_col":null,"ruleset_name":"a224x1"}