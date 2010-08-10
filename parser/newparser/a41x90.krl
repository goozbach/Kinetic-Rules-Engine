{
   "dispatch": [],
   "global": [{
      "content": ".jqueryDetector { background-color: red; border: 2px solid red; }        ",
      "type": "css"
   }],
   "meta": {
      "author": "Jessie Morris",
      "logging": "off",
      "name": "Selector Detector"
   },
   "rules": [{
      "actions": [{"action": {
         "args": [
            {
               "type": "str",
               "val": "selectorDetector"
            },
            {
               "type": "var",
               "val": "message"
            }
         ],
         "modifiers": [
            {
               "name": "sticky",
               "value": {
                  "type": "bool",
                  "val": "true"
               }
            },
            {
               "name": "width",
               "value": {
                  "type": "str",
                  "val": "350px"
               }
            },
            {
               "name": "name",
               "value": {
                  "type": "str",
                  "val": "selectorDetector"
               }
            }
         ],
         "name": "notify",
         "source": null
      }}],
      "blocktype": "every",
      "callbacks": null,
      "cond": {
         "type": "bool",
         "val": "true"
      },
      "emit": "\n          KOBJ.selectorReturned = '';\n          if(typeof(KOBJ.formData) == \"undefined\"){\n            KOBJ.formData = [];\n          }\n          \n          KOBJ.detectSelector = function(passedElement){\n            var element = $K(passedElement);\n            var tagName = $K(element)[0].tagName.toLowerCase();\n            if($K(element).attr('name')){\n              return '[name='+$K(element).attr('name')+']';\n            } else if($K(element).attr('id')){\n              return '#'+$K(element).attr('id');\n            } else if($K(element).parent().children(tagName).length == 1){\n              var parentSelector = KOBJ.detectSelector($K(element).parent());\n              return parentSelector + '>' + tagName;\n            } else if($K(element).attr('class')){\n              var elementClass = $K(element).attr('class');\n              if($K('.'+elementClass).length == 1){\n                return '.'+elementClass;\n              } else {\n                var counter = 0; var tmpReturn = '';\n                $K('.'+elementClass).each(function(){\n                  var data = $K(this);\n                  if($K(element)[0] == $K(data)[0]){\n                    tmpReturn = '.' + $K(element).attr('class') + ':eq(' + counter + ')';\n                    return false;\n                  } counter++;\n                });\n                if(tmpReturn){\n                  return tmpReturn;\n                }\n              }\n            } else {\n              var parentSelector = KOBJ.detectSelector($K(element).parent());\n              var counter = 0;\n              var tmpReturn = '';\n              $K(parentSelector + '>' + tagName).each(function(){\n                var data = $K(this);\n                if($K(element)[0] == $K(data)[0]){\n                  tmpReturn = parentSelector + '>' + tagName + ':eq(' + counter + ')';\n                  return false;\n                } counter++;\n              });\n              if(tmpReturn){\n                return tmpReturn;\n              }\n            }\n          };\n          \n          KOBJ.selectorDetectorBind = function(){\n            var dataElement = this;\n            KOBJ.selectorReturned = KOBJ.detectSelector(dataElement);\n            KOBJ.log('Object you just clicked:');\n            KOBJ.log(KOBJ.selectorReturned);\n            $K('#jquerySelector').val(KOBJ.selectorReturned);\n            KOBJ.formBind($K('#jquerySelector'));\n            return false;\n          };\n          \n          KOBJ.formBind = function(data){\n            $K(KOBJ.selectorReturned).removeClass('jqueryDetector');\n            var value = $K(data).val();\n            KOBJ.log(\"value: \" + value);\n            $K(value).addClass('jqueryDetector');\n            return false;\n          };\n          \n          $K('img,a,div,span,cite,input,p,h1,h2,h3,h4,h5,select').bind('click',KOBJ.selectorDetectorBind);\n          $K('.kGrowl-notification>.close').live('click',function(){\n            $K('img,a,div,span,cite,input,p,h1,h2,h3,h4,h5,select').unbind('click',KOBJ.selectorDetectorBind);\n            $K(KOBJ.selectorReturned).removeClass('jqueryDetector');\n          });\n        ",
      "foreach": [],
      "name": "selector_finder",
      "pagetype": {"event_expr": {
         "legacy": 1,
         "op": "pageview",
         "pattern": ".*",
         "type": "prim_event",
         "vars": []
      }},
      "pre": [{
         "lhs": "message",
         "rhs": "\n              Hello! You are looking to find out what selectors you should use, yes?<br /><br />\n              Forms, divs, anchors (links), images, headers (h1,h2,etc.), paragraphs, citations (cite) and spans will work.<br /><br />\n              Selector to use:<input type=\"text\" id=\"jquerySelector\" style=\"margin-left: 5px; color: red; width: 250px;\" rows=\"1\" onchange=\"KOBJ.formBind(this);\">\n          ",
         "type": "here_doc"
      }],
      "state": "active"
   }],
   "ruleset_name": "a41x90"
}
