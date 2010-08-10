{"global":[{"source":"http://analytx.kobj.net:5000/data/kns_totals","name":"analytx","type":"datasource","datatype":"JSON","cachable":0},{"source":"http://pipes.yahoo.com/pipes/pipe.run","name":"yahoo_pipes","type":"datasource","datatype":"JSON","cachable":0},{"source":"https://accounts.kynetx.com/api/0.1/stats","name":"accounts","type":"dataset","datatype":"JSON","cachable":0},{"source":"http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20html%20where%20url%3D%22http%3A%2F%2Fitsoktomakemistakes.com%2Fdevex_newest_users.html%22%20and%20xpath%3D'%2F%2Fdiv%5B%40class%3D%22user-info%22%5D%2F%2Fdiv%5B%40class%3D%22user-details%22%5D%2F%2Fa'%20limit%205&format=json&callback=","name":"devex_latest_users","type":"dataset","datatype":"JSON","cachable":{"period":"minutes","value":"15"}},{"source":"http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20html%20where%20url%3D%22http%3A%2F%2Fitsoktomakemistakes.com%2Fdevex_newest_questions.html%22%20and%20xpath%3D'%2F%2Fa%5B%40class%3D%22question-hyperlink%22%5D'%20limit%204&format=json&diagnostics=false&callback=","name":"devex_latest_questions","type":"dataset","datatype":"JSON","cachable":{"period":"minutes","value":"5"}},{"content":"#Kynetx_conference_content * {      margin: 0;      padding: 0;      border: 0;      outline: 0;      font-size:24px;      font-size: 100%;      font-weight:normal;      vertical-align: baseline;      background: transparent;      color: #000;      font-family:arial,sans-serif;      direction: ltr;      line-height: 1;      letter-spacing: normal;      text-align: left;       text-decoration: none;      text-indent: 0;      text-shadow: none;      text-transform: none;      vertical-align: baseline;      white-space: normal;      word-spacing: normal;      font: normal normal normal medium/1 sans-serif ;      list-style: none;      clear: none;    }        #kpi_header { font-size: 30px; color: #184a6f; padding-left: 5px }    #Kynetx_conference_content { border: solid 2px #184a6f }    .kpi_metric, .kpi_metric * { float: left }    .kpi_metric { width: 100% }    .kpi_metric h3 { width: 195px; margin: 0; padding-top:17px !important;}    .kpi_metric img { margin-top: -20px}    .media_updates { padding-left: 12px }    .media_updates h3 { padding-top: 0 !important}    .media_updates img { margin: 0; padding: 6px 0 0 12px !important }    .img_wrap { width: 50px; height: 45px}    .pad_top { padding-top: 13px !important }    #Kynetx_conference_content a { color:#0A94D6 !important }    .kpi_metric p { width: 195px }    .unanswered ul li a { font-size: 12px !important}    .full { width: 100% !important; padding-left: 14px !important }    ","type":"css"}],"global_start_line":18,"dispatch":[{"domain":"facebook.com","ruleset_id":null},{"domain":"google.com","ruleset_id":null},{"domain":"kynetx.com","ruleset_id":null},{"domain":"twitter.com","ruleset_id":null},{"domain":"stackexchange.com","ruleset_id":null},{"domain":"fogbugz.com","ruleset_id":null}],"dispatch_start_col":5,"meta_start_line":2,"rules":[{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"noop","args":[],"modifiers":null},"label":null}],"post":null,"pre":[{"rhs":{"source":"datasource","predicate":"analytx","args":[{"val":[{"rhs":{"val":"yesterday","type":"str"},"lhs":"rel_range"},{"rhs":{"val":"kynetx_all","type":"str"},"lhs":"ruleset_id"},{"rhs":{"val":"rse","type":"str"},"lhs":"kpi"},{"rhs":{"val":"day","type":"str"},"lhs":"temporal"},{"rhs":{"val":"table","type":"str"},"lhs":"format"}],"type":"hashraw"}],"type":"qualified"},"lhs":"an","type":"expr"},{"rhs":{"obj":{"val":"an","type":"var"},"args":[{"val":"$[0].RSE","type":"str"}],"name":"pick","type":"operator"},"lhs":"rse","type":"expr"},{"rhs":{"source":"datasource","predicate":"analytx","args":[{"val":[{"rhs":{"val":"1-7","type":"str"},"lhs":"num_range"},{"rhs":{"val":"kynetx_all","type":"str"},"lhs":"ruleset_id"},{"rhs":{"val":"rse","type":"str"},"lhs":"kpi"},{"rhs":{"val":"day","type":"str"},"lhs":"temporal"},{"rhs":{"val":"table","type":"str"},"lhs":"format"}],"type":"hashraw"}],"type":"qualified"},"lhs":"rse_spark","type":"expr"},{"rhs":{"source":"datasource","predicate":"yahoo_pipes","args":[{"val":[{"rhs":{"val":"c1eba3311827f4f16bf847f2ed09b0d1","type":"str"},"lhs":"_id"},{"rhs":{"val":"json","type":"str"},"lhs":"_render"}],"type":"hashraw"}],"type":"qualified"},"lhs":"kpi","type":"expr"},{"rhs":{"obj":{"val":"kpi","type":"var"},"args":[{"val":"$.value.title","type":"str"}],"name":"pick","type":"operator"},"lhs":"dash_title","type":"expr"},{"rhs":{"obj":{"val":"kpi","type":"var"},"args":[{"val":"$.count","type":"str"}],"name":"pick","type":"operator"},"lhs":"dash_item_count","type":"expr"},{"rhs":{"obj":{"val":"kpi","type":"var"},"args":[{"val":"$.value.items","type":"str"}],"name":"pick","type":"operator"},"lhs":"dash_items","type":"expr"},{"rhs":{"obj":{"val":"kpi","type":"var"},"args":[{"val":"$.value.items.[0].goal","type":"str"}],"name":"pick","type":"operator"},"lhs":"rse_goal","type":"expr"},{"rhs":{"args":[{"val":100,"type":"num"},{"args":[{"val":"rse","type":"var"},{"val":"rse_goal","type":"var"}],"type":"prim","op":"/"}],"type":"prim","op":"*"},"lhs":"rsep","type":"expr"},{"rhs":{"args":[{"val":"rsep","type":"var"},{"val":100,"type":"num"}],"type":"prim","op":"*"},"lhs":"rsept","type":"expr"},{"rhs":{"obj":{"val":"accounts","type":"var"},"args":[{"val":"$.vars","type":"str"}],"name":"pick","type":"operator"},"lhs":"var_actual","type":"expr"},{"rhs":{"obj":{"val":"kpi","type":"var"},"args":[{"val":"$.value.items.[1].goal","type":"str"}],"name":"pick","type":"operator"},"lhs":"var_goal","type":"expr"},{"rhs":{"args":[{"val":100,"type":"num"},{"args":[{"val":"var_actual","type":"var"},{"val":"var_goal","type":"var"}],"type":"prim","op":"/"}],"type":"prim","op":"*"},"lhs":"varp","type":"expr"},{"rhs":{"obj":{"val":"accounts","type":"var"},"args":[{"val":"$.accounts","type":"str"}],"name":"pick","type":"operator"},"lhs":"account_actual","type":"expr"},{"rhs":{"obj":{"val":"kpi","type":"var"},"args":[{"val":"$.value.items.[3].goal","type":"str"}],"name":"pick","type":"operator"},"lhs":"account_goal","type":"expr"},{"rhs":{"args":[{"val":100,"type":"num"},{"args":[{"val":"account_actual","type":"var"},{"val":"account_goal","type":"var"}],"type":"prim","op":"/"}],"type":"prim","op":"*"},"lhs":"accountp","type":"expr"},{"rhs":{"obj":{"val":"kpi","type":"var"},"args":[{"val":"$.value.items.[4].goal","type":"str"}],"name":"pick","type":"operator"},"lhs":"apps_goal","type":"expr"},{"rhs":{"obj":{"val":"kpi","type":"var"},"args":[{"val":"$.value.items.[4].actual","type":"str"}],"name":"pick","type":"operator"},"lhs":"apps_actual","type":"expr"},{"rhs":{"args":[{"val":100,"type":"num"},{"args":[{"val":"apps_actual","type":"var"},{"val":"apps_goal","type":"var"}],"type":"prim","op":"/"}],"type":"prim","op":"*"},"lhs":"appsp","type":"expr"},{"rhs":{"source":"datasource","predicate":"yahoo_pipes","args":[{"val":[{"rhs":{"val":"b00c5cc14f05fcb64c41a30a5b9f49d4","type":"str"},"lhs":"_id"},{"rhs":{"val":"json","type":"str"},"lhs":"_render"}],"type":"hashraw"}],"type":"qualified"},"lhs":"stack_feed","type":"expr"},{"rhs":{"obj":{"val":"stack_feed","type":"var"},"args":[{"val":"$.value.items","type":"str"}],"name":"pick","type":"operator"},"lhs":"stack_items","type":"expr"},{"rhs":{"source":"datasource","predicate":"yahoo_pipes","args":[{"val":[{"rhs":{"val":"ea795214a1defa5ab087aca3c0a3ee35","type":"str"},"lhs":"_id"},{"rhs":{"val":"json","type":"str"},"lhs":"_render"}],"type":"hashraw"}],"type":"qualified"},"lhs":"twitter_search","type":"expr"},{"rhs":{"obj":{"val":"twitter_search","type":"var"},"args":[{"val":"$.count","type":"str"}],"name":"pick","type":"operator"},"lhs":"tweet_count","type":"expr"},{"rhs":{"obj":{"val":"accounts","type":"var"},"args":[{"val":"$.accounts","type":"str"}],"name":"pick","type":"operator"},"lhs":"account_stats","type":"expr"},{"rhs":{"obj":{"val":"devex_latest_users","type":"var"},"args":[{"val":"$.query.results.a[0].content","type":"str"}],"name":"pick","type":"operator"},"lhs":"user1","type":"expr"},{"rhs":{"obj":{"val":"devex_latest_users","type":"var"},"args":[{"val":"$.query.results.a[1].content","type":"str"}],"name":"pick","type":"operator"},"lhs":"user2","type":"expr"},{"rhs":{"obj":{"val":"devex_latest_users","type":"var"},"args":[{"val":"$.query.results.a[2].content","type":"str"}],"name":"pick","type":"operator"},"lhs":"user3","type":"expr"},{"rhs":{"obj":{"val":"devex_latest_users","type":"var"},"args":[{"val":"$.query.results.a[3].content","type":"str"}],"name":"pick","type":"operator"},"lhs":"user4","type":"expr"},{"rhs":{"obj":{"val":"devex_latest_users","type":"var"},"args":[{"val":"$.query.results.a[4].content","type":"str"}],"name":"pick","type":"operator"},"lhs":"user5","type":"expr"},{"rhs":{"obj":{"val":"devex_latest_questions","type":"var"},"args":[{"val":"$.query.results.a[0]","type":"str"}],"name":"pick","type":"operator"},"lhs":"q1","type":"expr"},{"rhs":{"obj":{"val":"devex_latest_questions","type":"var"},"args":[{"val":"$.query.results.a[1]","type":"str"}],"name":"pick","type":"operator"},"lhs":"q2","type":"expr"},{"rhs":{"obj":{"val":"devex_latest_questions","type":"var"},"args":[{"val":"$.query.results.a[2]","type":"str"}],"name":"pick","type":"operator"},"lhs":"q3","type":"expr"},{"rhs":{"obj":{"val":"devex_latest_questions","type":"var"},"args":[{"val":"$.query.results.a[3]","type":"str"}],"name":"pick","type":"operator"},"lhs":"q4","type":"expr"},{"rhs":"<div style=\"width: 250px; background: #fff; z-index: 9000;\" id=\"Kynetx_conference_content\" class=\"KOBJ_reset\">  \t<a class=\"handle\" href=\"#\">Content</a>  \t<h2 class=\"left\" id=\"kpi_header\">#{dash_title}</h2>  \t<div class=\"kpi_metric\"><img src=\"http://chart.apis.google.com/chart?chs=50x50&cht=gom&chd=t:#{100*rse/rse_goal}\"/><h3>RSE/day</h3><img class=\"kpi_sparkline\" src=\"#\"/><p>#{rse} of #{rse_goal}</p></div>  \t<div class=\"kpi_metric\"><img src=\"http://chart.apis.google.com/chart?chs=50x50&cht=gom&chd=t:#{varp}\"/><h3>VAR</h3><p>#{var_actual} of #{var_goal}</p></div>  \t<div class=\"kpi_metric\"><img src=\"http://chart.apis.google.com/chart?chs=50x50&cht=gom&chd=t:#{accountp}\"/><h3>Signups</h3><p>#{account_actual} of #{account_goal}</p></div>  \t<div class=\"kpi_metric\"><img src=\"http://chart.apis.google.com/chart?chs=50x50&cht=gom&chd=t:#{appsp}\"/><h3>Live Developer Apps</h3><p>#{apps_actual} of #{apps_goal}</p></div>  \t<div class=\"kpi_metric media_updates pad_top\" ><div class=\"img_wrap\"><img src=\"http://kynetx.michaelgrace.org/kynetx_stack.jpg\"/></div><h3>Kynetx.stack updates</h3><p id=\"stack_items\">changes</p></div>  \t<div class=\"kpi_metric media_updates\" ><div class=\"img_wrap\"><img src=\"http://kynetx.michaelgrace.org/kynetx_stack.jpg\"/></div><h3>Latest Devex Users</h3><p id=\"stack_items\"><a href=\"http://devex.kynetx.com/users?tab=newest\">#{user1}, #{user2}, #{user3}, #{user4}, #{user5}</a></p></div>  \t<div class=\"kpi_metric media_updates unanswered  pad_top\" ><h3 class=\"full\">Unanswered Devex Questions</h3>  \t\t<ul>  \t\t\t<li><a href=\"http://devex.kynetx.com#{q1.href}\">#{q1.content}</a></li>  \t\t\t<li><a href=\"http://devex.kynetx.com#{q2.href}\">#{q2.content}</a></li>  \t\t\t<li><a href=\"http://devex.kynetx.com#{q3.href}\">#{q3.content}</a></li>  \t\t\t<li><a href=\"http://devex.kynetx.com#{q4.href}\">#{q4.content}</a></li>\t\t\t  \t\t</ul></div>  \t<div class=\"kpi_metric media_updates  pad_top\"><div class=\"img_wrap\"><img src=\"http://kynetx.michaelgrace.org/twitter_small.jpg\"/></div><h3>Twitter</h3><p><a target=\"_blank\" href=\"http://search.twitter.com/search?q=kynetx\">#{tweet_count} tweets since yesterday</a></p></div>    </div>  \t\t\t  \t\n ","lhs":"msg","type":"here_doc"}],"name":"pullout_dash","start_col":5,"emit":"(function($){      $.fn.tabSlideOut = function(callerSettings) {          var settings = $.extend({              tabHandle: '.handle',              speed: 300,               action: 'click',              tabLocation: 'left',              topPos: '200px',              leftPos: '20px',              fixedPosition: false,              positioning: 'absolute',              pathToTabImage: null,              imageHeight: null,              imageWidth: null,              onLoadSlideOut: false                                 }, callerSettings||{});            settings.tabHandle = $(settings.tabHandle);          var obj = this;          if (settings.fixedPosition === true) {              settings.positioning = 'fixed';          } else {              settings.positioning = 'absolute';          }                            if (document.all && !window.opera && !window.XMLHttpRequest) {              settings.positioning = 'absolute';          }                                                  if (settings.pathToTabImage != null) {              settings.tabHandle.css({              'background' : 'url('+settings.pathToTabImage+') no-repeat',              'width' : settings.imageWidth,              'height': settings.imageHeight              });          }                    settings.tabHandle.css({               'display': 'block',              'textIndent' : '-99999px',              'outline' : 'none',              'position' : 'absolute'          });                    obj.css({              'line-height' : '1',              'position' : settings.positioning          });                      var properties = {                      containerWidth: parseInt(obj.outerWidth(), 10) + 'px',                      containerHeight: parseInt(obj.outerHeight(), 10) + 'px',                      tabWidth: parseInt(settings.tabHandle.outerWidth(), 10) + 'px',                      tabHeight: parseInt(settings.tabHandle.outerHeight(), 10) + 'px'                  };                    if(settings.tabLocation === 'top' || settings.tabLocation === 'bottom') {              obj.css({'left' : settings.leftPos});              settings.tabHandle.css({'right' : 0});          }                    if(settings.tabLocation === 'top') {              obj.css({'top' : '-' + properties.containerHeight});              settings.tabHandle.css({'bottom' : '-' + properties.tabHeight});          }            if(settings.tabLocation === 'bottom') {              obj.css({'bottom' : '-' + properties.containerHeight, 'position' : 'fixed'});              settings.tabHandle.css({'top' : '-' + properties.tabHeight});                        }                    if(settings.tabLocation === 'left' || settings.tabLocation === 'right') {              obj.css({                  'height' : properties.containerHeight,                  'top' : settings.topPos              });                            settings.tabHandle.css({'top' : -1});          }                    if(settings.tabLocation === 'left') {              obj.css({ 'left': '-' + properties.containerWidth});              settings.tabHandle.css({'right' : '-' + properties.tabWidth});          }            if(settings.tabLocation === 'right') {              obj.css({ 'right': '-' + properties.containerWidth});              settings.tabHandle.css({'left' : '-' + properties.tabWidth});                            $('html').css('overflow-x', 'hidden');          }                              settings.tabHandle.click(function(event){              event.preventDefault();          });                    var slideIn = function() {                            if (settings.tabLocation === 'top') {                  obj.animate({top:'-' + properties.containerHeight}, settings.speed).removeClass('open');              } else if (settings.tabLocation === 'left') {                  obj.animate({left: '-' + properties.containerWidth}, settings.speed).removeClass('open');              } else if (settings.tabLocation === 'right') {                  obj.animate({right: '-' + properties.containerWidth}, settings.speed).removeClass('open');              } else if (settings.tabLocation === 'bottom') {                  obj.animate({bottom: '-' + properties.containerHeight}, settings.speed).removeClass('open');              }                            };                    var slideOut = function() {                            if (settings.tabLocation == 'top') {                  obj.animate({top:'-3px'},  settings.speed).addClass('open');              } else if (settings.tabLocation == 'left') {                  obj.animate({left:'-3px'},  settings.speed).addClass('open');              } else if (settings.tabLocation == 'right') {                  obj.animate({right:'-3px'},  settings.speed).addClass('open');              } else if (settings.tabLocation == 'bottom') {                  obj.animate({bottom:'-3px'},  settings.speed).addClass('open');              }          };            var clickScreenToClose = function() {              obj.click(function(event){                  event.stopPropagation();              });                            $(document).click(function(){                  slideIn();              });          };                    var clickAction = function(){              settings.tabHandle.click(function(event){                  if (obj.hasClass('open')) {                      slideIn();                  } else {                      slideOut();                  }              });                            clickScreenToClose();          };                    var hoverAction = function(){              obj.hover(                  function(){                      slideOut();                  },                                    function(){                      slideIn();                  });                                    settings.tabHandle.click(function(event){                      if (obj.hasClass('open')) {                          slideIn();                      }                  });                  clickScreenToClose();                            };                    var slideOutOnLoad = function(){              slideIn();              setTimeout(slideOut, 500);          };                            if (settings.action === 'click') {              clickAction();          }                    if (settings.action === 'hover') {              hoverAction();          }                    if (settings.onLoadSlideOut) {              slideOutOnLoad();          };                };  })($K);      if(!KOBJ.conference){  $K(\"body\").append(msg);    $K('#Kynetx_conference_content').tabSlideOut({tabHandle: '.handle','pathToTabImage':'http:\\/\\/kynetx.michaelgrace.org\\/analytx.jpg',imageHeight: '125px',imageWidth: '36px',tabLocation: 'right',speed: 300,action: 'click',topPos: '100px',fixedPosition: true});    KOBJ.conference = true;            $K(\"#stack_items\").replaceWith(\"<p><a target='_blank' href='http://kynetx.stackexchange.com'>\" + stack_items.length + \" updates since yesterday.</a></p>\");        }            ","state":"active","callbacks":{"success":[{"attribute":"class","trigger":null,"value":"handle","type":"click"}],"failure":null},"pagetype":{"event_expr":{"pattern":".*","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":26}],"meta_start_col":5,"meta":{"logging":"off","name":"KPI Dash w/out reset","meta_start_line":2,"author":"Mike Grace","description":"showing effects of css reset     \n","meta_start_col":5},"dispatch_start_line":10,"global_start_col":5,"ruleset_name":"a60x51"}
