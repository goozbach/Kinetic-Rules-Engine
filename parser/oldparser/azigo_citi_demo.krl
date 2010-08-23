{"global":[{"emit":"var url_prefix = \"http://frag.kobj.net/clients/1024/images/\";\n \nvar link_text = {\n  \"citi\": \"<img style='padding-top: 5px' src='\" + \"http://frag.kobj.net/clients/azigo_citi_demo/images/citi_logo_34.png' border='0'>\",\n  \"upromise\": \"<div style='padding-top: 13px'>UPromise</div>\",\n  \"sep\": \"<div style='padding-top: 13px'>|</div>\"\n};\n\nvar kobj_data =  {\n  \"citi\" : {\"www.zappos.com\" :\t\n               [{\"link\":\n                 \"https://tyecho.epsilon.com/WebServices/EchoEngine/T.aspx?l=C_0_7741_1687_32803658\"\n                }\n               ]\n              },\n  \"upromise\" : {\"www.zappos.com\" :\t\n               [{\"link\":\n                 \"http://shop.upromise.com/mall/merchant/Zappos\"\n                }\n               ]\n              }\n    };\n\nfunction get_host(s) {\n var h = \"\";\n try {\n   h = s.match(/^(?:\\w+:\\/\\/)?([\\w.]+)/)[1];\n } catch(err) {\n }\n return h;\n}\n\nfunction pick (o) {\n    if (o) {\n        return o[Math.floor(Math.random()*o.length)];\n    } else {\n        return o;\n    }\n}\n\nfunction mk_list_item(i) {\n  return $K(\"<li class='KOBJ_item'>\").css(\n          {\"float\": \"left\",\n\t   \"margin\": \"0\",\n\t   \"vertical-align\": \"middle\",\n\t   \"padding-left\": \"4px\",\n\t   \"color\": \"#CCC\",\n\t   \"white-space\": \"nowrap\",\n           \"text-align\": \"center\"\n          }).append(i);\n}\n\nfunction mk_rm_div (anchor) {\n  var logo_item = mk_list_item(anchor);\n  var logo_list = $K('<ul>').css(\n          {\"margin\": \"0\",\n           \"padding\": \"0\",\n           \"list-style\": \"none\"\n          }).attr(\"id\", \"KOBJ_logo_list\").append(logo_item);\n  var inner_div = $K('<div>').css(\n          {\"float\": \"left\",\n           \"display\": \"inline\",\n           \"height\": \"40px\",\n           \"margin-left\": \"46px\",\n           \"padding-right\": \"15px\",\n           \"background-image\": \"url(\" + url_prefix + \"remindme_bar40_r.png)\",\n           \"background-repeat\": \"no-repeat\",\n           \"background-position\": \"right top\"\n          }).append(logo_list);\n  var rm_div = $K('<div>').css(\n          {\"float\": \"right\",\n           \"width\": \"auto\",\n           \"height\": \"40px\",\n           \"font-size\": \"12px\",\n           \"line-height\": \"normal\",\n           \"font-family\": \"Verdana, Geneva, sans-serif\",\n           \"background-image\": \"url(\"+ url_prefix + \"remindme_bar40_l.png)\", \n           \"background-repeat\": \"no-repeat\",\n           \"background-position\": \"left top\"\n\t   }).append(inner_div);\n  return rm_div;\n}\n\nfunction mk_anchor (o, key) {\n   return $K('<a href=' + o.link + '/>').attr(\n            {\"class\": 'KOBJ_'+key,\n     \t     \"title\": o.text || \"Click here for discounts!\"\n   \t    }).html(link_text[key]);\n}\n\nfunction insert_div(obj, selector, contents) {\n   if($K(obj).find('#KOBJ_logo_list li').is('.KOBJ_item')) {\n      $K(obj).find('#KOBJ_logo_list').append(mk_list_item(link_text['sep'])).append(mk_list_item(contents));\n   } else {\n      $K(obj).find(selector).prepend(mk_rm_div(contents));\n   }\n}\n\n\nfunction insert_div_google (key, obj) {\n   var host = get_host($K(obj).find(\"cite\").text());\n   var o = pick(kobj_data[key][host]);\n   if(o) {\n      insert_div(obj, \"div.s\", mk_anchor(o,key));\n   }\n};\n\n// special function to dummy up card information form filling\nfunction fill_card() {\n $K('input[name=ccard_z_number]').attr('value','4121555544444321');\n $K('select[name=ccard_z_exp_month]>option[value=02]').attr('selected','selected');\n $K('select[name=ccard_z_exp_year]>option[value=2011]').attr('selected','selected');\n}\n\n// change transparency\n$K.kGrowl.defaults.opacity = 1.0;\n\n\n"}],"global_start_line":5,"dispatch":[],"dispatch_start_col":null,"meta_start_line":null,"rules":[{"cond":{"args":[],"function_expr":{"val":"truth","type":"var"},"type":"app"},"blocktype":"every","actions":[{"label":null,"emit":"$K(\"li.g\").each(function() {\n insert_div_google('citi',this);\n});\n    "}],"post":null,"pre":[],"name":"tag_google_shoes","start_col":2,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"http://www.google.com/","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":131},{"cond":{"args":[],"function_expr":{"val":"truth","type":"var"},"type":"app"},"blocktype":"every","actions":[{"label":null,"emit":"$K(\"li.g\").each(function() {\n insert_div_google('upromise',this);\n});\n    "}],"post":null,"pre":[],"name":"tag_google_shoes","start_col":2,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"http://www.google.com/","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":146},{"cond":{"args":[],"function_expr":{"val":"truth","type":"var"},"type":"app"},"blocktype":"every","actions":[{"action":{"source":null,"name":"notify","args":[{"val":"top-right","type":"str"},{"val":"#FFF","type":"str"},{"val":"#000","type":"str"},{"val":"<img src='http://frag.kobj.net/clients/azigo_citi_demo/images/azigo_logo_black_34.png'","type":"str"},{"val":"true","type":"bool"},{"val":"invite","type":"var"}],"modifiers":null,"vars":null},"label":null},{"label":null,"emit":"$K(\"span.no_thanks\").bind(\"click.kGrowl\", function() {\n\t\t\t\t\t$K(this).unbind('click.kGrowl').parent().parent().parent().parent().trigger('kGrowl.beforeClose').animate({opacity: \t'hide'}, \"normal\", \"swing\", function() {\n\t\t\t\t\t$K(this).trigger('kGrowl.close').remove();\n\t\t\t\t\t});});\n"}],"post":null,"pre":[{"rhs":"<div id=\"kobj_discount\" style=\"padding: 3pt;\n  -moz-border-radius: 5px;\n  -webkit-border-radius: 5px;\n  background-color: #FFFFFF;\n  width: 225px;\n  text-align: center\">\n<p style=\"text-align: left;color: #8888FF\">Don't forget...</p>\n<p style=\"color: #000\" >\nUse your <img src=\"http://frag.kobj.net/clients/azigo_citi_demo/images/citi_logo_34.png\"> card now and get 6 points for every dollar you spend at\n</p>\n<p style=\"color: #000\">\n<img src=\"http://frag.kobj.net/clients/azigo_citi_demo/images/zappos_logo_57.png\"> \n</p>\n<p style=\"color: #000\">\nWant to use your Citi card?\n</p>\n<p style=\"color: #000\">\n<img onclick=\"javascript:fill_card();false;\" style=\"opacity: 1.0;\" src=\"http://frag.kobj.net/clients/azigo_citi_demo/images/lets_use_it_33.png\"> \n<span class=\"no_thanks\" style=\"cursor: pointer; \"><img  style=\"opacity: 1.0;\" src=\"http://frag.kobj.net/clients/azigo_citi_demo/images/no_thanks_33.png\"></span>\n</p>\n</div>\n   ","lhs":"invite","type":"here_doc"}],"name":"zappos_notify","start_col":1,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"https://shopping.zappos.com/reqauth/checkout.cgi","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":161},{"cond":{"args":[],"function_expr":{"val":"truth","type":"var"},"type":"app"},"blocktype":"every","actions":[{"action":{"source":null,"name":"notify","args":[{"val":"top-right","type":"str"},{"val":"#FFF","type":"str"},{"val":"#000","type":"str"},{"val":"<img src='http://frag.kobj.net/clients/azigo_citi_demo/images/azigo_logo_black_34.png'","type":"str"},{"val":"true","type":"bool"},{"val":"invite","type":"var"}],"modifiers":null,"vars":null},"label":null},{"label":null,"emit":"$K(\"span.no_thanks\").bind(\"click.kGrowl\", function() {\n\t\t\t\t\t$K(this).unbind('click.kGrowl').parent().parent().parent().parent().trigger('kGrowl.beforeClose').animate({opacity: \t'hide'}, \"normal\", \"swing\", function() {\n\t\t\t\t\t$K(this).trigger('kGrowl.close').remove();\n\t\t\t\t\t});});\n"}],"post":null,"pre":[{"rhs":"<div id=\"kobj_discount\" style=\"padding: 3pt;\n  -moz-border-radius: 5px;\n  -webkit-border-radius: 5px;\n  background-color: #FFFFFF;\n  width: 225px;\n  text-align: center\">\n<img src=\"http://frag.kobj.net/clients/azigo_citi_demo/images/citi_logo_34.png\" align=\"right\"> \n<p style=\"text-align: left;color: #8888FF\">Don't forget...</p>\n<p style=\"color: #000\" >\n<img src=\"http://frag.kobj.net/clients/azigo_citi_demo/images/thank_you_logo_34.png\"> members receive 1 point per dollar spent at\n</p>\n<p style=\"color: #000\">\n<img src=\"http://frag.kobj.net/clients/azigo_citi_demo/images/expedia_logo_83.png\"> \n</p>\n<p style=\"color: #000\">\nWant to book your travel there?\n</p>\n<p style=\"color: #000\">\n<a href=\"http://www.expedia.com\"><img style=\"opacity: 1.0;\" border=\"0\" src=\"http://frag.kobj.net/clients/azigo_citi_demo/images/go_to_expedia_33.png\"> </a>\n<span class=\"no_thanks\" style=\"cursor: pointer; \"><img style=\"opacity: 1.0;\" src=\"http://frag.kobj.net/clients/azigo_citi_demo/images/no_thanks_33.png\"></span><br/>\n<input type=\"checkbox\" name=\"stop\"> Don't show again\n</p>\n</div>\n   ","lhs":"invite","type":"here_doc"}],"name":"travelocity_notify","start_col":1,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"http://www.travelocity.com/|http://www.orbitz.com/","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":212}],"meta_start_col":null,"meta":{},"dispatch_start_line":null,"global_start_col":3,"ruleset_name":"azigo_citi_demo"}
