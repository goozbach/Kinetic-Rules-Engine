{
   "dispatch": [
      {"domain": "facebook.com"},
      {"domain": "google.com"}
   ],
   "global": [
      {
         "content": ".KOBJ_doc {    \t\tbackground-image: url(http:\\/\\/k-misc.s3.amazonaws.com/resources/a41x74/button.png);    \t\tbackground-repeat: no-repeat;    \t\theight:40px;    \t\tleft:150px;    \t\tpadding-bottom:0;    \t\tpadding-left:0px;    \t\tpadding-right:0px;    \t\tpadding-top:10px;    \t\tposition:relative;    \t\ttext-align:center;    \t\twidth:100px;    \t}        \t.KOBJ_reset *  { display: block; color: black; font-family: arial; font-size: small; }    \t.KOBJ_reset * li              { display: list-item }    \t.KOBJ_reset * head            { display: none }    \t.KOBJ_reset * table           { display: table }    \t.KOBJ_reset * tr              { display: table-row }    \t.KOBJ_reset * thead           { display: table-header-group }    \t.KOBJ_reset * tbody           { display: table-row-group }    \t.KOBJ_reset * tfoot           { display: table-footer-group }    \t.KOBJ_reset * col             { display: table-column }    \t.KOBJ_reset * colgroup        { display: table-column-group }    \t.KOBJ_reset * td, th          { display: table-cell }    \t.KOBJ_reset * caption         { display: table-caption }    \t.KOBJ_reset * th              { font-weight: bolder; text-align: center }    \t.KOBJ_reset * caption         { text-align: center }    \t.KOBJ_reset * body            { margin: 8px }    \t.KOBJ_reset * h1              { font-size: 2em; margin: .67em 0 }    \t.KOBJ_reset * h2              { font-size: 1.5em; margin: .75em 0 }    \t.KOBJ_reset * h3              { font-size: 1.17em; margin: .83em 0 }    \t.KOBJ_reset * h4, .KOBJ_reset * p,    \t.KOBJ_reset * blockquote, .KOBJ_reset * ul,    \t.KOBJ_reset * fieldset, .KOBJ_reset * form,    \t.KOBJ_reset * ol, .KOBJ_reset * dl, .KOBJ_reset * dir,    \t.KOBJ_reset * menu            { margin: 1.12em 0 }    \t.KOBJ_reset * h5              { font-size: .83em; margin: 1.5em 0 }    \t.KOBJ_reset * h6              { font-size: .75em; margin: 1.67em 0 }    \t.KOBJ_reset * h1, .KOBJ_reset h2, .KOBJ_reset h3, .KOBJ_reset h4,    \t.KOBJ_reset * h5, .KOBJ_reset h6, .KOBJ_reset b,    \t.KOBJ_reset * strong          { font-weight: bolder }    \t.KOBJ_reset * blockquote      { margin-left: 40px; margin-right: 40px }    \t.KOBJ_reset * i, .KOBJ_reset * cite, .KOBJ_reset * em,    \t.KOBJ_reset * var, .KOBJ_reset * address    { font-style: italic }    \t.KOBJ_reset * pre, .KOBJ_reset * tt, .KOBJ_reset * code,    \t.KOBJ_reset * kbd, .KOBJ_reset * samp       { font-family: monospace }    \t.KOBJ_reset * pre             { white-space: pre }    \t.KOBJ_reset * button, .KOBJ_reset textarea,    \t.KOBJ_reset * input, .KOBJ_reset select   { display: inline-block }    \t.KOBJ_reset * big             { font-size: 1.17em }    \t.KOBJ_reset * small, .KOBJ_reset sub, .KOBJ_reset sup { font-size: .83em }    \t.KOBJ_reset * sub             { vertical-align: sub }    \t.KOBJ_reset * sup             { vertical-align: super }    \t.KOBJ_reset * table           { border-spacing: 2px; }    \t.KOBJ_reset * thead, .KOBJ_reset tbody,    \t.KOBJ_reset * tfoot           { vertical-align: middle }    \t.KOBJ_reset * td, .KOBJ_reset th, .KOBJ_reset tr      { vertical-align: inherit }    \t.KOBJ_reset * s, .KOBJ_reset strike, .KOBJ_reset del  { text-decoration: line-through }    \t.KOBJ_reset * hr              { border: 1px inset }    \t.KOBJ_reset * ol, .KOBJ_reset ul, .KOBJ_reset dir,    \t.KOBJ_reset menu, .KOBJ_reset dd        { margin-left: 40px }    \t.KOBJ_reset * ol              { list-style-type: decimal }    \t.KOBJ_reset * ol ul, .KOBJ_reset * ul ol,    \t.KOBJ_reset * ul ul, .KOBJ_reset * ol ol    { margin-top: 0; margin-bottom: 0 }    \t.KOBJ_reset * u, .KOBJ_reset * ins          { text-decoration: underline }    \t.KOBJ_reset * br:before       { content: \"\\A\"; white-space: pre-line }    \t.KOBJ_reset * center          { text-align: center }    \t.KOBJ_reset * :link, .KOBJ_reset :visited { text-decoration: underline }    \t.KOBJ_reset * :focus          { outline: thin dotted invert }    \t.KOBJ_reset * a { color: blue; }    \t.KOBJ_reset * a:visited { color: #551A8B; }    \t.KOBJ_reset * p { text-align: left; }    \t.KOBJ_reset * div { color: black; }    \t    \t    \t.KOBJ_reset BDO[DIR=\"ltr\"]  { direction: ltr; unicode-bidi: bidi-override }    \t.KOBJ_reset BDO[DIR=\"rtl\"]  { direction: rtl; unicode-bidi: bidi-override }    \t    \t.KOBJ_reset *[DIR=\"ltr\"]    { direction: ltr; unicode-bidi: embed }    \t.KOBJ_reset *[DIR=\"rtl\"]    { direction: rtl; unicode-bidi: embed }        \t.KOBJ_images img { margin: 5px; border: none; }            ",
         "type": "css"
      },
      {
         "cachable": 0,
         "datatype": "JSON",
         "name": "twitter_search",
         "source": "http://search.twitter.com/search.json?show_user=true&rpp=3",
         "type": "datasource"
      }
   ],
   "meta": {
      "logging": "on",
      "name": "KAP"
   },
   "rules": [
      {
         "actions": [{"action": {
            "args": [
               {
                  "type": "str",
                  "val": "#home_sidebar"
               },
               {
                  "type": "var",
                  "val": "message"
               }
            ],
            "modifiers": null,
            "name": "prepend",
            "source": null
         }}],
         "blocktype": "every",
         "callbacks": null,
         "cond": {
            "type": "bool",
            "val": "true"
         },
         "emit": null,
         "foreach": [],
         "name": "facebook",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": "http://www.facebook.com/home.php",
            "type": "prim_event",
            "vars": []
         }},
         "pre": [
            {
               "lhs": "tweets",
               "rhs": {
                  "args": [{
                     "type": "hashraw",
                     "val": [{
                        "lhs": "q",
                        "rhs": {
                           "type": "str",
                           "val": "kynetx"
                        }
                     }]
                  }],
                  "predicate": "twitter_search",
                  "source": "datasource",
                  "type": "qualified"
               },
               "type": "expr"
            },
            {
               "lhs": "res",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "$..results[0].text"
                  }],
                  "name": "ick",
                  "obj": {
                     "type": "var",
                     "val": "tweets"
                  },
                  "type": "operator"
               },
               "type": "expr"
            },
            {
               "lhs": "img",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "$..results[0].profile_image_url"
                  }],
                  "name": "ick",
                  "obj": {
                     "type": "var",
                     "val": "tweets"
                  },
                  "type": "operator"
               },
               "type": "expr"
            },
            {
               "lhs": "user",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "$..results[0].from_user"
                  }],
                  "name": "ick",
                  "obj": {
                     "type": "var",
                     "val": "tweets"
                  },
                  "type": "operator"
               },
               "type": "expr"
            },
            {
               "lhs": "message",
               "rhs": " \n<div id=\"KynetxProxy\" style=\"margin-bottom: 10px;\">  \t\t  \t\t  \t\t\t\t<div class=\"UIHomeBox UITitledBox\" id=\"Kynetx_Logo\" style=\"margin-bottom: 0px;\">  \t\t  \t\t\t\t\t<div class=\"UITitledBox_Content\" style=\"text-align: center;\">  \t\t\t\t\t\t<div><img src=\"http://kynetx.com/images/logo.gif\" alt=\"Kynetx\" style=\"position: relative; right: -6px;\" />  \t\t\t\t\t\t\t<a href=\"http://www.facebook.com/pages/Kynetx/100843423859\">  \t\t\t\t\t\t\t\t<img src=\"http:\\/\\/k-misc.s3.amazonaws.com/resources/a41x53/image4.jpg\" alt=\"Become a Kynetx\" style=\"margin-top: -10px; margin-bottom: 10px;\" />  \t\t\t\t\t\t\t<\/a>  \t\t\t\t\t\t<\/div>  \t\t\t\t\t\t<div>  \t\t\t\t\t\t\t<img hspace=\"8\" vspace=\"4\" align=\"absmiddle\" src=\"http://www.kynetx.com/images/twitterIcon.gif\"/><a target=\"_blank\" href=\"http://twitter.com/kynetx\">Follow Kynetx on Twitter<\/a>  \t\t\t\t\t\t<\/div>  \t\t\t\t\t\t<div style=\"height:100px;padding:3px\">  \t\t\t\t\t\t\tFrom Twitter User <a href=\"http://www.twitter.com#{user}\">#{user}<\/a> about Kynetx:<br/>  \t\t\t\t\t\t\t<div style=\"float:left; margin-top: 10px;\">  \t\t\t\t\t\t\t\t<a href=\"http://www.twitter.com/#{user}\">  \t\t\t\t\t\t\t\t\t<img src=\"#{img}\" style=\"width: 50px;\" />  \t\t\t\t\t\t\t\t<\/a>  \t\t\t\t\t\t\t<\/div>  \t\t\t\t\t\t\t<div style=\"margin-top: 10px;\">  \t\t\t\t\t\t\t\t#{res}  \t\t\t\t\t\t\t<\/div>  \t\t\t\t\t\t<\/div>  \t\t\t\t\t<\/div>  \t\t\t\t<\/div>  \t\t  \t\t  \t\t\t<\/div>     \n ",
               "type": "here_doc"
            }
         ],
         "state": "active"
      },
      {
         "actions": [{"action": {
            "args": [],
            "modifiers": null,
            "name": "noop",
            "source": null
         }}],
         "blocktype": "every",
         "callbacks": null,
         "cond": {
            "type": "bool",
            "val": "true"
         },
         "emit": "\n(function($){      $.fn.tabSlideOut = function(callerSettings) {          var settings = $.extend({              tabHandle: '.handle',              speed: 300,               action: 'click',              tabLocation: 'left',              topPos: '200px',              leftPos: '20px',              fixedPosition: false,              positioning: 'absolute',              pathToTabImage: null,              imageHeight: null,              imageWidth: null,              onLoadSlideOut: false                                 }, callerSettings||{});            settings.tabHandle = $(settings.tabHandle);          var obj = this;          if (settings.fixedPosition === true) {              settings.positioning = 'fixed';          } else {              settings.positioning = 'absolute';          }                            if (document.all && !window.opera && !window.XMLHttpRequest) {              settings.positioning = 'absolute';          }                                                  if (settings.pathToTabImage != null) {              settings.tabHandle.css({              'background' : 'url('+settings.pathToTabImage+') no-repeat',              'width' : settings.imageWidth,              'height': settings.imageHeight              });          }                    settings.tabHandle.css({               'display': 'block',              'textIndent' : '-99999px',              'outline' : 'none',              'position' : 'absolute'          });                    obj.css({              'line-height' : '1',              'position' : settings.positioning          });                      var properties = {                      containerWidth: parseInt(obj.outerWidth(), 10) + 'px',                      containerHeight: parseInt(obj.outerHeight(), 10) + 'px',                      tabWidth: parseInt(settings.tabHandle.outerWidth(), 10) + 'px',                      tabHeight: parseInt(settings.tabHandle.outerHeight(), 10) + 'px'                  };                    if(settings.tabLocation === 'top' || settings.tabLocation === 'bottom') {              obj.css({'left' : settings.leftPos});              settings.tabHandle.css({'right' : 0});          }                    if(settings.tabLocation === 'top') {              obj.css({'top' : '-' + properties.containerHeight});              settings.tabHandle.css({'bottom' : '-' + properties.tabHeight});          }            if(settings.tabLocation === 'bottom') {              obj.css({'bottom' : '-' + properties.containerHeight, 'position' : 'fixed'});              settings.tabHandle.css({'top' : '-' + properties.tabHeight});                        }                    if(settings.tabLocation === 'left' || settings.tabLocation === 'right') {              obj.css({                  'height' : properties.containerHeight,                  'top' : settings.topPos              });                            settings.tabHandle.css({'top' : -1});          }                    if(settings.tabLocation === 'left') {              obj.css({ 'left': '-' + properties.containerWidth});              settings.tabHandle.css({'right' : '-' + properties.tabWidth});          }            if(settings.tabLocation === 'right') {              obj.css({ 'right': '-' + properties.containerWidth});              settings.tabHandle.css({'left' : '-' + properties.tabWidth});                            $('html').css('overflow-x', 'hidden');          }                              settings.tabHandle.click(function(event){              event.preventDefault();          });                    var slideIn = function() {                            if (settings.tabLocation === 'top') {                  obj.animate({top:'-' + properties.containerHeight}, settings.speed).removeClass('open');              } else if (settings.tabLocation === 'left') {                  obj.animate({left: '-' + properties.containerWidth}, settings.speed).removeClass('open');              } else if (settings.tabLocation === 'right') {                  obj.animate({right: '-' + properties.containerWidth}, settings.speed).removeClass('open');              } else if (settings.tabLocation === 'bottom') {                  obj.animate({bottom: '-' + properties.containerHeight}, settings.speed).removeClass('open');              }                            };                    var slideOut = function() {                            if (settings.tabLocation == 'top') {                  obj.animate({top:'-3px'},  settings.speed).addClass('open');              } else if (settings.tabLocation == 'left') {                  obj.animate({left:'-3px'},  settings.speed).addClass('open');              } else if (settings.tabLocation == 'right') {                  obj.animate({right:'-3px'},  settings.speed).addClass('open');              } else if (settings.tabLocation == 'bottom') {                  obj.animate({bottom:'-3px'},  settings.speed).addClass('open');              }          };            var clickScreenToClose = function() {              obj.click(function(event){                  event.stopPropagation();              });                            $(document).click(function(){                  slideIn();              });          };                    var clickAction = function(){              settings.tabHandle.click(function(event){                  if (obj.hasClass('open')) {                      slideIn();                  } else {                      slideOut();                  }              });                            clickScreenToClose();          };                    var hoverAction = function(){              obj.hover(                  function(){                      slideOut();                  },                                    function(){                      slideIn();                  });                                    settings.tabHandle.click(function(event){                      if (obj.hasClass('open')) {                          slideIn();                      }                  });                  clickScreenToClose();                            };                    var slideOutOnLoad = function(){              slideIn();              setTimeout(slideOut, 500);          };                            if (settings.action === 'click') {              clickAction();          }                    if (settings.action === 'hover') {              hoverAction();          }                    if (settings.onLoadSlideOut) {              slideOutOnLoad();          };                };  })($K);      if(!KOBJ.conference){  $K(\"body\").append(msg);    $K('#Kynetx_conference_content').tabSlideOut({tabHandle: '.handle','pathToTabImage':'http:\\/\\/k-misc.s3.amazonaws.com/actions/schedule.png',imageHeight: '122px',imageWidth: '40px',tabLocation: 'right',speed: 300,action: 'click',topPos: '100px',fixedPosition: true});    KOBJ.conference = true;  }            ",
         "foreach": [],
         "name": "conference",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": ".*",
            "type": "prim_event",
            "vars": []
         }},
         "pre": [{
            "lhs": "msg",
            "rhs": " \n<div style=\"padding: 20px; width: 250px; background: #fff; border: 1px solid #2D83D5; z-index: 9000;\" id=\"Kynetx_conference_content\" class=\"KOBJ_reset\">  \t\t\t<a class=\"handle\" href=\"#\">Content<\/a>  \t\t     <h2 class=\"left\">Kynetx Impact Conference Agenda<\/h2>  \t\t     <div class=\"KOBJ_images\">Maps<div><a href=\"http://k-misc.s3.amazonaws.com/random/impact/tgpoint1.jpg\" style=\"float: left\"><img src=\"http://k-misc.s3.amazonaws.com/random/impact/tgpoint1_thumbnail.jpg\" width=\"50px\" /><\/a><a href=\"http://k-misc.s3.amazonaws.com/random/impact/tgpoint2.jpg\" style=\"float: left\"><img src=\"http://k-misc.s3.amazonaws.com/random/impact/tgpoint2_thumbnail.jpg\"  width=\"50px\" /><\/a><a href=\"http://k-misc.s3.amazonaws.com/random/impact/novell.jpg\"><img src=\"http://k-misc.s3.amazonaws.com/random/impact/novell_thumbnail.jpg\" width=\"50px\" /><\/a><\/div><\/div>  \t\t<div class=\"entry clearfix\" style=\"height:300px\">  \t\t <div style=\"overflow: auto; height: 100%;\">  \t\t<h2><strong>Thursday Nov. 19<\/strong><\/h2><br/><br/>  \t\t8:30 am  <strong> Breakfast<\/strong><br/><br/>  \t\t  \t\t9:00-9:45 am   <strong>Keynote Address:<\/strong> <em> <\/em>  \t\t  \t\t<em> <\/em>  \t\t<p style=\"padding-left: 10px;\"><em>\u201a��<span style=\"color: rgb(0, 0, 0);\">User-Centric Identity in the Client-Side Revolution<\/span><\/em><em><span style=\"color: rgb(0, 0, 0);\">,<\/span>\u201a��<\/em> by\t<a href=\"http://www.identityblog.com/?p=360\">Kim Cameron<\/a>, Microsoft Chief Architect of Identity<\/p>  \t\t  \t\t10:00-10:45 am  <strong>Keynote Address<\/strong>: \t<em> <\/em>  \t\t  \t\t<em> <\/em>  \t\t<p style=\"padding-left: 10px;\"><em>\u201a��Leveraging the Purpose-centric Web, New Tools & Technologies to Change Your Business,\u201a��<\/em> Tim Christin, Sr. VP Identity Solutions, Acxiom Corp.<\/p>  \t\t  \t\t11:00-11:45 am  <strong>Workshop:<\/strong> <em> <\/em>  \t\t  \t\t<em> <\/em>  \t\t<p style=\"padding-left: 10px;\"><em>\u201a��Building Purpose-Centric Apps with KRL \u201a�� Advanced,\u201a�� <\/em>Sam Curren, Kynetx Lead Developer<\/p>  \t\t  \t\t12:00 pm  <strong>Lunch<\/strong>: <em> <\/em><br/>  \t\t  \t\t<em> <\/em>  \t\t<p style=\"padding-left: 10px;\"><em> <\/em><\/p>  \t\t  \t\t1:00-1:45 pm <strong>Workshop:<\/strong><em> <em> <\/em><\/em>  \t\t  \t\t<em><em> <\/em><\/em>  \t\t<p style=\"padding-left: 10px;\"><em><em>\u201a��Show Me the Money!\u201a��<\/em> <\/em>by Kristen Knight, Kynetx VP Product Management<\/p>  \t\t<p style=\"padding-left: 30px;\">Monetizing cross-site, context-sensitive apps, revenue models, VAR & Implementor business opportunities.<\/p>  \t\t  \t\t2:00-2:45 pm  <strong> Panel Discussion:<\/strong><em><em>  \t\t<\/em><\/em>  \t\t<p style=\"padding-left: 10px;\"><em><em><em> \u201a��The Contextual Future,\u201a��<\/em> <\/em><\/em>with Phil Windley, Kim Cameron, Paul Trevethick, Doc Searls, Craig Burton<\/p>  \t\t<p style=\"padding-left: 30px;\">How context and client-side focus changes the future of the Web.<\/p>  \t\t  \t\t3:00-3:45 pm <strong> End Note:<\/strong><em><em> <em> <\/em><\/em><\/em>  \t\t  \t\t<em><em><em> <\/em><\/em><\/em>  \t\t<p style=\"padding-left: 10px;\"><em><em><em>\u201a��Content is Dead.  Context is King.\u201a��<\/em><\/em><\/em> <a href=\"http://www.craigburton.com/?page_id=169\">by Craig Burton<\/a>, Novell co-founder & Industry Guru<\/p>  \t\t<p style=\"padding-left: 30px;\">What a Purpose-centric, contextual Future means for you.<\/p>  \t\t<\/div>  \t\t       <\/div>  \t\t    <\/div>  \t\t\t  \t\n ",
            "type": "here_doc"
         }],
         "state": "active"
      },
      {
         "actions": [{"action": {
            "args": [],
            "modifiers": null,
            "name": "noop",
            "source": null
         }}],
         "blocktype": "every",
         "callbacks": null,
         "cond": {
            "type": "bool",
            "val": "true"
         },
         "emit": "\n$K(\"form[name=f]\").after('<a href=\"http://www.kynetx.com\"><img src=\"http://k-misc.s3.amazonaws.com/random/K_Impact_logo.jpg\" alt=\"Kynetx Logo\" style=\"border: none; \" /><\/a>');            ",
         "foreach": [],
         "name": "googlehome",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": "http://www.google.com/(?!ig)",
            "type": "prim_event",
            "vars": []
         }},
         "state": "active"
      },
      {
         "actions": [{"action": {
            "args": [
               {
                  "type": "str",
                  "val": "Doc Searls"
               },
               {
                  "type": "var",
                  "val": "message_doc"
               }
            ],
            "modifiers": [
               {
                  "name": "width",
                  "value": {
                     "type": "str",
                     "val": "300px"
                  }
               },
               {
                  "name": "sticky",
                  "value": {
                     "type": "bool",
                     "val": "true"
                  }
               },
               {
                  "name": "opacity",
                  "value": {
                     "type": "str",
                     "val": "95"
                  }
               }
            ],
            "name": "notify",
            "source": null
         }}],
         "blocktype": "every",
         "callbacks": {"success": [{
            "attribute": "class",
            "trigger": {
               "action": "set",
               "domain": "ent",
               "name": "doc_done",
               "type": "persistent"
            },
            "type": "click",
            "value": "KOBJ_doc"
         }]},
         "cond": {
            "domain": "ent",
            "expr": {
               "type": "bool",
               "val": "true"
            },
            "ineq": "!=",
            "timeframe": "hours",
            "type": "persistent_ineq",
            "var": "doc_done",
            "within": {
               "type": "num",
               "val": 24
            }
         },
         "emit": "\n$K(\"#KOBJ_doc_enter\").live(\"click\",function(){     \t$K(\".KOBJ_error\").hide();  \tvar hasError = false;      \tvar emailReg = /^([\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4})?$/;    \tvar userName = $K(\"#enterDrawing [name=name]\").val();  \tvar userEmail = $K(\"#enterDrawing [name=email]\").val();    \tif(userEmail == '') {  \t\t$K(\"#KOBJ_doc_email\").after('<span class=\"KOBJ_error\">You forgot to enter your email!<\/span>');  \t\thasError = true;  \t} else if(!emailReg.test(userEmail)) {  \t\t$K(\"#KOBJ_doc_email\").after('<span class=\"KOBJ_error\">Enter a valid email!<\/span>');  \t\thasError = true;  \t}    \tif(userName == '') {  \t\t$K(\"#KOBJ_doc_name\").after('<span class=\"KOBJ_error\">You forgot to enter your name!<\/span>');  \t\thasError = true;  \t}      \tif(!hasError){\t  \t\t$K.getJSON(\"http://www.rarelds.com/impact.php?jsoncallback=?\", {email: userEmail, name: userName},  \t\t   \tfunction(data){  \t\t\t\tif(!data.error){  \t\t\t\t\t$K(\"#enterDrawing\").slideUp(\"normal\", function() {  \t\t\t\t\t\t$K(\"#enterDrawing\").before('<div id=\"KOBJ_doc_success\"><h1>Success<\/h1><p>You have successfully been entered.<\/p><\/div>');  \t\t\t\t\t\tsetTimeout(function(){$K(\"#KOBJ_doc_success\").parents(\".kGrowl-notification\").trigger(\"kGrowl.beforeClose\").animate({opacity: \"hide\"}, \"normal\", \"swing\", function(){$K(this).trigger(\"kGrowl.close\").remove();});},1000);  \t\t\t\t\t});  \t\t\t\t} else if(data.source == \"name\" && data.error) {  \t\t\t\t\t$K(\"#KOBJ-doc_name\").after('<span class=\"KOBJ_error\">'+data.msg+'<\/span>');  \t\t\t\t} else if(data.source == \"email\" && data.error) {  \t\t\t\t\t$K(\"#KOBJ_doc_email\").after('<span class=\"KOBJ_error\">'+data.msg+'<\/span>');  \t\t\t\t\tif(data.error == \"You've already entered\"){  \t\t\t\t\t\tsetTimeout(function(){$K(\"#KOBJ_doc_success\").parents(\".kGrowl-notification\").trigger(\"kGrowl.beforeClose\").animate({opacity: \"hide\"}, \"normal\", \"swing\", function(){$K(this).trigger(\"kGrowl.close\").remove();});},1000);  \t\t\t\t\t}  \t\t\t\t}  \t\t\t});  \t}  \treturn false;  });            ",
         "foreach": [],
         "name": "doc",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": ".*",
            "type": "prim_event",
            "vars": []
         }},
         "pre": [{
            "lhs": "message_doc",
            "rhs": " \n<div id=\"enterDrawing\">  \t\t<div id=\"KOBJ_doc_info\">  \t\t\t<p>  \t\t\t\tHello and welcome to the first Kynetx Impact Developer Conference! We know that throughout the next two days your world will be changed and you'll see how to start changing the world.<\/p>  \t\t\t<\/p>  \t\t\t<p>  \t\t\t\tThe first speaker on Wednesday is Doc Searls, author of <a style=\"color: #EBDCC7;\" href=\"http://www.cluetrain.com/\">The Cluetrain Manifesto<\/a>. For your enjoyment, we've purchased a copy of this book and are having a drawing. To enter, please provide your name and email address. Winners will be announced during the closing ceremony on Wednesday.  \t\t\t<\/p>  \t\t<form>          \t\t<div id=\"KOBJ_doc_name\">Name: <input type=\"text\" style=\"width: 196px; position: relative; left: -2px; margin: 10px;\" size=\"200\" name=\"name\"/><\/div>            \t\t<div id=\"KOBJ_doc_email\">Email: <input type=\"text\" style=\"width: 196px; margin: 10px;\" size=\"200\" name=\"email\"/><\/div>  \t\t<\/form>  \t\t<div class=\"KOBJ_doc\" id=\"KOBJ_doc_enter\" style=\"left: 20px; top: 10px;\">  \t\t\tsubmit  \t\t<\/div>  \t\t<div class=\"KOBJ_doc\" id=\"KOBJ_doc_no\" style=\"top: -50px; margin-top: 10px;\">  \t\t\tno thanks  \t\t<\/div>  \t<\/div>  \t\n ",
            "type": "here_doc"
         }],
         "state": "inactive"
      },
      {
         "actions": [{"action": {
            "args": [{
               "type": "str",
               "val": "#KOBJ_doc_no"
            }],
            "modifiers": null,
            "name": "close_notification",
            "source": null
         }}],
         "blocktype": "every",
         "callbacks": null,
         "cond": {
            "type": "bool",
            "val": "true"
         },
         "emit": null,
         "foreach": [],
         "name": "doc_close",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": ".*",
            "type": "prim_event",
            "vars": []
         }},
         "state": "inactive"
      },
      {
         "actions": [{"action": {
            "args": [
               {
                  "type": "str",
                  "val": "#logo"
               },
               {
                  "type": "str",
                  "val": "http:\\/\\/k-misc.s3.amazonaws.com/random/impact/google.gif"
               }
            ],
            "modifiers": null,
            "name": "replace_image_src",
            "source": null
         }}],
         "blocktype": "every",
         "callbacks": null,
         "cond": {
            "type": "bool",
            "val": "true"
         },
         "emit": null,
         "foreach": [],
         "name": "easter_egg_google",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": "(^http://www.google.com/$|^http://www.google.com/webhp?)",
            "type": "prim_event",
            "vars": []
         }},
         "state": "active"
      }
   ],
   "ruleset_name": "a41x74"
}
