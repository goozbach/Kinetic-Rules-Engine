{"global":[],"global_start_line":null,"dispatch":[{"domain":"www.byu.edu","ruleset_id":null}],"dispatch_start_col":5,"meta_start_line":null,"rules":[{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"alert","args":[{"val":"temp","type":"var"}],"modifiers":null,"vars":null},"label":null}],"post":null,"pre":[{"rhs":{"val":"te","type":"str"},"lhs":"myvar","type":"expr"},{"rhs":{"val":6,"type":"num"},"lhs":"mynum","type":"expr"},{"rhs":{"source":"location","predicate":"city","args":[],"type":"qualified"},"lhs":"city","type":"expr"},{"rhs":"You're browser thinks you're in the city of #{city}         This is a #{myvar + \"st\"} to see whether Javascript expressions work.        Here are some numbers: #{(5 * 30 + mynum)}.         And here's a function call: #{foo(\"Phil\")}    \n ","lhs":"temp","type":"here_doc"}],"name":"simpletemplate","start_col":5,"emit":"function foo(x) {      return \"Hello \" + x;    }            ","state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"/webapp/home/index.jsp","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":5}],"meta_start_col":null,"meta":{},"dispatch_start_line":2,"global_start_col":null,"ruleset_name":"996338033"}