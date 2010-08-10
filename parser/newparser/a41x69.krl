{
   "dispatch": [
      {"domain": "amazon.com"},
      {"domain": "walmart.com"}
   ],
   "global": [{
      "content": ".KOBJ_reset *  { display: block; color: black; font-family: arial; }    \t.KOBJ_reset li              { display: list-item }    \t.KOBJ_reset head            { display: none }    \t.KOBJ_reset table           { display: table }    \t.KOBJ_reset tr              { display: table-row }    \t.KOBJ_reset thead           { display: table-header-group }    \t.KOBJ_reset tbody           { display: table-row-group }    \t.KOBJ_reset tfoot           { display: table-footer-group }    \t.KOBJ_reset col             { display: table-column }    \t.KOBJ_reset colgroup        { display: table-column-group }    \t.KOBJ_reset td, th          { display: table-cell }    \t.KOBJ_reset caption         { display: table-caption }    \t.KOBJ_reset th              { font-weight: bolder; text-align: center }    \t.KOBJ_reset caption         { text-align: center }    \t.KOBJ_reset body            { margin: 8px }    \t.KOBJ_reset h1              { font-size: 2em; margin: .67em 0 }    \t.KOBJ_reset h2              { font-size: 1.5em; margin: .75em 0 }    \t.KOBJ_reset h3              { font-size: 1.17em; margin: .83em 0 }    \t.KOBJ_reset h4, .KOBJ_reset p,    \t.KOBJ_reset blockquote, .KOBJ_reset ul,    \t.KOBJ_reset fieldset, .KOBJ_reset form,    \t.KOBJ_reset ol, .KOBJ_reset dl, .KOBJ_reset dir,    \t.KOBJ_reset menu            { margin: 1.12em 0 }    \t.KOBJ_reset h5              { font-size: .83em; margin: 1.5em 0 }    \t.KOBJ_reset h6              { font-size: .75em; margin: 1.67em 0 }    \t.KOBJ_reset h1, .KOBJ_reset h2, .KOBJ_reset h3, .KOBJ_reset h4,    \t.KOBJ_reset h5, .KOBJ_reset h6, .KOBJ_reset b,    \t.KOBJ_reset strong          { font-weight: bolder }    \t.KOBJ_reset blockquote      { margin-left: 40px; margin-right: 40px }    \t.KOBJ_reset i, .KOBJ_reset cite, .KOBJ_reset em,    \t.KOBJ_reset var, .KOBJ_reset address    { font-style: italic }    \t.KOBJ_reset pre, .KOBJ_reset tt, .KOBJ_reset code,    \t.KOBJ_reset kbd, .KOBJ_reset samp       { font-family: monospace }    \t.KOBJ_reset pre             { white-space: pre }    \t.KOBJ_reset button, .KOBJ_reset textarea,    \t.KOBJ_reset input, .KOBJ_reset select   { display: inline-block }    \t.KOBJ_reset big             { font-size: 1.17em }    \t.KOBJ_reset small, .KOBJ_reset sub, .KOBJ_reset sup { font-size: .83em }    \t.KOBJ_reset sub             { vertical-align: sub }    \t.KOBJ_reset sup             { vertical-align: super }    \t.KOBJ_reset table           { border-spacing: 2px; }    \t.KOBJ_reset thead, .KOBJ_reset tbody,    \t.KOBJ_reset tfoot           { vertical-align: middle }    \t.KOBJ_reset td, .KOBJ_reset th, .KOBJ_reset tr      { vertical-align: inherit }    \t.KOBJ_reset s, .KOBJ_reset strike, .KOBJ_reset del  { text-decoration: line-through }    \t.KOBJ_reset hr              { border: 1px inset }    \t.KOBJ_reset ol, .KOBJ_reset ul, .KOBJ_reset dir,    \t.KOBJ_reset menu, .KOBJ_reset dd        { margin-left: 40px }    \t.KOBJ_reset ol              { list-style-type: decimal }    \t.KOBJ_reset ol ul, .KOBJ_reset ul ol,    \t.KOBJ_reset ul ul, .KOBJ_reset ol ol    { margin-top: 0; margin-bottom: 0 }    \t.KOBJ_reset u, .KOBJ_reset ins          { text-decoration: underline }    \t.KOBJ_reset br:before       { content: \"\\A\"; white-space: pre-line }    \t.KOBJ_reset center          { text-align: center }    \t.KOBJ_reset :link, .KOBJ_reset :visited { text-decoration: underline }    \t.KOBJ_reset :focus          { outline: thin dotted invert }    \t.KOBJ_reset a { color: blue; display: inline; }    \t.KOBJ_reset a:visited { color: #551A8B; }    \t.KOBJ_reset p { text-align: left; }    \t.KOBJ_reset div { color: black; }    \t    \t.KOBJ_reset BDO[DIR=\"ltr\"]  { direction: ltr; unicode-bidi: bidi-override }    \t.KOBJ_reset BDO[DIR=\"rtl\"]  { direction: rtl; unicode-bidi: bidi-override }    \t    \t.KOBJ_reset *[DIR=\"ltr\"]    { direction: ltr; unicode-bidi: embed }    \t.KOBJ_reset *[DIR=\"rtl\"]    { direction: rtl; unicode-bidi: embed }                ",
      "type": "css"
   }],
   "meta": {
      "logging": "off",
      "name": "Recall Card"
   },
   "rules": [
      {
         "actions": [{"action": {
            "args": [
               {
                  "type": "str",
                  "val": "Recall!"
               },
               {
                  "type": "var",
                  "val": "msg"
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
                  "name": "opacity",
                  "value": {
                     "type": "num",
                     "val": 1
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
         "emit": null,
         "foreach": [],
         "name": "cosco_amazon",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": "www.amazon.com/Cosco-High-Back-Booster-Seat/|http://www.walmart.com/Cosco-Back-Booster-Seat/ip/1943168|www.amazon.com/gp/product/B000GY5OBK",
            "type": "prim_event",
            "vars": []
         }},
         "pre": [{
            "lhs": "msg",
            "rhs": " \n<div class=\"KOBJ_reset\" style=\"background-color: white; color: black; padding: 10px\"><img src=\"http://www-odi.nhtsa.dot.gov/images/safercarlogo.gif\" style=\"float: left; margin: 10px; width: 110px;\" /><p><strong>Attention, this product has been recalled.<\/strong><\/p><p>Please check out <a href=\"http://www-odi.nhtsa.dot.gov/cars/problems/recalls/childseat.cfm\">The Defects & Recalls<\/a> page at <a href=\"http://www.safercar.gov\">safercar.gov<\/a><\/p><p><em>For demo purposes only.<\/em><\/p><\/div>  \t\n ",
            "type": "here_doc"
         }],
         "state": "active"
      },
      {
         "actions": [{"action": {
            "args": [
               {
                  "type": "str",
                  "val": "Recall!"
               },
               {
                  "type": "var",
                  "val": "msg"
               }
            ],
            "modifiers": [{
               "name": "sticky",
               "value": {
                  "type": "bool",
                  "val": "true"
               }
            }],
            "name": "notify",
            "source": null
         }}],
         "blocktype": "every",
         "callbacks": null,
         "cond": {
            "type": "bool",
            "val": "true"
         },
         "emit": null,
         "foreach": [],
         "name": "tires_all",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": "http://www.amazon.com/Toyo-Proxes-All-Season-Ultra-High-Performance/dp/B001AFVYWW/|http://www.amazon.com/gp/product/B001AFVYWW",
            "type": "prim_event",
            "vars": []
         }},
         "pre": [{
            "lhs": "msg",
            "rhs": " \n<div class=\"KOBJ_reset\" style=\"background-color: white; color: black; padding: 10px\"><img src=\"http://www-odi.nhtsa.dot.gov/images/safercarlogo.gif\" style=\"float: left; margin: 10px; width: 110px;\" /><p><strong>Attention, this product has been recalled.<\/strong><\/p><p>Please check out <a href=\"http://www-odi.nhtsa.dot.gov/recalls/recallsearch.cfm\">The Defects & Recalls<\/a> page at <a href=\"http://www.safercar.gov\">safercar.gov<\/a><\/p><\/div>  \t\n ",
            "type": "here_doc"
         }],
         "state": "active"
      }
   ],
   "ruleset_name": "a41x69"
}
