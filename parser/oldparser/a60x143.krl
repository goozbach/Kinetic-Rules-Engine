{"global":[{"rhs":{"val":[{"val":"WHAT","type":"str"},{"val":"wow","type":"str"},{"val":"Really?","type":"str"}],"type":"array"},"lhs":"strings","type":"expr"},{"rhs":{"val":[{"rhs":{"val":"a","type":"str"},"lhs":"A"},{"rhs":{"val":"b","type":"str"},"lhs":"B"},{"rhs":{"val":"c","type":"str"},"lhs":"C"},{"rhs":{"val":"d","type":"str"},"lhs":"D"},{"rhs":{"val":"e","type":"str"},"lhs":"E"},{"rhs":{"val":"f","type":"str"},"lhs":"F"},{"rhs":{"val":"g","type":"str"},"lhs":"G"},{"rhs":{"val":"h","type":"str"},"lhs":"H"},{"rhs":{"val":"i","type":"str"},"lhs":"I"},{"rhs":{"val":"j","type":"str"},"lhs":"J"},{"rhs":{"val":"k","type":"str"},"lhs":"K"},{"rhs":{"val":"l","type":"str"},"lhs":"L"},{"rhs":{"val":"m","type":"str"},"lhs":"M"},{"rhs":{"val":"n","type":"str"},"lhs":"N"},{"rhs":{"val":"o","type":"str"},"lhs":"O"},{"rhs":{"val":"p","type":"str"},"lhs":"P"},{"rhs":{"val":"q","type":"str"},"lhs":"Q"},{"rhs":{"val":"r","type":"str"},"lhs":"R"},{"rhs":{"val":"s","type":"str"},"lhs":"S"},{"rhs":{"val":"t","type":"str"},"lhs":"T"},{"rhs":{"val":"u","type":"str"},"lhs":"U"},{"rhs":{"val":"v","type":"str"},"lhs":"V"},{"rhs":{"val":"w","type":"str"},"lhs":"W"},{"rhs":{"val":"x","type":"str"},"lhs":"X"},{"rhs":{"val":"y","type":"str"},"lhs":"Y"},{"rhs":{"val":"z","type":"str"},"lhs":"Z"}],"type":"hashraw"},"lhs":"alphaDown","type":"expr"},{"rhs":{"val":[{"rhs":{"val":"A","type":"str"},"lhs":"a"},{"rhs":{"val":"B","type":"str"},"lhs":"b"},{"rhs":{"val":"C","type":"str"},"lhs":"c"},{"rhs":{"val":"D","type":"str"},"lhs":"d"},{"rhs":{"val":"E","type":"str"},"lhs":"e"},{"rhs":{"val":"F","type":"str"},"lhs":"f"},{"rhs":{"val":"G","type":"str"},"lhs":"g"},{"rhs":{"val":"H","type":"str"},"lhs":"h"},{"rhs":{"val":"I","type":"str"},"lhs":"i"},{"rhs":{"val":"J","type":"str"},"lhs":"j"},{"rhs":{"val":"K","type":"str"},"lhs":"k"},{"rhs":{"val":"L","type":"str"},"lhs":"l"},{"rhs":{"val":"M","type":"str"},"lhs":"m"},{"rhs":{"val":"N","type":"str"},"lhs":"n"},{"rhs":{"val":"O","type":"str"},"lhs":"o"},{"rhs":{"val":"P","type":"str"},"lhs":"p"},{"rhs":{"val":"Q","type":"str"},"lhs":"q"},{"rhs":{"val":"R","type":"str"},"lhs":"r"},{"rhs":{"val":"S","type":"str"},"lhs":"s"},{"rhs":{"val":"T","type":"str"},"lhs":"t"},{"rhs":{"val":"U","type":"str"},"lhs":"u"},{"rhs":{"val":"V","type":"str"},"lhs":"v"},{"rhs":{"val":"W","type":"str"},"lhs":"w"},{"rhs":{"val":"X","type":"str"},"lhs":"x"},{"rhs":{"val":"Y","type":"str"},"lhs":"y"},{"rhs":{"val":"Z","type":"str"},"lhs":"z"}],"type":"hashraw"},"lhs":"alphaUp","type":"expr"}],"global_start_line":13,"dispatch":[{"domain":"example.com","ruleset_id":null}],"dispatch_start_col":5,"meta_start_line":2,"rules":[{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"notify","args":[{"val":"test","type":"str"},{"val":"firstLetter","type":"var"}],"modifiers":[{"value":{"val":"true","type":"bool"},"name":"sticky"}]},"label":null}],"post":null,"pre":[{"rhs":{"expr":{"obj":{"val":"string","type":"var"},"args":[{"val":"$[0]","type":"str"}],"name":"pick","type":"operator"},"vars":["string"],"type":"function","decls":[]},"lhs":"lowercase","type":"expr"},{"rhs":{"args":[{"val":"hello","type":"str"}],"function_expr":{"val":"lowercase","type":"var"},"type":"app"},"lhs":"firstLetter","type":"expr"}],"name":"test_1","start_col":5,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":".*","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":15}],"meta_start_col":5,"meta":{"logging":"on","name":"string case converter test","meta_start_line":2,"author":"Mike Grace","description":"Test functions to convert string case     \n","meta_start_col":5},"dispatch_start_line":10,"global_start_col":5,"ruleset_name":"a60x143"}
