{"global":[{"rhs":{"val":[{"val":[{"rhs":{"val":"Mike Grace breaks 1,000 points!","type":"str"},"lhs":"title"},{"rhs":{"val":"http://geek.michaelgrace.org/","type":"str"},"lhs":"link"}],"type":"hashraw"},{"val":[{"rhs":{"val":"Phil Windley shows off dialoguing at Impact","type":"str"},"lhs":"title"},{"rhs":{"val":"http://kynetx.com/","type":"str"},"lhs":"link"}],"type":"hashraw"},{"val":[{"rhs":{"val":"Developers get awesome answers on Devex","type":"str"},"lhs":"title"},{"rhs":{"val":"http://devex.kynetx.com/","type":"str"},"lhs":"link"}],"type":"hashraw"}],"type":"array"},"lhs":"latestNews","type":"expr"}],"global_start_line":15,"dispatch":[{"domain":"example.com","ruleset_id":null}],"dispatch_start_col":1,"meta_start_line":2,"rules":[{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"notify","args":[{"val":"Breaking news!","type":"str"},{"val":"newsDiv","type":"var"}],"modifiers":null},"label":null}],"post":null,"pre":[{"rhs":"<div id=\"breaking-news\"></div>\n    ","lhs":"newsDiv","type":"here_doc"}],"name":"setup_notify","start_col":1,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"http://example.com/","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":23},{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"label":null,"emit":"$K(\"#breaking-news\").append(newsItem);\n      "}],"post":null,"pre":[{"rhs":{"obj":{"val":"item","type":"var"},"args":[{"val":"$.title","type":"str"}],"name":"pick","type":"operator"},"lhs":"title","type":"expr"},{"rhs":{"obj":{"val":"item","type":"var"},"args":[{"val":"$.link","type":"str"}],"name":"pick","type":"operator"},"lhs":"link","type":"expr"},{"rhs":"<p><a href=\"#{link}\">#{title}</a></p>\n      ","lhs":"newsItem","type":"here_doc"}],"name":"loopty_loop","start_col":1,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"http://example.com/","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[{"expr":{"val":"latestNews","type":"var"},"var":["item"]}]},"start_line":33}],"meta_start_col":1,"meta":{"logging":"on","name":"Append to notify","meta_start_line":2,"author":"Mike Grace","description":"For devex question \n  ","meta_start_col":1},"dispatch_start_line":11,"global_start_col":1,"ruleset_name":"a60x195"}
