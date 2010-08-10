{
   "dispatch": [
      {"domain": "maps.google.com"},
      {"domain": "local.yahoo.com"},
      {"domain": "search.boston.com"},
      {"domain": "www.yelp.com"}
   ],
   "global": [{
      "cachable": 1,
      "datatype": "JSON",
      "name": "bcc",
      "source": "http://service.azigo.com/updates/kynetx/datasets/bcc.json",
      "type": "dataset"
   }],
   "meta": {
      "logging": "on",
      "name": "BCC Production"
   },
   "rules": [
      {
         "actions": [{"emit": "\nvar KOBJ_bcc_html = function(bcc_data, container_tag) {     var bcc_html = $K('<img>').attr(        {\"src\": \"http://frag.kobj.net/clients/15/images/BCC_logo.png\",         \"border\": \"0\",         \"align\": \"left\",         \"valign\": \"middle\"         });       if(bcc_data.link) {       bcc_html = $K('<a>').attr(         {\"class\": \"KOBJ_bcc\",          \"href\": bcc_data.link,  \t\"title\": bcc_data.text  \t}).append(bcc_html);     }       var td1 = $K('<td>').append(bcc_html);     var td2 = $K('<td>').attr(                  {\"bgcolor\": '#ccffcc'  \t\t}).text(bcc_data.text);       bcc_html = $K('<table>').css('padding','10px').append(                      $K('<tr>').append(td1).append(td2)  \t\t    );       return $K(container_tag).append(bcc_html);  };      KOBJ.bcc_googlemaps_ol = function() {    console.log(\"starting annotation\");   $K(\"div.local div.res div.one\").each(function() {     var pn = $K(this).find(\"span.tel\").text().replace(/\\(|\\)|-|\\.|\\s/g,'');     console.log(\"phone\", pn);     var o = KOBJ.pick(KOBJ['data']['bcc'][pn]);     if(o)  {       console.log(\"match: \", o);  \t$K(this).find(\"div.s\").after(KOBJ_bcc_html(o, '<div>'));     };     });   return true;  };  $K(\"form#q_form\").submit(function(e){    setTimeout(\"KOBJ.bcc_googlemaps_ol();\",2000);  });                        "}],
         "blocktype": "every",
         "callbacks": {"success": [{
            "attribute": "class",
            "trigger": null,
            "type": "click",
            "value": "KOBJ_bcc"
         }]},
         "cond": {
            "args": [
               {
                  "args": [{
                     "type": "str",
                     "val": "datasets"
                  }],
                  "predicate": "env",
                  "source": "page",
                  "type": "qualified"
               },
               {
                  "type": "str",
                  "val": "bcc"
               }
            ],
            "op": "like",
            "type": "ineq"
         },
         "emit": null,
         "foreach": [],
         "name": "bccgooglemaps",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": "^http://maps.google.com",
            "type": "prim_event",
            "vars": []
         }},
         "pre": [],
         "state": "active"
      },
      {
         "actions": [{"emit": "\nvar KOBJ_bcc_html = function(bcc_data, container_tag) {     var bcc_html = $K('<img>').attr(        {\"src\": \"http://frag.kobj.net/clients/15/images/BCC_logo.png\",         \"border\": \"0\",         \"align\": \"left\",         \"valign\": \"middle\"         });       if(bcc_data.link) {       bcc_html = $K('<a>').attr(         {\"class\": \"KOBJ_bcc\",          \"href\": bcc_data.link,  \t\"title\": bcc_data.text  \t}).append(bcc_html);     }       var td1 = $K('<td>').append(bcc_html);     var td2 = $K('<td>').attr(                  {\"bgcolor\": '#ccffcc'  \t\t}).text(bcc_data.text);       bcc_html = $K('<table>').css('padding','10px').append(                      $K('<tr>').append(td1).append(td2)  \t\t    );       return $K(container_tag).append(bcc_html);  };      $K(\"#yls-results tbody\").each(function() {   var pn = $K(this).find(\"span.tel\").text().replace(/\\(|\\)|-|\\.|\\s/g,'');   var o = KOBJ.pick(KOBJ['data']['bcc'][pn]);   if(o)  {     $K(this).find(\"td.yls-rs-bizinfo\").append(KOBJ_bcc_html(o, '<div>'));   }  });                        "}],
         "blocktype": "every",
         "callbacks": {"success": [{
            "attribute": "class",
            "trigger": null,
            "type": "click",
            "value": "KOBJ_bcc"
         }]},
         "cond": {
            "args": [
               {
                  "args": [{
                     "type": "str",
                     "val": "datasets"
                  }],
                  "predicate": "env",
                  "source": "page",
                  "type": "qualified"
               },
               {
                  "type": "str",
                  "val": "bcc"
               }
            ],
            "op": "like",
            "type": "ineq"
         },
         "emit": null,
         "foreach": [],
         "name": "bccyahoolocal",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": "^http://local.yahoo.com",
            "type": "prim_event",
            "vars": []
         }},
         "pre": [],
         "state": "active"
      },
      {
         "actions": [{"emit": "\nvar KOBJ_bcc_html = function(bcc_data, container_tag) {     var bcc_html = $K('<img>').attr(        {\"src\": \"http://frag.kobj.net/clients/15/images/BCC_logo.png\",         \"border\": \"0\",         \"align\": \"left\",         \"valign\": \"middle\"         });       if(bcc_data.link) {       bcc_html = $K('<a>').attr(         {\"class\": \"KOBJ_bcc\",          \"href\": bcc_data.link,  \t\"title\": bcc_data.text  \t}).append(bcc_html);     }       var td1 = $K('<td>').append(bcc_html);     var td2 = $K('<td>').attr(                  {\"bgcolor\": '#ccffcc'  \t\t}).text(bcc_data.text);       bcc_html = $K('<table>').css('padding','10px').append(                      $K('<tr>').append(td1).append(td2)  \t\t    );       return $K(container_tag).append(bcc_html);  };    $K(\"ul.listingLayout ol.linklist > li\").each(function() {   var pn = $K(this).find(\"ul.linklistNoBullets li:eq(1)\").text().split(\"|\").pop();   pn = pn.replace(/\\(|\\)|-|\\.|\\s/g,'');   var o = KOBJ.pick(KOBJ['data']['bcc'][pn]);   if(o)  {     $K(this).find(\"ul.linklistNoBullets\").append(KOBJ_bcc_html(o, '<li>'));   }    });                          "}],
         "blocktype": "every",
         "callbacks": {"success": [{
            "attribute": "class",
            "trigger": null,
            "type": "click",
            "value": "KOBJ_bcc"
         }]},
         "cond": {
            "args": [
               {
                  "args": [{
                     "type": "str",
                     "val": "datasets"
                  }],
                  "predicate": "env",
                  "source": "page",
                  "type": "qualified"
               },
               {
                  "type": "str",
                  "val": "bcc"
               }
            ],
            "op": "like",
            "type": "ineq"
         },
         "emit": null,
         "foreach": [],
         "name": "bccbostonsearch",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": "^http://search.boston.com",
            "type": "prim_event",
            "vars": []
         }},
         "pre": [],
         "state": "active"
      },
      {
         "actions": [{"emit": "\nvar KOBJ_bcc_html = function(bcc_data, container_tag) {     var bcc_html = $K('<img>').attr(        {\"src\": \"http://frag.kobj.net/clients/15/images/BCC_logo.png\",         \"border\": \"0\",         \"align\": \"left\",         \"valign\": \"middle\"         });       if(bcc_data.link) {       bcc_html = $K('<a>').attr(         {\"class\": \"KOBJ_bcc\",          \"href\": bcc_data.link,  \t\"title\": bcc_data.text  \t}).append(bcc_html);     }       var td1 = $K('<td>').append(bcc_html);     var td2 = $K('<td>').attr(                  {\"bgcolor\": '#ccffcc'  \t\t}).text(bcc_data.text);       bcc_html = $K('<table>').css('padding','10px').append(                      $K('<tr>').append(td1).append(td2)  \t\t    );       return $K(container_tag).append(bcc_html);  };    var KOBJ_insert_bcc_ol= function(rlist_selector, phone_selector) {    $K(rlist_selector).each(function() {     var pn = $K(this).find(phone_selector).text().replace(/\\(|\\)|-|\\.|\\s/g,'');     var o = KOBJ.pick(KOBJ['data']['bcc'][pn]);     if(o)  {       $K(this).append(KOBJ_bcc_html(o, '<div>'));     }    });    return true;  };    var KOBJ_bcc_yelp_binder = function() {    $K(\"#searchLayoutFilters li\").click(function(e){      setTimeout(      \"KOBJ_insert_bcc_ol('#businessresults div.businessresult','div.phone');KOBJ_bcc_yelp_binder();\",      5000);    });  };    KOBJ_insert_bcc_ol('#businessresults div.businessresult','div.phone');  KOBJ_bcc_yelp_binder();                      "}],
         "blocktype": "every",
         "callbacks": {"success": [{
            "attribute": "class",
            "trigger": null,
            "type": "click",
            "value": "KOBJ_bcc"
         }]},
         "cond": {
            "args": [
               {
                  "args": [{
                     "type": "str",
                     "val": "datasets"
                  }],
                  "predicate": "env",
                  "source": "page",
                  "type": "qualified"
               },
               {
                  "type": "str",
                  "val": "bcc"
               }
            ],
            "op": "like",
            "type": "ineq"
         },
         "emit": null,
         "foreach": [],
         "name": "bccyelp",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": "^http://www.yelp.com",
            "type": "prim_event",
            "vars": []
         }},
         "pre": [],
         "state": "active"
      }
   ],
   "ruleset_name": "a37x5"
}
