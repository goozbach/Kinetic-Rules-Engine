{"global":[{"source":"http://www.confettiantiques.com/oursites.php","name":"sites_search","type":"dataset","datatype":"JSON","cachable":0},{"source":"http://www.confettiantiques.com/oursitessize.php","name":"sites_size","type":"dataset","datatype":"JSON","cachable":0},{"content":".searchAppend {color : red, size : 14px}        ","type":"css"}],"global_start_line":11,"dispatch":[{"domain":"google.com","ruleset_id":null},{"domain":"bing.com","ruleset_id":null},{"domain":"yahoo.com","ruleset_id":null}],"dispatch_start_col":5,"meta_start_line":2,"rules":[{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"annotate_search_results","args":[{"val":"my_select","type":"var"}],"modifiers":null,"vars":null},"label":null}],"post":null,"pre":[{"rhs":{"val":"sites_search","type":"var"},"lhs":"dataToSearch","type":"expr"},{"rhs":{"obj":{"val":"dataToSearch","type":"var"},"args":[{"val":"$..domain","type":"str"}],"name":"pick","type":"operator"},"lhs":"data","type":"expr"},{"rhs":{"obj":{"val":"dataToSearch","type":"var"},"args":[{"val":"$..message","type":"str"}],"name":"pick","type":"operator"},"lhs":"messages","type":"expr"},{"rhs":{"val":"sites_size","type":"var"},"lhs":"size","type":"expr"}],"name":"annotates","start_col":5,"emit":"function my_select(obj) {    \thost = $K(obj).find(\"span.url, cite\").text();    \tfor(var p = 0; p < size; p++)  \t{  \t\ttoSearch = data[p];  \t\ttest = host.search(toSearch);  \t\tconsole.log(\"Host: \",host,\" Test: \",test);  \t\tif(!test) {  \t\t\treturn messages[p];  \t\t\tconsole.log(\"Message: \", messages[p]);  \t\t\tbreak;  \t\t}  \t  \t}  \tif(test) {  \t\treturn false  \t}    }            ","state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"google.com|yahoo.com|bing.com","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":16}],"meta_start_col":5,"meta":{"logging":"off","name":"Bing, Google, & Yahoo","meta_start_line":2,"meta_start_col":5},"dispatch_start_line":6,"global_start_col":5,"ruleset_name":"a41x11"}