{"global":[{"source":"http://www.confettiantiques.com/oursites.php?searchTerms=","name":"yp","type":"datasource","datatype":"JSON","cachable":{"period":"seconds","value":"1"}},{"content":"#YP_div { width: auto; margin-bottom: 10px; position: relative; bottom: 10px; }        #YP_main { width: auto; margin-left: 15px; margin-bottom: 10px; margin-top: 30px; }        #YP_main_bing { width: auto; margin-bottom: 10px; }        .YP_item { width: 80%; font-family: Arial, Helvetica, sans-serif; font-size: 11px;  float: left; border-right: 1px solid #CCCCCC; border-left: 1px solid #CCCCCC; border-bottom: 1px solid #CCCCCC; }        .YP_item_google { width: 67%; font-family: Arial, Helvetica, sans-serif; font-size: 11px;  float: left; border-right: 1px solid #CCCCCC; border-left: 1px solid #CCCCCC; border-bottom: 1px solid #CCCCCC; }        .YP_item_bing { width: 99.7%; font-family: Arial, Helvetica, sans-serif; font-size: 11px;  float: left; border-right: 1px solid #CCCCCC; border-left: 1px solid #CCCCCC; border-bottom: 1px solid #CCCCCC; }        .YP_title { font-size: 15px; padding-bottom:5px; }        .YP_info { float: left; padding: 10px; margin-right: 40px; width: 250px; }        .YP_info_google { float: left; padding: 10px; margin-right: 40px; width: 250px; }        .YP_phone { font-size: 12px; margin-right: 25px; padding-top: 10px; }        .YP_rating { float: left; padding: 10px; margin-right: 25px; }        .YP_gray { color: #ABABAB; }        div.YP_img { float: right; padding: 10px; }        img.YP_img {  }        #YP_logo { width: 80.2%; }        #YP_logo_google { width: 67.2%; }        #YP_logo_bing { width: 100%; }            ","type":"css"}],"global_start_line":14,"dispatch":[{"domain":"google.com","ruleset_id":null},{"domain":"yahoo.com","ruleset_id":null},{"domain":"search.yahoo.com","ruleset_id":null},{"domain":"bing.com","ruleset_id":null},{"domain":"ask.com","ruleset_id":null}],"dispatch_start_col":5,"meta_start_line":2,"rules":[{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"noop","args":[],"modifiers":null},"label":null}],"post":null,"pre":[{"rhs":{"source":"datasource","predicate":"yp","args":[{"val":"searchTerms","type":"var"}],"type":"qualified"},"lhs":"jsonResults","type":"expr"}],"name":"yp_google","start_col":5,"emit":"var resultsToTest = $K(jsonResults);    toHeight = (125 * resultsToTest.length) - (20 * (resultsToTest.length-1));    Appendable = '<div id=\"YP_div\"><div id=\"YP_main\" style=\"height: '+toHeight+'px\"><div id=\"YP_logo_google\" style=\"background-color:#171717; \"><a href=\"http://www.yp.com\"><img src=\"http://www.frameaction.com/plexpages/images/headerAdBloxYellowPgs.jpg\" border=\"0\" alt=\"Yellow Pages\" /></a></div></div></div>';    \tif(resultsToTest.length) {    \t\tif( $K(\"#mbEnd\").length) {  \t\t\t$K(\"#mbEnd\").after(Appendable);  \t\t} else if ( $K(\"#res\").length ) {  \t\t\t$K(\"#res\").before(Appendable);  \t\t}  \t\t  \t\t\t  \t      \t\tresultsToTest.each(function() {  \t\t\tvar row = this;  \t\t\tvar title = row.title;  \t\t\tvar address = row.address;  \t\t\tvar imgUrl = row.imgUrl;  \t\t\tvar phone = row.phone;  \t\t\tvar linkUrl = row.link;  \t\t\tvar append = '<div class=\"YP_item_google\"><div class=\"YP_info_google\"><div class=\"YP_title\"><a href=\"'+linkUrl+'\" target=\"_blank\" class=\"YP_link\">'+title+'</a></div>'+address+' <a href=\"'+linkUrl+'\" target=\"_blank\" >Map</a><br /><div class=\"YP_phone\"><strong>'+phone+'</strong></div></div><div class=\"YP_rating\"><strong>Be the first to review</strong><br /><a href=\"'+linkUrl+'\" target=\"_blank\"><strong>Rate It</strong></a> | <span class=\"YP_gray\"><strong>Read Reviews</strong></span><br /><div style=\"padding-top:10px\"><a href=\"'+linkUrl+'\" target=\"_blank\" class=\"YP_link\">Improve this listing</a></div></div><div class=\"YP_img\"><a href=\"'+linkUrl+'\" target=\"_blank\"><img class=\"YP_img\" src=\"'+imgUrl+'\" border=\"0\" alt=\"'+title+'\" /></a></div></div>';  \t\t  \t\t\t  \t\t\t$K(\"#YP_logo_google\").after(append);  \t\t});  \t}\t                ","state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"google.com/search.*(&|\\?)q=([^&]*)&","legacy":1,"type":"prim_event","vars":["foo","searchTerms"],"op":"pageview"},"foreach":[]},"start_line":18},{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"noop","args":[],"modifiers":null},"label":null}],"post":null,"pre":[{"rhs":{"source":"datasource","predicate":"yp","args":[{"val":"searchTerms","type":"var"}],"type":"qualified"},"lhs":"jsonResults","type":"expr"}],"name":"yp_yahoo","start_col":5,"emit":"var resultsToTest = $K(jsonResults);    toHeight = (125 * resultsToTest.length) - (20 * (resultsToTest.length-1));    Appendable = '<div id=\"YP_div\"><div id=\"YP_main\" style=\"min-width: 800px; height: '+toHeight+'px\"><div id=\"YP_logo\" style=\"background-color:#171717; \"><a href=\"http://www.yp.com\"><img src=\"http://www.frameaction.com/plexpages/images/headerAdBloxYellowPgs.jpg\" border=\"0\" alt=\"Yellow Pages\" /></a></div></div></div>';    \tif(resultsToTest.length) {  \t\tif( $K(\".bbox:eq(0)\").length ) {  \t\t\t$K(\".bbox:eq(0)\").after(Appendable);  \t\t} else if( $K(\"#main\").length) {  \t\t\t$K(\"#main\").prepend(Appendable);  \t\t}  \t\t  \t\t\t  \t      \t\tresultsToTest.each(function() {  \t\t\tvar row = this;  \t\t\tvar title = row.title;  \t\t\tvar address = row.address;  \t\t\tvar imgUrl = row.imgUrl;  \t\t\tvar phone = row.phone;  \t\t\tvar linkUrl = row.link;  \t\t\tvar append = '<div class=\"YP_item\"><div class=\"YP_info\"><div class=\"YP_title\"><a href=\"'+linkUrl+'\" target=\"_blank\" class=\"YP_link\">'+title+'</a></div>'+address+' <a href=\"'+linkUrl+'\" target=\"_blank\" >Map</a><br /><div class=\"YP_phone\"><strong>'+phone+'</strong></div></div><div class=\"YP_rating\"><strong>Be the first to review</strong><br /><a href=\"'+linkUrl+'\" target=\"_blank\"><strong>Rate It</strong></a> | <span class=\"YP_gray\"><strong>Read Reviews</strong></span><br /><div style=\"padding-top:10px\"><a href=\"'+linkUrl+'\" target=\"_blank\" class=\"YP_link\">Improve this listing</a></div></div><div class=\"YP_img\"><a href=\"'+linkUrl+'\" target=\"_blank\"><img class=\"YP_img\" src=\"'+imgUrl+'\" border=\"0\" alt=\"'+title+'\" /></a></div></div>';  \t\t  \t\t\t  \t\t\t$K(\"#YP_logo\").after(append);  \t\t});  \t}\t                ","state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"yahoo.com/search.*(&|\\?)p=([^&]*)","legacy":1,"type":"prim_event","vars":["foo","searchTerms"],"op":"pageview"},"foreach":[]},"start_line":28},{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"noop","args":[],"modifiers":null},"label":null}],"post":null,"pre":[{"rhs":{"source":"datasource","predicate":"yp","args":[{"val":"searchTerms","type":"var"}],"type":"qualified"},"lhs":"jsonResults","type":"expr"}],"name":"yp_bing","start_col":5,"emit":"var resultsToTest = $K(jsonResults);    toHeight = (125 * resultsToTest.length) - (20 * (resultsToTest.length-1));    Appendable = '<div id=\"YP_div\"><div id=\"YP_main_bing\" style=\"height: '+toHeight+'px\"><div id=\"YP_logo_bing\" style=\"background-color:#171717; \"><a href=\"http://www.yp.com\"><img src=\"http://www.frameaction.com/plexpages/images/headerAdBloxYellowPgs.jpg\" border=\"0\" alt=\"Yellow Pages\" /></a></div></div></div>';    \tif(resultsToTest.length) {  \t\tif( $K(\"div.sb_ph\").length) {  \t\t\t$K(\"div.sb_ph\").after(Appendable);  \t\t}  \t\t  \t\t\t  \t      \t\tresultsToTest.each(function() {  \t\t\tvar row = this;  \t\t\tvar title = row.title;  \t\t\tvar address = row.address;  \t\t\tvar imgUrl = row.imgUrl;  \t\t\tvar phone = row.phone;  \t\t\tvar linkUrl = row.link;  \t\t\tvar append = '<div class=\"YP_item_bing\"><div class=\"YP_info\"><div class=\"YP_title\"><a href=\"'+linkUrl+'\" target=\"_blank\" class=\"YP_link\">'+title+'</a></div>'+address+' <a href=\"'+linkUrl+'\" target=\"_blank\" >Map</a><br /><div class=\"YP_phone\"><strong>'+phone+'</strong></div></div><div class=\"YP_rating\"><strong>Be the first to review</strong><br /><a href=\"'+linkUrl+'\" target=\"_blank\"><strong>Rate It</strong></a> | <span class=\"YP_gray\"><strong>Read Reviews</strong></span><br /><div style=\"padding-top:10px\"><a href=\"'+linkUrl+'\" target=\"_blank\" class=\"YP_link\">Improve this listing</a></div></div><div class=\"YP_img\"><a href=\"'+linkUrl+'\" target=\"_blank\"><img class=\"YP_img\" src=\"'+imgUrl+'\" border=\"0\" alt=\"'+title+'\" /></a></div></div>';  \t\t  \t\t\t  \t\t\t$K(\"#YP_logo_bing\").after(append);  \t\t});  \t}\t                ","state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"bing.com/search.*(&|\\?)q=([^&]*)","legacy":1,"type":"prim_event","vars":["foo","searchTerms"],"op":"pageview"},"foreach":[]},"start_line":38},{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"noop","args":[],"modifiers":null},"label":null}],"post":null,"pre":[{"rhs":{"source":"datasource","predicate":"yp","args":[{"val":"searchTerms","type":"var"}],"type":"qualified"},"lhs":"jsonResults","type":"expr"}],"name":"yp_ask","start_col":5,"emit":"var resultsToTest = $K(jsonResults);    toHeight = (125 * resultsToTest.length) - (20 * (resultsToTest.length-1));    Appendable = '<div id=\"YP_div\"><div id=\"YP_main\" style=\"margin-left: 35px; min-width: 800px; height: '+toHeight+'px\"><div id=\"YP_logo\" style=\"background-color:#171717; \"><a href=\"http://www.yp.com\"><img src=\"http://www.frameaction.com/plexpages/images/headerAdBloxYellowPgs.jpg\" border=\"0\" alt=\"Yellow Pages\" /></a></div></div></div>';    \tif(resultsToTest.length) {    \t\tif( $K(\"div.KonaBody:eq(0)\").length) {  \t\t\t$K(\"div.KonaBody:eq(0)\").before(Appendable);  \t\t} else if ( $K(\"div.spl_shd_plus:eq(0)\").length ) {  \t\t\t$K(\"div.spl_shd_plus:eq(0)\").before(Appendable);  \t\t}  \t\t  \t\t\t  \t      \t\tresultsToTest.each(function() {  \t\t\tvar row = this;  \t\t\tvar title = row.title;  \t\t\tvar address = row.address;  \t\t\tvar imgUrl = row.imgUrl;  \t\t\tvar phone = row.phone;  \t\t\tvar linkUrl = row.link;  \t\t\tvar append = '<div class=\"YP_item\"><div class=\"YP_info\"><div class=\"YP_title\"><a href=\"'+linkUrl+'\" target=\"_blank\" class=\"YP_link\">'+title+'</a></div>'+address+' <a href=\"'+linkUrl+'\" target=\"_blank\" >Map</a><br /><div class=\"YP_phone\"><strong>'+phone+'</strong></div></div><div class=\"YP_rating\"><strong>Be the first to review</strong><br /><a href=\"'+linkUrl+'\" target=\"_blank\"><strong>Rate It</strong></a> | <span class=\"YP_gray\"><strong>Read Reviews</strong></span><br /><div style=\"padding-top:10px\"><a href=\"'+linkUrl+'\" target=\"_blank\" class=\"YP_link\">Improve this listing</a></div></div><div class=\"YP_img\"><a href=\"'+linkUrl+'\" target=\"_blank\"><img class=\"YP_img\" src=\"'+imgUrl+'\" border=\"0\" alt=\"'+title+'\" /></a></div></div>';  \t\t  \t\t\t  \t\t\t$K(\"#YP_logo\").after(append);  \t\t});  \t}\t                ","state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"ask.com/web.*(&|\\?)q=([^&]*)","legacy":1,"type":"prim_event","vars":["foo","searchTerms"],"op":"pageview"},"foreach":[]},"start_line":48}],"meta_start_col":5,"meta":{"logging":"off","name":"YP Local Listings","meta_start_line":2,"author":"Danny DeBate","meta_start_col":5},"dispatch_start_line":7,"global_start_col":5,"ruleset_name":"a41x24"}
