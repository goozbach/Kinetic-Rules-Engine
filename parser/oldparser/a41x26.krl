{"global":[],"global_start_line":null,"dispatch":[{"domain":"www.google.com","ruleset_id":null}],"dispatch_start_col":5,"meta_start_line":2,"rules":[{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"alert","args":[{"args":[{"val":"ZIP: ","type":"str"},{"val":"zip","type":"var"}],"type":"prim","op":"+"}],"modifiers":null,"vars":null},"label":null}],"post":null,"pre":[{"rhs":{"source":"location","predicate":"postal_code","args":[],"type":"qualified"},"lhs":"zip","type":"expr"}],"name":"newrule","start_col":5,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"www.google.com","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":9}],"meta_start_col":5,"meta":{"logging":"on","name":"Geo IP Test","meta_start_line":2,"meta_start_col":5},"dispatch_start_line":6,"global_start_col":null,"ruleset_name":"a41x26"}