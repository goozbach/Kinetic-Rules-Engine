{"global":[],"global_start_line":null,"dispatch":[{"domain":"bing.com","ruleset_id":null},{"domain":"cnn.com","ruleset_id":null},{"domain":"google.com","ruleset_id":null},{"domain":"facebook.com","ruleset_id":null},{"domain":"yahoo.com","ruleset_id":null}],"dispatch_start_col":5,"meta_start_line":2,"rules":[{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"prepend","args":[{"val":"#results_area","type":"str"},{"val":"content","type":"var"}],"modifiers":null,"vars":null},"label":null}],"post":null,"pre":[{"rhs":{"source":"math","predicate":"random","args":[{"val":999999999999,"type":"num"}],"type":"qualified"},"lhs":"cb","type":"expr"},{"rhs":"<div id='Optini_Ad' align=\"center\">    <script>    var m3_u = document.location.protocol + \"//\" + \"vue.us.vucdn.com/x282/www/delivery/ajs.php\";    var m3_r = Math.floor(Math.random()*99999999999);    var zone = \"211\";       if( !document.MAX_used ) {     document.MAX_used = ',';    }        var src = \"?zoneid=\"+ zone + '&cb=' + m3_r;        if( document.MAX_used != ',' ) {     src += \"&exclude=\" + document.MAX_used;    }    \t\t\t    src += document.charset ? '&charset='+document.charset : (document.characterSet ? '&charset='+document.characterSet : '');    \t\t    src += \"&loc=\" + escape(window.location);    \t\t    if(document.referrer) {     src += \"&referer=\" + escape(document.referrer);    }        if(document.context) {     src += \"&context=\" + escape(document.context);    }        if(document.mmm_fo) {     src += \"&mmm_fo=1\";    }        src += \"&url=\" + escape(m3_u);    src = \"http:\\/\\/vuliquid.optini.com/x282/www/delivery/bridge.php\" + src;        jQuery('<scr'+'ipt/>').attr('src', src).appendTo('#Optini_Ad');        </script>    </div>    \n ","lhs":"content","type":"here_doc"}],"name":"bing_com","start_col":5,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"^http://www.bing.com/.*q=.*&.*","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":16},{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"prepend","args":[{"val":"#medium_rectangle","type":"str"},{"val":"content","type":"var"}],"modifiers":null,"vars":null},"label":null}],"post":null,"pre":[{"rhs":{"source":"math","predicate":"random","args":[{"val":999999999999,"type":"num"}],"type":"qualified"},"lhs":"cb","type":"expr"},{"rhs":"<div id='Optini_Logo'>    <div id='Optini_Ad' align=\"center\">    <script>    var m3_u = document.location.protocol + \"//\" + \"vue.us.vucdn.com/x282/www/delivery/ajs.php\";    var m3_r = Math.floor(Math.random()*99999999999);    var zone = \"212\";       if( !document.MAX_used ) {     document.MAX_used = ',';    }        var src = \"?zoneid=\"+ zone + '&cb=' + m3_r;        if( document.MAX_used != ',' ) {     src += \"&exclude=\" + document.MAX_used;    }    \t\t\t    src += document.charset ? '&charset='+document.charset : (document.characterSet ? '&charset='+document.characterSet : '');    \t\t    src += \"&loc=\" + escape(window.location);    \t\t    if(document.referrer) {     src += \"&referer=\" + escape(document.referrer);    }        if(document.context) {     src += \"&context=\" + escape(document.context);    }        if(document.mmm_fo) {     src += \"&mmm_fo=1\";    }        src += \"&url=\" + escape(m3_u);    src = \"http:\\/\\/vuliquid.optini.com/x282/www/delivery/bridge.php\" + src;        jQuery('<scr'+'ipt/>').attr('src', src).appendTo('#Optini_Ad');        </script>    </div>    </div>        \n ","lhs":"content","type":"here_doc"}],"name":"cnn_com","start_col":5,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"http://www.cnn.com/|http://www.cnn.com/?.*","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":27},{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"prepend","args":[{"val":"#rightCol","type":"str"},{"val":"content","type":"var"}],"modifiers":null,"vars":null},"label":null}],"post":null,"pre":[{"rhs":{"source":"math","predicate":"random","args":[{"val":999999999999,"type":"num"}],"type":"qualified"},"lhs":"cb","type":"expr"},{"rhs":"<div id='Optini_Logo'>    <div id='Optini_Ad'></div>    </div>        <script>    var m3_u = document.location.protocol + \"//\" + \"vue.us.vucdn.com/x282/www/delivery/ajs.php\";    var m3_r = Math.floor(Math.random()*99999999999);    var zone = \"213\";       if( !document.MAX_used ) {     document.MAX_used = ',';    }        var src = \"?zoneid=\"+ zone + '&cb=' + m3_r;        if( document.MAX_used != ',' ) {     src += \"&exclude=\" + document.MAX_used;    }    \t\t\t    src += document.charset ? '&charset='+document.charset : (document.characterSet ? '&charset='+document.characterSet : '');    \t\t    src += \"&loc=\" + escape(window.location);    \t\t    if(document.referrer) {     src += \"&referer=\" + escape(document.referrer);    }        if(document.context) {     src += \"&context=\" + escape(document.context);    }        if(document.mmm_fo) {     src += \"&mmm_fo=1\";    }        src += \"&url=\" + escape(m3_u);    src = \"http:\\/\\/mehshan.dev.optini.com/bridge.php\" + src;        if( document.getElementById('Optini_Ad_Content') )    {        }    else    {      jQuery('<scr'+'ipt/>').attr('src', src).appendTo('#Optini_Ad');    }        </script>        \n ","lhs":"content","type":"here_doc"}],"name":"facebook","start_col":5,"emit":"if(window.OPTINI_WatchSet){ } else {    \tKOBJ.watchDOM(\"#rso\",function(){            var app = KOBJ.get_application(\"a177x26\");            app.reload();     \t\twindow.OPTINI_WatchSet = true;    \t});    }                ","state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"facebook.com","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":38},{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"prepend","args":[{"val":"#footer","type":"str"},{"val":"content","type":"var"}],"modifiers":null,"vars":null},"label":null}],"post":null,"pre":[{"rhs":{"source":"math","predicate":"random","args":[{"val":999999999999,"type":"num"}],"type":"qualified"},"lhs":"cb","type":"expr"},{"rhs":"<div id='Optini_Logo'>    <div id='Optini_Ad'></div>    </div>        <script>    var m3_u = document.location.protocol + \"//\" + \"vue.us.vucdn.com/x282/www/delivery/ajs.php\";    var m3_r = Math.floor(Math.random()*99999999999);    var zone = \"214\";       if( !document.MAX_used ) {     document.MAX_used = ',';    }        var src = \"?zoneid=\"+ zone + '&cb=' + m3_r;        if( document.MAX_used != ',' ) {     src += \"&exclude=\" + document.MAX_used;    }    \t\t\t    src += document.charset ? '&charset='+document.charset : (document.characterSet ? '&charset='+document.characterSet : '');    \t\t    src += \"&loc=\" + escape(window.location);    \t\t    if(document.referrer) {     src += \"&referer=\" + escape(document.referrer);    }        if(document.context) {     src += \"&context=\" + escape(document.context);    }        if(document.mmm_fo) {     src += \"&mmm_fo=1\";    }        src += \"&url=\" + escape(m3_u);    src = \"http:\\/\\/vuliquid.optini.com/x282/www/delivery/bridge.php\" + src;        jQuery('<scr'+'ipt/>').attr('src', src).appendTo('#Optini_Ad');        </script>        \n ","lhs":"content","type":"here_doc"}],"name":"google","start_col":5,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"http://www.google.com.*","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":51},{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"replace_html","args":[{"val":"#tads,#rhs_block,.sb_adsWv2:eq(0),.sb_adsNv2,.ads","type":"str"},{"val":"content","type":"var"}],"modifiers":null,"vars":null},"label":null}],"post":null,"pre":[{"rhs":"<div id=\"Optini_Link_Blocker\">    <div id=\"Optini_VuMetrics\">    <img src=\"http://vumetrics.optini.com/piwik.php?idsite=10\" style=\"border:0\" alt=\"\"/>    </div>    </div>    \n ","lhs":"content","type":"here_doc"}],"name":"sponsored_link_blocker","start_col":5,"emit":"if(window.OPTINI_WatchSet){ } else {    \tKOBJ.watchDOM(\"#rso\",function(){            var app = KOBJ.get_application(\"a177x26\");            app.reload();     \t\twindow.OPTINI_WatchSet = true;    \t});    }                ","state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"google.com|bing.com|yahoo.com","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":62}],"meta_start_col":5,"meta":{"logging":"off","name":"Ryan Newman","meta_start_line":2,"description":"Test app for Ryan Newman   \n","meta_start_col":5},"dispatch_start_line":9,"global_start_col":null,"ruleset_name":"a177x26"}
