{"global":[{"source":"http://aaa-demo.s3.amazonaws.com/aaa.json","name":"aaa","type":"dataset","datatype":"JSON","cachable":1},{"source":"http://aaa-demo.s3.amazonaws.com/aaawa.json","name":"aaawa","type":"dataset","datatype":"JSON","cachable":1},{"content":"#spotlight-reminders-wrapper {\n          height:24px;\n          background:#e4effd;\n          font-size:small;\n          margin:15px 0;\n          padding:0 0 0 9px;\n          }\n          \n          .remindme-reminders-wrapper {\n          height:24px;\n          background:#FFF;\n          font-size:small;\n          width:450px;\n          margin:0;\n          padding:0;\n          }\n          \n          p.descriptive-text {\n          float:right;\n          color:#7a7a7a;\n          font-size:small;\n          margin:4px 9px 0 0;\n          padding:0;\n          }\n          \n          ul.spotlightReminders {\n          float:left;\n          list-style:none;\n          height:24px;\n          margin:0;\n          padding:0;\n          }\n          \n          ul.spotlightReminders li {\n          display:block;\n          float:left!important;\n          margin:3px 3px 0 0;\n          }\n          \n          ul.spotlightReminders li.azigo-logo {\n          margin:4px 0 0;\n          }\n          \n          ul.spotlightReminders li.txt-reminder {\n          color:#2b30d1;\n          margin:4px 3px 0 0;\n          padding:0 0 0 4px;\n          }\n          \n          .clear {\n          clear:both;\n          }\n          \n          .remindme-flyout-wrapper {\n          border:3px solid #e471ac;\n          width:450px;\n          position:absolute;\n          background-color:#FFF;\n          display:none;\n          z-index:1;\n          text-align:left;\n          margin:0 0 0 20px;\n          }\n          \n          .flyout-pointer {\n          background:url(http:\\/\\/aaa-demo.s3.amazonaws.com/FlyoutPoint.png) no-repeat;\n          height:11px;\n          width:15px;\n          position:relative;\n          margin:-11px 0 0 20px;\n          }\n          \n          .flyout-reminder-details {\n          color:#000;\n          float:left;\n          border-bottom:1px solid #c2c2c2;\n          font-size:small;\n          width:430px;\n          padding:8px 10px;\n          }\n          \n          p.flyout-reminder-url {\n          margin:0 0 5px;\n          padding:0;\n          }\n          \n          .flyout-reminder-details ul {\n          list-style:none;\n          line-height:14px;\n          margin:0;\n          padding:0;\n          }\n          \n          .flyout-reminder-details ul li {\n          display:block;\n          float:left!important;\n          margin:0 4px 0 0;\n          padding:0;\n          }\n          \n          .flyout-reminder-details ul li.flyout-reminder-url {\n          width:250px;\n          margin:0 0 5px;\n          padding:0;\n          }\n          \n          .flyout-reminder-details ul li.flyout-reminder-text {\n          width:230px;\n          }\n          \n          .flyout-reminder-details ul li.flyout-reminder-button {\n          margin:0;\n          }\n          \n          a.flyout-reminder-button {\n          display:block;\n          font-size:10px;\n          font-weight:700;\n          font-family:Verdana, sans-serif, Arial, Helvetica;\n          background:#57b6e3;\n          text-align:center;\n          text-decoration:none;\n          height:16px;\n          width:96px;\n          color:#fff;\n          margin:0;\n          padding:2px 0 0;\n          }\n          \n          .clearfix:after {\n          content:\".\";\n          display:block;\n          clear:both;\n          visibility:hidden;\n          line-height:0;\n          height:0;\n          }\n          \n          .clearfix {\n          display:inline-block;\n          }\n          \n          html[xmlns] .clearfix {\n          display:block;\n          }\n          \n          * html .clearfix {\n          height:1%;\n          }\n          \n          .flyout-wrapper {\n          border:3px solid #e471ac;\n          width:450px;\n          position:absolute;\n          background-color:#FFF;\n          display:none;\n          z-index:1;\n          margin:-15px 0 0 29px;\n          }\n        ","type":"css"}],"global_start_line":21,"dispatch":[{"domain":"www.google.com","ruleset_id":null},{"domain":"maps.google.com","ruleset_id":null},{"domain":"search.yahoo.com","ruleset_id":null},{"domain":"local.yahoo.com","ruleset_id":null},{"domain":"www.bing.com","ruleset_id":null},{"domain":"search.microsoft.com","ruleset_id":null}],"dispatch_start_col":3,"meta_start_line":2,"rules":[{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"annotate_search_results","args":[{"val":"ann","type":"var"}],"modifiers":null,"vars":null},"label":null}],"post":null,"pre":null,"name":"annotate_search","start_col":5,"emit":"function ann(obj) {\n                var host = $K(obj).data(\"domain\");\n                var z = aaa[host];\n                if (z) {\n                    var link = (z.hasOwnProperty(\"link\") ? z.link : \"#\");\n                    return \"<a href='\" + link + \"'><img class='aaa' src='\" + img_white \n                        + \"' title='Discounts Available for AAA Members!' /></a>\";\n                } else {\n                    return false;\n                }\n            }\n        ","state":"active","callbacks":null,"pagetype":{"event_expr":{"domain":null,"pattern":"^http://(?:www|search).(?:bing|google|yahoo).com/.*(?:search|#hl|webhp).*(?:&|\\?)(?:p|q)=(.*?)(:?&|$)","type":"prim_event","vars":["searchTerm"],"op":"pageview"},"foreach":[]},"start_line":188}],"meta_start_col":2,"meta":{"logging":"off","name":"AAA","meta_start_line":2,"author":"Brad Odasso","description":"","meta_start_col":2},"dispatch_start_line":13,"global_start_col":5,"ruleset_name":"a703x10"}