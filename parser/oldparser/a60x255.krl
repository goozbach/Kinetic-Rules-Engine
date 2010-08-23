{"global":[{"content":"#sidetab-content *, #offer-wrapper * {\n        margin: 0;\n        padding: 0;\n        border: 0;\n        outline: 0;\n        font-size:24px;\n        font-size: 100%;\n        font-weight:normal;\n        vertical-align: baseline;\n        background: transparent;\n        color: #000;\n        font-family:arial,sans-serif;\n        direction: ltr;\n        line-height: 1;\n        letter-spacing: normal;\n        text-align: left; \n        text-decoration: none;\n        text-indent: 0;\n        text-shadow: none;\n        text-transform: none;\n        vertical-align: baseline;\n        white-space: normal;\n        word-spacing: normal;\n        font: normal normal normal medium/1 sans-serif ;\n        list-style: none;\n        clear: none;\n      }\n      \n      /***********************\n            float notify \n      ***********************/\n      #offer-wrapper {\n        position: relative;\n      }\n      \n      #offer-text {\n        height:224px;\n        position:absolute;\n        right:8px;\n        top:35px;\n        width:212px;\n        z-index:20;\n      }\n      \n      #offer-text img {\n        max-height:126px;\n        max-width:170px;\n        margin: auto 0px;\n        padding: 5px;\n      }\n      \n      #offer-text a {\n        text-align: center;\n        width: 213px;\n        display: block;\n      }\n      \n      #offer-text h1 {\n        font-size:15px;\n        font-weight:bold;\n        margin-top:7px;\n        text-align:center;\n        margin-bottom:2px;\n      }\n      \n      #offer-text p {\n        color:#333333;\n        font-size:13px;\n        padding-bottom:7px;\n        text-align:center;\n      }\n      \n      #offer-text p.price {\n        color:red;\n        font-size:16px;\n        font-weight:bold;\n        padding:9px 9px 0 0;\n        text-align:right;\n      }\n      \n      #offer-wrapper .close {\n        position:absolute;\n        right:13px;\n        top:11px;\n        height: 8px;\n      }\n\n      /***********************\n              sidetab \n      ***********************/\n      .handle {\n        text-decoration: none !important;\n      }\n      \n      #sidetab-content {\n        background-color: red;\n        height: 446px;\n        width: 350px;\n        padding: 1px;\n      }\n\n      #rounded-content {\n        -moz-border-radius:5px 5px 5px 5px;\n        background-color:white;\n        margin-left: 5px;\n      }\n\n      #offers {\n        height:395px;\n        margin:5px;\n        overflow-x:hidden;\n        overflow-y:auto;\n        padding:5px;\n        width:223px;\n      }\n      \n      #sidetab-content .offer {\n        border-bottom:1px dotted #999999;\n        margin-bottom:10px;\n        padding-bottom:5px;\n      }\n      \n      #sidetab-content .offer * {\n        text-align: center;\n      }\n      \n      #sidetab-content .offer h1 {\n        font-size: 16px;\n        font-weiht: bold;\n        padding-bottom: 4px;\n      }\n      \n      #sidetab-content .offer p {\n        color:#444444;\n        font-size:12px;\n        padding-bottom: 7px;\n      }\n      \n      #sidetab-content .offer img {\n        max-width:120px;\n      }\n      \n      #sidetab-content p.price {\n        text-align: right;\n        color: red;\n        font-weight: bold;\n        font-size: 16px;\n      }\n      \n      .notification {\n        padding-right:13px !important;\n        padding-top:15px !important;\n      }\n      \n      #powered-by {\n        \n      }\n      \n      #powered-by p {\n        float:left;\n        font-size:12px;\n        margin-left:5px;\n        margin-right:5px;\n      }\n      \n      #powered-by img {\n        height: 20px;\n      }\n      \n      #reset-demo {\n        color:red;\n        font-size:16px;\n        font-weight:bold;\n      }\n      \n    ","type":"css"}],"global_start_line":22,"dispatch":[{"domain":"google.com","ruleset_id":null},{"domain":"yahoo.com","ruleset_id":null},{"domain":"bing.com","ruleset_id":null},{"domain":"msn.com","ruleset_id":null},{"domain":"shopko.com","ruleset_id":null},{"domain":"costco.com","ruleset_id":null},{"domain":"target.com","ruleset_id":null},{"domain":"acxiom.com","ruleset_id":null}],"dispatch_start_col":3,"meta_start_line":2,"rules":[{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"float_html","args":[{"val":"absolute","type":"str"},{"val":"top: 50px","type":"str"},{"val":"right: 17px","type":"str"},{"val":"floatOfferImg","type":"var"}],"modifiers":null,"vars":null},"label":null},{"label":null,"emit":"// hide offer box when clicking the close button\n        $K(\"#offer-wrapper .close\").live(\"click\",function() {\n          $K(\"#offer-wrapper\").fadeOut();\n        })\n      "}],"post":null,"pre":[{"rhs":"<div id=\"offer-wrapper\">\n            <img src=\"https://kynetx-apps.s3.amazonaws.com/acxiom-cdi/target-float-offers.png\" />\n            <div id=\"offer-text\">\n              <a href=\"http://www.target.com/dp/B0014AZ0KU/ref=sc_iw_r_12_1_4035701\">\n                <h1>Don't Snooze & Lose!</h1>\n                <p>50% off Avington Collection<br/>TWO HOURS ONLY!</p>\n                <img src=\"https://kynetx-apps.s3.amazonaws.com/acxiom-cdi/bed.jpg\" />\n                <p class=\"price\">From $149.99 - $313.49</p>\n              </a>\n            </div>\n            <img src=\"https://kynetx-apps.s3.amazonaws.com/acxiom-cdi/close.png\" class=\"close\" alt=\"close\" />\n          </div>\n        ","lhs":"floatOfferImg","type":"here_doc"}],"name":"first_rule","start_col":3,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"domain":null,"pattern":"google|yahoo|bing|msn","type":"prim_event","vars":null,"op":"pageview"},"foreach":[]},"start_line":204},{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"sidetab","args":[],"modifiers":[{"value":{"val":"MikesTab","type":"str"},"name":"name"},{"value":{"val":"https://kynetx-apps.s3.amazonaws.com/acxiom-cdi/tabOfferAlert.png","type":"str"},"name":"pathToTabImage"},{"value":{"val":"none","type":"str"},"name":"tabColor"},{"value":{"val":"175px","type":"str"},"name":"imageHeight"},{"value":{"val":"36px","type":"str"},"name":"imageWidth"},{"value":{"val":"content","type":"var"},"name":"message"}],"vars":null},"label":null},{"action":{"source":null,"name":"watch","args":[{"val":".handle","type":"str"},{"val":"click","type":"str"}],"modifiers":null,"vars":null},"label":null},{"label":null,"emit":"$K(\".handle\").bind(\"click\", function() {\n          KOBJEventManager.event_handler({ data: {selector : \".handle\" }, type:\"click\"});\n        });\n      "}],"post":null,"pre":[{"rhs":"<div id=\"sidetab-content\">\n          <div id=\"rounded-content\">\n            <div id=\"offers\">\n              <div class=\"offer\">\n                <a href=\"http://www.target.com/Neu-Home-Expandable-Shoe-Rack/dp/B000TFKMIQ/ref=sc_qi_detailbutton\">\n                  <h1>Make Space for Shoes!</h1>\n                  <p>FREE Shipping - Neu Home Expandable Shoe Rack</p>\n                  <img src=\"https://kynetx-apps.s3.amazonaws.com/acxiom-cdi/shoe-rack.jpg\" />\n                  <p class=\"price\">$24.99</p>\n                </a>\n              </div>\n              <div class=\"offer\">\n                <a href=\"http://www.target.com/Handbags-Accessories-Womens/b/ref=nav_t_spc_1_2/177-7947508-8614222?ie=UTF8&node=12940921\">\n                  <h1>Stylish & Easy on the Wallet</h1>\n                  <p>Merona Handbags for Summer 10-25% off</p>\n                  <img src=\"https://kynetx-apps.s3.amazonaws.com/acxiom-cdi/handbag.jpg\" />\n                  <p class=\"price\">From $8.99</p>\n                </a>\n              </div>\n              <div class=\"offer\">\n                <a href=\"http://www.target.com/Fragrances-Beauty/b/ref=nav_t_spc_6_3/179-1875472-1199043?ie=UTF8&node=388837011\">\n                  <h1>Savings Never Smelled so Sweet</h1>\n                  <p>FREE shipping on Fragrance!</p>\n                  <img src=\"https://kynetx-apps.s3.amazonaws.com/acxiom-cdi/fragrance.jpg\" />\n                  <p class=\"price\">From $9.99</p>\n                </a>\n              </div>\n              <div class=\"offer\">\n                <a href=\"http://www.target.com/Skin-Care-Beauty/b/ref=sc_iw_r_1_1_1042004?node=699037011\">\n                  <h1>Silky Smooth Skin for Less</h1>\n                  <p>10% off all moisturizers through Monday!</p>\n                  <img src=\"https://kynetx-apps.s3.amazonaws.com/acxiom-cdi/smooth.jpg\" />\n                  <p class=\"price\">From $5.24</p>\n                </a>\n              </div>\n              <div class=\"offer\">\n                <a href=\"http://www.target.com/Dating-Dummies-Paperback-Joy-Browne/dp/B002X2Q4FI/ref=sc_qi_detailbutton\">\n                  <h1>Heat Up Your Love Life!</h1>\n                  <p>10% off all moisturizers through Monday!</p>\n                  <img src=\"https://kynetx-apps.s3.amazonaws.com/acxiom-cdi/dating.jpg\" />\n                  <p class=\"price\">$14.99</p>\n                </a>\n              </div>\n              </div><!-- #offers -->\n              <div id=\"powered-by\">\n                <a href=\"http://www.acxiom.com/\">\n                  <p>Powered by</p>\n                  <img src=\"https://kynetx-apps.s3.amazonaws.com/acxiom-cdi/acxiom-logo.jpg\"/>\n                </a>\n              </div>\n            </div><!-- #rounded-content -->\n          </div><!-- #sidetab-content -->\n        ","lhs":"content","type":"here_doc"}],"name":"side_tab_offers","start_col":3,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"args":[{"domain":null,"pattern":"target","type":"prim_event","vars":null,"op":"pageview"},{"args":[{"domain":null,"pattern":"costco","type":"prim_event","vars":null,"op":"pageview"},{"domain":null,"pattern":"shopko","type":"prim_event","vars":null,"op":"pageview"}],"type":"complex_event","op":"or"}],"type":"complex_event","op":"or"},"foreach":[]},"start_line":233},{"cond":{"args":[{"val":"viewed","type":"var"},{"val":0,"type":"num"}],"type":"ineq","op":"=="},"blocktype":"every","actions":[{"label":null,"emit":"KOBJ.tabManager.notification({\"name\":\"MikesTab\",\"message\":\"4\"});\n        $K(\".notification\").css(\"background-color\",\"\");\n        $K(\".handle\").css(\"text-decoration\",\"none !important\");\n      "}],"post":null,"pre":[{"rhs":{"domain":"ent","name":"viewed","type":"persistent"},"lhs":"viewed","type":"expr"}],"name":"set_offer_count","start_col":3,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"args":[{"domain":null,"pattern":"target","type":"prim_event","vars":null,"op":"pageview"},{"args":[{"domain":null,"pattern":"costco","type":"prim_event","vars":null,"op":"pageview"},{"domain":null,"pattern":"shopko","type":"prim_event","vars":null,"op":"pageview"}],"type":"complex_event","op":"or"}],"type":"complex_event","op":"or"},"foreach":[]},"start_line":310},{"cond":{"args":[{"val":"viewed","type":"var"},{"val":0,"type":"num"}],"type":"ineq","op":"!="},"blocktype":"every","actions":[{"label":null,"emit":"KOBJ.tabManager.notification({\"name\":\"MikesTab\",\"message\":\"0\"});\n        $K(\".notification\").css(\"background-color\",\"\");\n        $K(\".handle\").css(\"text-decoration\",\"none !important\");\n      "}],"post":null,"pre":[{"rhs":{"domain":"ent","name":"viewed","type":"persistent"},"lhs":"viewed","type":"expr"}],"name":"set_offer_count","start_col":3,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"args":[{"domain":null,"pattern":"target","type":"prim_event","vars":null,"op":"pageview"},{"args":[{"domain":null,"pattern":"costco","type":"prim_event","vars":null,"op":"pageview"},{"domain":null,"pattern":"shopko","type":"prim_event","vars":null,"op":"pageview"}],"type":"complex_event","op":"or"}],"type":"complex_event","op":"or"},"foreach":[]},"start_line":326},{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"label":null,"emit":"KOBJ.tabManager.notification({\"name\":\"MikesTab\",\"message\":\"0\"});\n        $K(\".notification\").css(\"background-color\",\"\");\n        $K(\".handle\").css(\"text-decoration\",\"none !important\");\n      "}],"post":{"alt":null,"type":"fired","cons":[{"test":null,"value":{"val":1,"type":"num"},"name":"viewed","domain":"ent","from":{"val":1,"type":"num"},"action":"iterator","type":"persistent","op":"+="}]},"pre":null,"name":"mark_viewed_on_click","start_col":3,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"args":[{"on":null,"domain":"web","type":"prim_event","vars":null,"op":"click","element":".handle"},{"on":null,"domain":"web","type":"prim_event","vars":null,"op":"click","element":"#click-me"}],"type":"complex_event","op":"or"},"foreach":[]},"start_line":342},{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"append","args":[{"val":".ReusablePane","type":"str"},{"val":"reset","type":"var"}],"modifiers":null,"vars":null},"label":null},{"action":{"source":null,"name":"watch","args":[{"val":"#reset-demo","type":"str"},{"val":"click","type":"str"}],"modifiers":null,"vars":null},"label":null}],"post":null,"pre":[{"rhs":"<p id=\"reset-demo\">Click to Reset</p>\n      ","lhs":"reset","type":"here_doc"}],"name":"reset_demo","start_col":3,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"domain":null,"pattern":"CustomerDataIntegration","type":"prim_event","vars":null,"op":"pageview"},"foreach":[]},"start_line":357},{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"replace_inner","args":[{"val":"#reset-demo","type":"str"},{"val":"Demo is reset and ready to go","type":"str"}],"modifiers":null,"vars":null},"label":null}],"post":{"alt":null,"type":"fired","cons":[{"test":null,"domain":"ent","name":"viewed","action":"clear","type":"persistent"}]},"pre":null,"name":"demo_is_reset","start_col":3,"emit":null,"state":"active","callbacks":null,"pagetype":{"event_expr":{"on":null,"domain":"web","type":"prim_event","vars":null,"op":"click","element":"#reset-demo"},"foreach":[]},"start_line":370}],"meta_start_col":3,"meta":{"logging":"on","name":"CDI Cami","meta_start_line":2,"author":"MikeGrace","description":"CDI Dave\n    ","meta_start_col":3},"dispatch_start_line":11,"global_start_col":3,"ruleset_name":"a60x255"}
