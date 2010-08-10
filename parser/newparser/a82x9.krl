{
   "dispatch": [
      {"domain": "finance.yahoo.com"},
      {"domain": "www.facebook.com"},
      {"domain": "espn.go.com"},
      {"domain": "www.cnn.com"},
      {"domain": "edition.cnn.com"}
   ],
   "global": [
      {
         "cachable": 0,
         "datatype": "JSON",
         "name": "feed_data_yahoo",
         "source": "http://feeds2.feedburner.com/rgbusiness",
         "type": "dataset"
      },
      {
         "cachable": 0,
         "datatype": "JSON",
         "name": "feed_data_espn",
         "source": "http://feeds2.feedburner.com/rgsports",
         "type": "dataset"
      },
      {
         "cachable": 0,
         "datatype": "JSON",
         "name": "feed_data_cnn",
         "source": "http://feeds2.feedburner.com/rgnews",
         "type": "dataset"
      },
      {
         "cachable": 0,
         "datatype": "JSON",
         "name": "feed_data_facebook",
         "source": "http://feeds2.feedburner.com/rglifestyles",
         "type": "dataset"
      },
      {
         "content": ".dti300 {\r\n  /*width:300px;*/\r\n  text-align:left;\r\n  background-color:#FAFAFA;\r\n  border: 1px solid #CCC;\r\n  padding: 2px;\r\n\r\n}\r\n\r\n.dti920 {\r\n  /*width:918px;*/\r\n  text-align:left;\r\n  background-color:#FAFAFA;\r\n  border: 1px solid #CCC;\r\n  padding: 2px;\r\n}\r\n\r\n.dti300 ul, .dti920 ul {\r\n  list-style-type: disc !important;\r\n  font-size:0.9em;\r\n  margin-left: 5px;\r\n  padding-left: 5px;\r\n}\r\n\r\n.dti300 ul li, .dti920 ul li {\r\n  list-style-type: disc !important;\r\n  margin-left: 10px;\r\n  padding-top: 1px;\r\n}\r\n\r\n.dtibox {\r\n  width:980px;\r\n  /*height:60px;*/\r\n  background-color:#FAFAFA;\r\n  margin:5px;\r\n  border: solid 1px #ccc;\r\n}\r\n\r\n.dtibox1 {\r\n  /*width:480px;\r\n  float:left;*/\r\n  display:inline;\r\n}\r\n\r\n.dtibox2 {\r\n  /*width:490px;\r\n  float:right;*/\r\n  background-color:#FAFAFA;\r\n  text-align:left;\r\n  display:inline;\r\n}\r\n\r\n.dtibox2 ul li {\r\n  margin-left:30px;\r\n}\r\n",
         "type": "css"
      },
      {"emit": "\nvar DTI_lightning_host = \"spidey.dtint.com\";\r\n      var DTI_NS = \"cms\";\r\n      var DTI_AUDIENCE_NS = \"ad\";\r\n      var DTI_Pub = \"DTNews\";\r\n      var DTI_Section = \"Home\";\r\n      var DTI_Debug = \"\";\r\n\r\n      function readRssFeeds(feedItems, divClass, headerElement, id) {\r\n          var outerDiv = $K(\"<div><\/div>\");\t  \r\n\r\n          var innerDiv = $K(\"<div><\/div>\");\r\n          innerDiv.attr(\"class\", divClass);\r\n          \r\n\t  if(headerElement == null) {\r\n\t\theaderElement = \"<p>Your local news from\"+\" \"+\"<img style='vertical-align:middle;' src='https://www.azigo.com/demo2/dti/register-guard-14.png' /><\/p>\";\r\n\t  }\r\n\r\n          var headerP = headerElement;\r\n          \r\n          innerDiv.append(headerP);\r\n\r\n\t  //Create a list item.\r\n\t  var feedListUl = $K(\"<ul><\/ul>\");\r\n\r\n\t  for(var i = 0; i < feedItems.length; i++) {\r\n\t\tif(i == 3)\r\n\t\t   break;\r\n\t\tvar feedItem = makeAnchorTag(feedItems[i].link.$t, null, feedItems[i].title.$t);\t\t      \r\n                feedListUl.append(makeListItem(null, null, feedItem));\r\n\t  }\r\n\r\n\t  innerDiv.append(feedListUl);          \r\n\r\n          outerDiv.append(innerDiv);\r\n          outerDiv.append(insertTrackingImage(id));\r\n\r\n          return outerDiv;\r\n      }\r\n\r\n      function readRssFeedsFromCnn(feedItems, id) {\r\n\t  var outerDiv = $K(\"<div><\/div>\");\r\n          outerDiv.attr({\"id\":\"dtibox\", \"class\":\"dtibox\"});\r\n\r\n          var innerDiv1 = $K(\"<div><\/div>\");\r\n          innerDiv1.attr(\"class\", \"dtibox1\");\r\n\r\n          var innerDiv2 = $K(\"<div><\/div>\");\r\n          innerDiv2.attr(\"class\", \"dtibox2\");\r\n\r\n          var adBanner = createAd(\"Banner\", 468, 60);\r\n          innerDiv1.append(adBanner);\r\n         \r\n          var headerP = \"<p>Your local news from\"+\" \"+\"<img style='vertical-align:middle;' src='https://www.azigo.com/demo2/dti/register-guard-14.png' /><\/p>\";\r\n          innerDiv2.append(headerP);\r\n\r\n\t  //Create a list item.\r\n\t  var feedListUl = $K(\"<ul><\/ul>\");\r\n\r\n\t  for(var i = 0; i < feedItems.length; i++) {\r\n\t\tif(i == 3)\r\n\t\t   break;\r\n\t\tvar feedItem = makeAnchorTag(feedItems[i].link.$t, null, feedItems[i].title.$t);\t\t      \r\n                feedListUl.append(makeListItem(null, null, feedItem));\r\n\t  }\r\n\r\n\t  innerDiv2.append(feedListUl);          \r\n\r\n          outerDiv.append(innerDiv1);\r\n          outerDiv.append(innerDiv2);\r\n          outerDiv.append(insertTrackingImage(id));\r\n\r\n          return outerDiv;\r\n      }\r\n\r\n      function makeListItem(listItemId, listItemClass, listItemContent) {\r\n           var listItem = $K(\"<li><\/li>\");\r\n           if(listItemClass != null) {\r\n               listItem.attr(\"class\", listItemClass);\r\n           }\r\n\t   if(listItemId != null) {\r\n\t       listItem.attr(\"id\", listItemId);\r\n\t   }\r\n           listItem.append(listItemContent);\r\n           return listItem;        \r\n      }\r\n\r\n      function makeAnchorTag(aUrl, aClass, aText)\r\n      {\r\n           var anchorTag = $K(\"<a><\/a>\");\r\n           anchorTag.attr(\"href\", aUrl);\r\n           if(aClass != null) {\r\n               anchorTag.attr(\"class\", aClass);\r\n           }\r\n           anchorTag.append(aText);\r\n           return anchorTag;\r\n      }\r\n\r\n      function createAd(adName,adWidth,adHeight)\r\n      {\r\n\t   var frameElement = $K(\"<iframe><\/iframe>\");\r\n\t   frameElement.attr({\r\n\t\t\t\t\"src\":\"http://\"+DTI_lightning_host+\"/csp/\"+DTI_NS+\"/sites/\"+DTI_Pub+\"/assets/includes/AdServerTest.csp?areaName=\"+adName+adWidth+\"x\"+adHeight+\"&pubName=\"+DTI_Pub+\"&sectionName=\"+DTI_Section+\"\",\r\n\t\t\t\t\"width\":adWidth,\r\n\t\t\t\t\"height\":adHeight,\r\n\t\t\t\t\"frameborder\":\"0\",\r\n\t\t\t\t\"scrolling\":\"no\",\r\n\t\t\t\t\"vspace\":\"0\",\r\n\t\t\t\t\"style\":\"left:0pt;position:relative;top:0pt;\",\r\n\t\t\t\t\"marginwidth\":\"0\",\r\n\t\t\t\t\"marginheight\":\"0\",\r\n\t\t\t\t\"hspace\":\"0\",\r\n\t\t\t\t\"allowtransparency\":\"true\"\r\n\t\t\t    });\r\n\r\n\t   return frameElement;\r\n      }\r\n\r\n      function DTI_TARGET(vid, publication, websection, keywords)\r\n      {\r\n\t   var w = 0;\r\n\t   var h = 0;\r\n\r\n\t   // this code randomizes the URL, which prevents caching.\r\n\t   // an Apache rewrite tun is needed to decode the radon path\r\n\t   var DTI_RandomNumber=Math.floor(Math.random()*1000000);\r\n\t   var DTI_path = \"/audience/stats/\"+DTI_RandomNumber+\"?\";\r\n\r\n\t   var a = $K(\"<img><\/img>\");\r\n\t   a.attr({\r\n\t\t\t\"src\":\"http://\"+DTI_lightning_host+DTI_path+\"&source=\"+websection+\"&Cookie=\"+vid+\"&Publication=\"+publication+\"&debug=\"+DTI_Debug+\"&Keywords=\"+keywords+\"\",\r\n\t\t\t\"width\":w,\r\n\t\t\t\"height\":h,\r\n\t\t\t\"alt\":\"\"\r\n\t\t });\r\n\r\n\t   return a;\r\n      }\r\n\r\n      function DTI_GetSEOKeywords()\r\n      {\r\n  \t   var content = \"\";\r\n\t   var meta=document.getElementsByTagName(\"meta\");\r\n\t   for (i=0;i<meta.length;i++) {\r\n\t       nameAttribute = meta[i].name.search(/keywords/);\r\n\t       if (nameAttribute!= -1) {\r\n\t\t  content = meta[i].content;\r\n\t       }\r\n\t   }\r\n\t   return content;\r\n      }\r\n\r\n      function DTI_GetOmnitureSection()\r\n      {  \r\n           var websection = \"\";\r\n\t   var meta=document.getElementsByTagName(\"meta\");\r\n\r\n\t   for (i=0;i<meta.length;i++) {\r\n\t       nameAttribute = meta[i].name.search(/section/);\r\n\r\n\t       if (meta[i].name.toLowerCase() == \"section\") {\r\n\t\t  websection = meta[i].content;\r\n\t \t  break;\r\n\t       }\r\n\t   }\r\n\t   return websection;\r\n      }\r\n\r\n      function insertTrackingImage(id) {\r\n\t   // This code MUST be replaced by Azigo with an Azigo id. Our cookie will not be found on CNN.\r\n           // The Azigo should be based on the DTI_GetCookie('dtAuth');\r\n\t   \r\n           var datasetId = id;\r\n\t   // we now need to know the section. Examples are : sports, politics, food, search\r\n\t   // we currently try to get this from Omniture, perhaps Azigo has a better idea\r\n\t   var websection = DTI_GetOmnitureSection();\r\n\t   if ((websection == null) || (websection == \"\"))\r\n\t   {\t\r\n\t\twebsection = \"undefined\";\t// hopefully we can set a web section here\r\n\t   }\r\n\t   // note that we might want something like 'CNN\", however,\r\n\t   // information about which pub doen't really help us target ads\r\n\t   var publication = \"azigo\"; \r\n           // This code could be replaced or agumented by Azigo.\r\n           // we cant the keywords of the secion, story or search\r\n\t   var  keywords = DTI_GetSEOKeywords();\r\n\t   if ((keywords == ''))\r\n\t   {\r\n\t\tkeywords = \"undefined\";\r\n\t   }\r\n\t   return(DTI_TARGET(datasetId, publication, websection, keywords));\r\n      }\r\n\r\n            "}
   ],
   "meta": {
      "description": "\nDTI demo with RSS feeds\r\n\n",
      "logging": "off",
      "name": "DTI Demo2"
   },
   "rules": [
      {
         "actions": [
            {"emit": "\nvar displayDiv = readRssFeeds(rss_items, \"dti300\", null, id);\n\n\t\tdisplayDiv.append(createAd(\"Box\", 300, 250));\n\t                    "},
            {"action": {
               "args": [
                  {
                     "type": "str",
                     "val": "#yfi_fp_ad_lrec"
                  },
                  {
                     "type": "var",
                     "val": "displayDiv"
                  }
               ],
               "modifiers": null,
               "name": "before",
               "source": null
            }}
         ],
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
         "emit": null,
         "foreach": [],
         "name": "yahoo_finance",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": "http://finance.yahoo.com",
            "type": "prim_event",
            "vars": []
         }},
         "pre": [
            {
               "lhs": "rss_items",
               "rhs": {
                  "args": [{
                     "type": "var",
                     "val": "feed_data_yahoo"
                  }],
                  "predicate": "items",
                  "source": "rss",
                  "type": "qualified"
               },
               "type": "expr"
            },
            {
               "lhs": "id",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "datasets"
                  }],
                  "predicate": "param",
                  "source": "page",
                  "type": "qualified"
               },
               "type": "expr"
            }
         ],
         "state": "active"
      },
      {
         "actions": [
            {"emit": "\nvar displayDiv = readRssFeeds(rss_items, \"dti300\", null, id);\n\n\t\tvar bannerParent = $K(\"<div><\/div>\");\n\t\tvar bannerDiv = createAd(\"Box\", 200, 150);\n\t\tbannerParent.append(bannerDiv);\n\t\tbannerParent.append(\"<p>Ad from DTI Audience Reach<\/p>\");\n\n                displayDiv.append(bannerParent);\n\t                "},
            {"action": {
               "args": [
                  {
                     "type": "str",
                     "val": "#home_sponsor_nile"
                  },
                  {
                     "type": "var",
                     "val": "displayDiv"
                  }
               ],
               "modifiers": null,
               "name": "prepend",
               "source": null
            }}
         ],
         "blocktype": "every",
         "callbacks": null,
         "cond": {
            "type": "bool",
            "val": "true"
         },
         "emit": null,
         "foreach": [],
         "name": "facebook",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": "http://www.facebook.com",
            "type": "prim_event",
            "vars": []
         }},
         "pre": [
            {
               "lhs": "rss_items",
               "rhs": {
                  "args": [{
                     "type": "var",
                     "val": "feed_data_facebook"
                  }],
                  "predicate": "items",
                  "source": "rss",
                  "type": "qualified"
               },
               "type": "expr"
            },
            {
               "lhs": "id",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "datasets"
                  }],
                  "predicate": "param",
                  "source": "page",
                  "type": "qualified"
               },
               "type": "expr"
            }
         ],
         "state": "active"
      },
      {
         "actions": [
            {"emit": "\nvar displayDiv = readRssFeeds(rss_items, \"dti920\", null, id);\n\t                    "},
            {"action": {
               "args": [
                  {
                     "type": "str",
                     "val": "#AdContainer"
                  },
                  {
                     "args": [
                        {
                           "type": "str",
                           "val": "Box"
                        },
                        {
                           "type": "num",
                           "val": 300
                        },
                        {
                           "type": "num",
                           "val": 250
                        }
                     ],
                     "function_expr": {
                        "type": "var",
                        "val": "createAd"
                     },
                     "type": "app"
                  }
               ],
               "modifiers": null,
               "name": "replace_inner",
               "source": null
            }},
            {"action": {
               "args": [
                  {
                     "type": "str",
                     "val": "#top-stories"
                  },
                  {
                     "type": "var",
                     "val": "displayDiv"
                  }
               ],
               "modifiers": null,
               "name": "append",
               "source": null
            }}
         ],
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
         "emit": null,
         "foreach": [],
         "name": "espn",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": "http://espn.go.com",
            "type": "prim_event",
            "vars": []
         }},
         "pre": [
            {
               "lhs": "rss_items",
               "rhs": {
                  "args": [{
                     "type": "var",
                     "val": "feed_data_espn"
                  }],
                  "predicate": "items",
                  "source": "rss",
                  "type": "qualified"
               },
               "type": "expr"
            },
            {
               "lhs": "id",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "datasets"
                  }],
                  "predicate": "param",
                  "source": "page",
                  "type": "qualified"
               },
               "type": "expr"
            }
         ],
         "state": "active"
      },
      {
         "actions": [{"emit": "\nvar displayDiv = readRssFeedsFromCnn(rss_items, id);\n\t\tif($K(\"#cnn_maincntnr\").length) {\n\t\t\t$K(\"#cnn_maincntnr\").prepend(displayDiv);\n\t\t}\n\t\telse {\n\t\t\t$K(\".cnn_maincntnr\").prepend(displayDiv);\n\t\t}\n\n\t                "}],
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
         "emit": null,
         "foreach": [],
         "name": "cnn",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": "^http://edition.cnn.com|^http://www.cnn.com",
            "type": "prim_event",
            "vars": []
         }},
         "pre": [
            {
               "lhs": "rss_items",
               "rhs": {
                  "args": [{
                     "type": "var",
                     "val": "feed_data_cnn"
                  }],
                  "predicate": "items",
                  "source": "rss",
                  "type": "qualified"
               },
               "type": "expr"
            },
            {
               "lhs": "id",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "datasets"
                  }],
                  "predicate": "param",
                  "source": "page",
                  "type": "qualified"
               },
               "type": "expr"
            }
         ],
         "state": "active"
      }
   ],
   "ruleset_name": "a82x9"
}
