{"global":[{"source":"http://www.avantlink.com/api.php?module=DotdFeed&affiliate_id=26813&merchant_id=10271&website_id=33829&custom_tracking_code=&output=xml","name":"current_d","type":"dataset","datatype":"RSS","cachable":{"period":"seconds","value":"1"}}],"global_start_line":11,"dispatch":[{"domain":"facebook.com","ruleset_id":null}],"dispatch_start_col":5,"meta_start_line":2,"rules":[{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"label":null,"emit":"if(KOBJ.watching) { } else {\n                 KOBJ.watchDOM(\"#pagelet_eventbox\",function(){\n                   KOBJ.get_application(\"a659x5\").reload();\n                   KOBJ.watching = true;\n                 });\n               }\n               \n               if($K('#CL_Main').length) { } else {\n                 $K(\"#rightCol\").prepend(message);\n               }\n            "}],"post":null,"pre":[{"rhs":"<div id=\"CL_Main\" style=\"padding: 0px; margin-top: 0 0 10px 0;\">\n              <div id=\"CL_Header\" style=\"padding: 1px; margin: 0px;\">\n                <div id=\"CL_Banner_Small\" style=\"background:#ffffff; padding: 0px; margin-bottom: 10px; border-bottom:1px solid #CCC;\">\n                  <img width=\"229\" height=\"46\" src=\"http://www.mashworx.com/images/chain.png\" border=\"0\"  />\n                </div>\n        \t\t      <div id=\"CL_items\" style=\"background: #ffffff; padding: 0px; margin: 0px;\">\n        \t\t        <div id=\"recentitems\">  </div>\n        \t\t      </div> \n        \t\t    </div>\n        \t\t  </div>\n            ","lhs":"message","type":"here_doc"}],"name":"facebook","start_col":5,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":".*","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":16},{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"replace_inner","args":[{"val":"#recentitems","type":"str"},{"val":"","type":"str"}],"modifiers":null,"vars":null},"label":null}],"post":null,"pre":null,"name":"clear_items","start_col":5,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":".*","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":52},{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"append","args":[{"val":"#recentitems","type":"str"},{"val":"div","type":"var"}],"modifiers":null,"vars":null},"label":null}],"post":null,"pre":[{"rhs":{"obj":{"val":"current_d","type":"var"},"args":[{"val":"$..Product_Name.$t","type":"str"}],"name":"pick","type":"operator"},"lhs":"title","type":"expr"},{"rhs":{"obj":{"val":"current_d","type":"var"},"args":[{"val":"$..Short_Description.$t","type":"str"}],"name":"pick","type":"operator"},"lhs":"description","type":"expr"},{"rhs":{"obj":{"val":"current_d","type":"var"},"args":[{"val":"$..Buy_URL.$t","type":"str"}],"name":"pick","type":"operator"},"lhs":"link","type":"expr"},{"rhs":{"obj":{"val":"current_d","type":"var"},"args":[{"val":"$..Sale_Price.$t","type":"str"}],"name":"pick","type":"operator"},"lhs":"price","type":"expr"},{"rhs":{"obj":{"val":"current_d","type":"var"},"args":[{"val":"$..Retail_Price.$t","type":"str"}],"name":"pick","type":"operator"},"lhs":"regularprice","type":"expr"},{"rhs":{"obj":{"val":"current_d","type":"var"},"args":[{"val":"$..Sale_Price.$t","type":"str"}],"name":"pick","type":"operator"},"lhs":"currentprice","type":"expr"},{"rhs":{"obj":{"val":"current_d","type":"var"},"args":[{"val":"$..Small_Image_URL.$t","type":"str"}],"name":"pick","type":"operator"},"lhs":"image_thumb","type":"expr"},{"rhs":{"obj":{"val":"current_d","type":"var"},"args":[{"val":"$..Large_Image_URL.$t","type":"str"}],"name":"pick","type":"operator"},"lhs":"image","type":"expr"},{"rhs":{"obj":{"val":"current_d","type":"var"},"args":[{"val":"$..Large_Image_URL.$t","type":"str"}],"name":"pick","type":"operator"},"lhs":"image_detail","type":"expr"},{"rhs":{"obj":{"val":"current_d","type":"var"},"args":[{"val":"$..Quantity_On_Hand.$t","type":"str"}],"name":"pick","type":"operator"},"lhs":"Quantity_On_Hand","type":"expr"},{"rhs":{"args":[{"args":[{"val":"currentprice","type":"var"},{"val":"regularprice","type":"var"}],"type":"prim","op":"/"},{"val":100,"type":"num"}],"type":"prim","op":"*"},"lhs":"percentage","type":"expr"},{"rhs":"<div style='background-color:#ffffff;margin:0px; border: 1px solid $CCC;'>\n                    <table style=\"margin-bottom: 2px; padding:0;\">\n                      <tr>\n                        <td>\n                          <div style=\"position:relative;\">\n                            <a href=\"#{image_detail}\"><img src=\"#{image_thumb}\" alt=\"#{description}\" style=\"padding-right: 10px;\" width=\"50\" height=\"50\"/></a>\n                          </div>\n                        </td>\n                        <td valign=\"top\"><a href=\"#{link}\" target=\"_blank\">#{title}</a><br>$#{currentprice} <span style=\"text-decoration: line-through;\">$#{regularprice}</span> | #{Quantity_On_Hand} Available</td>\n                      </tr>                     \n                    </table>\n                   </div>\n                ","lhs":"div","type":"here_doc"}],"name":"populate_items","start_col":5,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":".*","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":57}],"meta_start_col":6,"meta":{"logging":"on","name":"ChainLove","meta_start_line":2,"author":"Mashworx: Mark Mugleston, Ryan Long","description":"ChainLove VIP app ","meta_start_col":6},"dispatch_start_line":8,"global_start_col":5,"ruleset_name":"a717x12"}
