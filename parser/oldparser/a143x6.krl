{"global":[{"rhs":{"val":[{"rhs":{"val":[],"type":"hashraw"},"lhs":"www.arrl.org"},{"rhs":{"val":[],"type":"hashraw"},"lhs":"www.eham.net"},{"rhs":{"val":[],"type":"hashraw"},"lhs":"www.contesting.com"},{"rhs":{"val":[],"type":"hashraw"},"lhs":"www.qrz.com"},{"rhs":{"val":[],"type":"hashraw"},"lhs":"www.cq-communications.com"}],"type":"hashraw"},"lhs":"sites","type":"expr"}],"global_start_line":21,"dispatch":[{"domain":"google.com","ruleset_id":null},{"domain":"bing.com","ruleset_id":null},{"domain":"yahoo.com","ruleset_id":null}],"dispatch_start_col":2,"meta_start_line":2,"rules":[{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"percolate","args":[{"val":"selector","type":"var"}],"modifiers":null,"vars":null},"label":null}],"post":null,"pre":null,"name":"percolate","start_col":1,"emit":"function selector(obj) { \n                var domain = $K(obj).data(\"domain\");\n                  return (domain in sites);\n              }\n         ","state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"google.com/search|bing.com/search|search.yahoo.com/search","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":32}],"meta_start_col":1,"meta":{"logging":"off","name":"HamRadio Search Customization","meta_start_line":2,"author":"Tom Schaefer, NY4I","description":"This rule changes the order of results from Google, Bing and Yahoo the search term in several well-known amateur radio sites are returned near the top. \n  ","meta_start_col":1},"dispatch_start_line":13,"global_start_col":1,"ruleset_name":"a143x6"}
