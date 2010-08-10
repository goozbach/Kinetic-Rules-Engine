{
   "dispatch": [
      {"domain": "www.google.com"},
      {"domain": "www.bing.com"},
      {"domain": "search.yahoo.com"},
      {"domain": "www.avis.com"}
   ],
   "global": [{"emit": "\nKOBJ.citi = {    \t\"target.com\":    [{\"link\":\"https://www.bonuscashcenter.citicards.com/searchresults/merchantsearchresults.aspx?salechannelid=2&categoryid=28&catVisible=false\",\"text\":\"Earn 2% Cash Back!\"}],    \t\"overstock.com\":    [{\"link\":\"https://www.bonuscashcenter.citicards.com/searchresults/merchantsearchresults.aspx?salechannelid=2&categoryid=28&catVisible=false\",\"text\":\"Earn 3% Cash Back!\"}],    \t\"shoes.com\":    [{\"link\":\"https://www.bonuscashcenter.citicards.com/searchresults/merchantsearchresults.aspx?salechannelid=2&categoryid=28&catVisible=false\",\"text\":\"Earn 5% Cash Back!\"}],    \t\"shoebuy.com\":    [{\"link\":\"https://www.bonuscashcenter.citicards.com/searchresults/merchantsearchresults.aspx?salechannelid=2&categoryid=28&catVisible=false\",\"text\":\"Earn 7% Cash Back!\"}]    };                      "}],
   "meta": {
      "description": "\nCiti Demo   \n",
      "logging": "off",
      "name": "Citi - Cash Returns Card"
   },
   "rules": [
      {
         "actions": [{"action": {
            "args": [{
               "type": "var",
               "val": "citi_selector"
            }],
            "modifiers": [
               {
                  "name": "name",
                  "value": {
                     "type": "str",
                     "val": "remindme"
                  }
               },
               {
                  "name": "head_image",
                  "value": {
                     "type": "str",
                     "val": "http://www.azigo.com/sales-demo/remindme_bar40_l.png"
                  }
               },
               {
                  "name": "tail_image",
                  "value": {
                     "type": "str",
                     "val": "http://frag.kobj.net/clients/1024/images/remindme_bar40_r.png"
                  }
               },
               {
                  "name": "left_margin",
                  "value": {
                     "type": "str",
                     "val": "46px"
                  }
               }
            ],
            "name": "annotate_search_results",
            "source": null
         }}],
         "blocktype": "every",
         "callbacks": null,
         "cond": {
            "args": [],
            "function_expr": {
               "type": "var",
               "val": "truth"
            },
            "type": "app"
         },
         "emit": "\nfunction citi_selector(obj){           function mk_anchor (o, key) {        return $K('<a href=' + o.link + '/>').attr(          {\"class\": 'KOBJ_'+key, \"title\": o.text || \"Click here for discounts!\"}).html(\"<img xwidth='30px' style='height:34px; border: 0px solid blue; margin-top:5px' src='http://www.azigo.com/sales-demo/CashReturns.png' border='0'>\");      }      var host = KOBJ.get_host($K(obj).find(\"span.url, cite\").text());      host = host.replace(/^www./, \"\");      var o = KOBJ.pick(KOBJ.citi[host]);      if(o) {         return mk_anchor(o,'citi');      } else {        false;      }        }                ",
         "foreach": [],
         "name": "citi_google",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": "www.google.com|search.yahoo.com|www.bing.com",
            "type": "prim_event",
            "vars": []
         }},
         "pre": [],
         "state": "active"
      },
      {
         "actions": [
            {"action": {
               "args": [
                  {
                     "type": "str",
                     "val": ""
                  },
                  {
                     "type": "var",
                     "val": "invite"
                  }
               ],
               "modifiers": [
                  {
                     "name": "opacity",
                     "value": {
                        "type": "num",
                        "val": 1
                     }
                  },
                  {
                     "name": "background_color",
                     "value": {
                        "type": "str",
                        "val": "#BEBA8B"
                     }
                  },
                  {
                     "name": "sticky",
                     "value": {
                        "type": "bool",
                        "val": "true"
                     }
                  }
               ],
               "name": "notify",
               "source": null
            }},
            {"action": {
               "args": [{
                  "type": "str",
                  "val": "span.no_thanks"
               }],
               "modifiers": null,
               "name": "close_notification",
               "source": null
            }}
         ],
         "blocktype": "every",
         "callbacks": null,
         "cond": {
            "type": "bool",
            "val": "true"
         },
         "emit": "\nshow_disclosure= function(){      $K('#screenOne').hide();      $K('#screenTwo').show();    };        go_back = function(){      $K('#screenOne').show();      $K('#screenTwo').hide();    };                ",
         "foreach": [],
         "name": "citi_avis",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": "http://www.avis.com/car-rental/reservation/select-car.ac",
            "type": "prim_event",
            "vars": []
         }},
         "pre": [{
            "lhs": "invite",
            "rhs": " \n<div>    <div id=\"kobj_discount\" style=\"padding: 3pt;      -moz-border-radius: 5px;      -webkit-border-radius: 5px;      background-color: #FFFFFF;      width: 225px;      text-align: center;      color: #BEBA8B;      border: 1px solid black; margin-bottom:30px\">        <div id=\"screenOne\">        <table border=\"0\" width=\"220px\">    <tr>     <td><span style=\"color: #72BDCA; font-weight:bold;\">You're Covered with<\/span><\/td>     <td><img src=\"https://www.azigo.com/sales-demo/CitiLogo.png\" width=\"70px\"><\/td>      <\/tr>    <\/table>        <table border=\"0\" style=\"margin-top: 20px; text-align:left\" align=\"left\" width=\"220px\">    <tr>     <td>      <span>Reserve and rent a vehicle with your Citi card, and we'll cover the insurance.<\/span><br/>     <\/td>    <\/tr>    <tr>      <td>      <span>Just decline Avis' collision loss/damage waiver insurance... and enjoy the trip!<\/span>     <\/td>    <\/tr>    <\/table>            <table border=\"0\" style=\"margin-top: 20px;\" width=\"220px\" align=\"middle\">    <tr>       <td>      <span style=\"cursor: pointer; align:middle;\" class=\"no_thanks\"><img src=\"https://www.azigo.com/sales-demo/CloseButton.png\" width=\"160px\" ><\/span>     <\/td>    <\/tr>    <tr>       <td>      <span style=\"cursor: pointer; align:middle; margin-top:5px;\" onclick=\"show_disclosure();\">View additional disclosure<\/span>     <\/td>    <\/tr>    <\/table>    <\/div>                <div id=\"screenTwo\" style=\"display:none;\">    <table>    <tr style=\"margin-top: 30px;\">     <td><span style=\"color: #72BDCA; font-weight:bold\">You're Covered with<\/span><\/td>     <td><img src=\"https://www.azigo.com/sales-demo/CitiLogo.png\" width=\"70px\"><\/td>      <\/tr>    <\/table>    <br/>    <div style=\"margin: 10px;\">      <span style=\"margin-top:3px;text-align:left;\">MasterRental&reg; Insurance coverage (up to $50,000 per incident) is secondary coverage and is underwritten by Virginia Surety Company, Inc. Certain conditions, restrictions and exclusions apply. Not all vehicles and countries are covered. Details of coverage will be provided upon card membership.<\/span><br/>      <span style=\"cursor: pointer; margin-top:10px; text-align:middle;\"><a href=# onclick=\"go_back();\" style=\"margin-top:10px; text-align:middle;\">Go Back<\/a><\/span>    <\/div>    <\/div>            <\/div>    <div style=\"float:right; align:right; text-align:right; margin-top:-20px; \" height=\"30px\">    <span>       <img src=\"http://www.azigo.com/sales-demo/PoweredByAzigo.png\" style=\"margin-bottom:5px; float:right; align:right;\">    <\/span>    <\/div>    <\/div>       \n ",
            "type": "here_doc"
         }],
         "state": "active"
      }
   ],
   "ruleset_name": "a58x18"
}
