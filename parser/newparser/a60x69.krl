{
   "dispatch": [
      {"domain": "dnb.com"},
      {"domain": "acxiom.com"}
   ],
   "global": [
      {
         "lhs": "DNB",
         "rhs": {
            "type": "hashraw",
            "val": [
               {
                  "lhs": "www.acxiom.com",
                  "rhs": {
                     "type": "hashraw",
                     "val": [{
                        "lhs": "pageLocation",
                        "rhs": {
                           "type": "str",
                           "val": "http://k-misc.s3.amazonaws.com/resources/a41x77/reports/acxiom.html"
                        }
                     }]
                  }
               },
               {
                  "lhs": "www.dnb.com",
                  "rhs": {
                     "type": "hashraw",
                     "val": [{
                        "lhs": "pageLocation",
                        "rhs": {
                           "type": "str",
                           "val": "http://k-misc.s3.amazonaws.com/resources/a41x77/reports/dun_brad.html"
                        }
                     }]
                  }
               }
            ]
         },
         "type": "expr"
      },
      {
         "cachable": 0,
         "datatype": "JSON",
         "name": "twitter_search",
         "source": "http://search.twitter.com/search.json",
         "type": "datasource"
      },
      {
         "cachable": 0,
         "datatype": "JSON",
         "name": "news_search1",
         "source": "http://pipes.yahoo.com/pipes/pipe.run",
         "type": "datasource"
      },
      {
         "cachable": 0,
         "datatype": "JSON",
         "name": "news_search",
         "source": "http://news.google.com/news",
         "type": "datasource"
      },
      {
         "cachable": 0,
         "datatype": "JSON",
         "name": "backtweets",
         "source": "http://backtweets.com/search.rss",
         "type": "datasource"
      },
      {
         "cachable": 0,
         "datatype": "JSON",
         "name": "blog_search",
         "source": "http://blogsearch.google.com/blogsearch_feeds",
         "type": "datasource"
      },
      {
         "cachable": {
            "period": "minutes",
            "value": "5"
         },
         "datatype": "JSON",
         "name": "searchBackTweets",
         "source": "http://backtweets.com/search.json?key=23783944b830fb6986bc&q=",
         "type": "datasource"
      },
      {
         "content": "\n      div#tweets p {\n        margin: 0;\n        padding: 0;\n      }\n      .KOBJ_statusbar_content * {\n        margin: 0;\n        padding: 0;\n        border: 0;\n        outline: 0;\n        font-size: 24px;\n        font-size: 100%;\n        font-weight: normal;\n        vertical-align: baseline;\n        background: transparent;\n        color: #000;\n        font-family: arial,sans-serif;\n        direction: ltr;\n        line-height: 1;\n        letter-spacing: normal;\n        text-align: left;\n        text-decoration: none;\n        text-indent: 0;\n        text-shadow: none;\n        text-transform: none;\n        vertical-align: baseline;\n        white-space: normal;\n        word-spacing: normal;\n        font: normal normal normal medium/1 sans-serif ;\n        list-style: none;\n        clear: none;\n      }\n      .KOBJ_statusbar_content {\n        text-align: left;\n      }\n      #kGrowl .kGrowl-closer.default, #kGrowl .close {\n        display: none;\n      }\n      .kGrowl-notification a {\n        color: #0099CC;\n      }\n      .kGrowl-notification {\n        color: #737373;\n      }\n      .KOBJ_tweetItems {\n        margin: 10px;\n        border-bottom: 1px dashed #D2DADA;\n        padding-bottom: 10px;\n      }\n      #KOBJ_tweetList {\n        list-style-position: outside;\n        margin: 0;\n        padding: 0;\n        list-style-type: none;\n        list-style-image: none;\n      }\n      .KOBJ_tweetDiv {\n        height: 250px;\n        overflow-x: auto;\n        overflow-y: auto;\n        background-color: #222;\n        opacity: 0.8;\n      }\n      .KOBJ_tweetDiv p {\n        background: none;\n        color: #FFFFFF;\n        font-family: arial,sans-serif;\n        font-size: 9pt;\n      }\n      .KOBJ_tweetDiv a {\n        color: #0099CC;\n      }\n      .KOBJ_tweetDiv li {list-style-position;\n        list-style-type: none;\n        padding-left: none\n      }\n      #KOBJ_tweetLogo {\n        background-image: url(\"http://dl.dropbox.com/u/1446072/apps/d%26b/dnb_reputation.jpg\");\n        height: 50px;\n        display: block;\n        margin-bottom: 10px;\n      }\n      .KOBJ_tweetedImage {\n        float: left;\n        margin-right: 10px;\n        margin-top: 5px;\n      }\n      .KOBJ_tweetedUser {\n      }\n      .KOBJ_tweetedTweet {\n      }\n      #KOBJ_tweetLoading {\n        display: none;\n      }\n      .kGrowl-notification a {\n        color: #0099CC;\n      }\n      .kGrowl-notification {\n        color: #737373;\n      }\n      #blog_headlines p {\n        margin: 10px;\n        border-bottom: 1px dashed #D2DADA;\n        padding-bottom: 10px;\n        min-height: 32px;\n      }\n      #KOBJ_tweetList {\n        list-style-position: outside;\n        margin: 0;\n        padding: 0;\n        list-style-type: none;\n        list-style-image: none;\n      }\n      #blog_headlines {\n        height: 250px;\n        overflow-x: auto;\n        overflow-y: auto;\n        background-color: #222;\n        opacity: 0.8;\n      }\n      .KOBJ_tweetDiv p {\n        background: none;\n        color: #FFFFFF;\n        font-family: arial,sans-serif;\n        font-size: 9pt;\n      }\n      .KOBJ_tweetDiv a {\n        color: #0099CC;\n      }\n      .KOBJ_tweetDiv li {list-style-position;\n        list-style-type: none;\n        padding-left: none\n      }\n      .KOBJ_tweetedImage {\n        float: left;\n        margin-right: 10px;\n        margin-top: 5px;\n      }\n      .KOBJ_tweetedUser {\n      }\n      .KOBJ_tweetedTweet {\n      }\n      #KOBJ_tweetLoading {\n        display: none;\n      }\n      .KOBJ_statusbar_content #animated_db {\n        padding: 7px 0 0 8px;\n        float: left;\n      }\n      .KOBJ_statusbar_content h3 a {\n        float: left;\n        color: white;\n        font-size: 20px;\n        padding: 16px 0 0 5px;\n      }\n      .KOBJ_statusbar_content h3 a img, h3.confirm img {\n        width: 85px;\n      }\n      .KOBJ_statusbar_content h3.status_right {\n        float: right;\n        padding-right: 23px;\n        color: white;\n        font-size: 20px;\n        padding: 22px 0 0 17px;\n      }\n      #kGrowl {\n        display: none;\n      }\n      #kGrowl a {\n        color: white;\n        text-decoration: none;\n      }\n      #KOBJ_PopIn_Dialog {\n        left: 50%;\n        margin-top: -25%;\n        margin-left: -25%;\n        width: 50%;\n      }\n      .confirm {\n        float: left;\n        padding-left: 20px;\n        padding-top: 16px;\n        color: white; font-size 14px;\n        display: none;\n      }\n      p.confirm {\n        font-size: 17px;\n        padding-top: 10px;\n        width: 140px;\n      }\n      h3.confirm {\n        font-size: 40px;\n        padding-left: 9px;\n      }\n      .whitey {\n        color: white !important;\n        float: left !important;\n        font-size: 20px;\n        padding: 22px 0 0 3px; \n      }\n    ",
         "type": "css"
      },
      {"emit": " \n      KOBJ.watchDOM(\"#a60x69_social_report\", addClick69);\n      function addClick69() {\n          $K(\"#paid_report\").click(function() {\n              $K(\".confirm\").css({\n                  \"display\": \"block\"\n              });\n              $K(\"#yes6069\").click(function() {\n                  KOBJ_create_pop_in();\n                  $K(\".confirm\").css({\n                      \"display\": \"none\"\n                  });\n                  $K(\"h3.status_right\").html(\"Balance: $450\");\n                  $K(\"#paid_report\").unbind();\n                  $K(\"#paid_report\").click(function() {\n                      KOBJ_create_pop_in();\n                  });\n              });\n              $K(\"#no6069\").click(function() {\n                  $K(\".confirm\").css({\n                      \"display\": \"none\"\n                  });\n              });\n          });\n          $K(\"#a60x69_social_report\").click(function() {\n              $K(\"#kGrowl\").toggle();\n          });\n          $K(\"#free_report a\").click(function() {\n              KOBJ_create_pop_in();\n              temp_src = $K(\"iframe\").attr(\"src\");\n              $K(\"iframe\").attr({\n                  \"src\": \"http://dl.dropbox.com/u/1446072/Business%20Information%20Report%20with%20Auto-Refresh-20100115152714.html\"\n              });\n              $K(\"#KOBJ_Close\").click(function() {\n                  $K(\"iframe\").attr({\n                      \"src\": temp_src\n                  });\n                  $K(\"#KOBJ_Close\").unbind();\n                  $K(\"#KOBJ_Close\").click(KOBJ_close_pop_in);\n              });\n          });\n      }\n      KOBJ.watchDOM(\"#blog_headlines\", addTweetRatings69);\n      function addTweetRatings69() {\n          $K(\"#blog_headlines p\").each(function(index, element) {\n              if (index % 2) {\n                  $K(element).prepend(\"<img src='http://dl.dropbox.com/u/1446072/apps/d%26b/negative.png' style='float: left; padding: 4px 7px 0pt 0pt;'/>\");\n              } else if (index % 3) {\n                  $K(element).prepend(\"<img src='http://dl.dropbox.com/u/1446072/apps/d%26b/good.png' style='float: left; padding: 4px 7px 0pt 0pt;'/>\");\n              } else {\n                  $K(element).prepend(\"<img src='http://dl.dropbox.com/u/1446072/apps/d%26b/unknown.png' style='float: left; padding: 4px 7px 0pt 0pt;'/>\");\n              }\n          });\n          KOBJ.log(\"item\");\n      }\n      var BrowserDetect = {\n          init: function() {\n              this.browser = this.searchString(this.dataBrowser) || \"An unknown browser\";\n              this.version = this.searchVersion(navigator.userAgent) || this.searchVersion(navigator.appVersion) || \"an unknown version\";\n              this.OS = this.searchString(this.dataOS) || \"an unknown OS\";\n          },\n          searchString: function(data) {\n              for (var i = 0; i < data.length; i++) {\n                  var dataString = data[i].string;\n                  var dataProp = data[i].prop;\n                  this.versionSearchString = data[i].versionSearch || data[i].identity;\n                  if (dataString) {\n                      if (dataString.indexOf(data[i].subString) != -1) return data[i].identity;\n                  } else if (dataProp) return data[i].identity;\n              }\n          },\n          searchVersion: function(dataString) {\n              var index = dataString.indexOf(this.versionSearchString);\n              if (index == -1) return;\n              return parseFloat(dataString.substring(index + this.versionSearchString.length + 1));\n          },\n          dataBrowser: [{\n              string: navigator.userAgent,\n              subString: \"Chrome\",\n              identity: \"Chrome\"\n          },\n          {\n              string: navigator.userAgent,\n              subString: \"OmniWeb\",\n              versionSearch: \"OmniWeb/\",\n              identity: \"OmniWeb\"\n          },\n          {\n              string: navigator.vendor,\n              subString: \"Apple\",\n              identity: \"Safari\",\n              versionSearch: \"Version\"\n          },\n          {\n              prop: window.opera,\n              identity: \"Opera\"\n          },\n          {\n              string: navigator.vendor,\n              subString: \"iCab\",\n              identity: \"iCab\"\n          },\n          {\n              string: navigator.vendor,\n              subString: \"KDE\",\n              identity: \"Konqueror\"\n          },\n          {\n              string: navigator.userAgent,\n              subString: \"Firefox\",\n              identity: \"Firefox\"\n          },\n          {\n              string: navigator.vendor,\n              subString: \"Camino\",\n              identity: \"Camino\"\n          },\n          {\n              string: navigator.userAgent,\n              subString: \"Netscape\",\n              identity: \"Netscape\"\n          },\n          {\n              string: navigator.userAgent,\n              subString: \"MSIE\",\n              identity: \"Explorer\",\n              versionSearch: \"MSIE\"\n          },\n          {\n              string: navigator.userAgent,\n              subString: \"Gecko\",\n              identity: \"Mozilla\",\n              versionSearch: \"rv\"\n          },\n          {\n              string: navigator.userAgent,\n              subString: \"Mozilla\",\n              identity: \"Netscape\",\n              versionSearch: \"Mozilla\"\n          }],\n          dataOS: [{\n              string: navigator.platform,\n              subString: \"Win\",\n              identity: \"Windows\"\n          },\n          {\n              string: navigator.platform,\n              subString: \"Mac\",\n              identity: \"Mac\"\n          },\n          {\n              string: navigator.userAgent,\n              subString: \"iPhone\",\n              identity: \"iPhone/iPod\"\n          },\n          {\n              string: navigator.platform,\n              subString: \"Linux\",\n              identity: \"Linux\"\n          }]\n      };\n      BrowserDetect.init();\n      os = BrowserDetect.OS; \n    "}
   ],
   "meta": {
      "author": "Mike Grace",
      "logging": "on",
      "name": "Dun and Bradstreet"
   },
   "rules": [
      {
         "actions": [
            {"action": {
               "args": [{
                  "type": "str",
                  "val": "<img id='animated_db' src='http://dl.dropbox.com/u/1446072/dnb_duns_reg_click_english_110x36_animation_gif.gif' /><h3 id='a60x69_social_report'><a href='#'><img src='http://dl.dropbox.com/u/1446072/apps/d%26b/reputation.png'/><\/a><\/h3><h3 id='free_report'><a href='#'><img src='http://dl.dropbox.com/u/1446072/apps/d%26b/free.png'/><h3 id='paid_h3'><a id='paid_report' href='#'><img src='http://dl.dropbox.com/u/1446072/apps/d%26b/paid.png'/><\/a><\/h3><p class='confirm'>Purchase a paid report for $50.00?<\/p><h3 class='confirm' id='yes6069'><img src='http://dl.dropbox.com/u/1446072/apps/d%26b/yes.png'/><\/h3><h3 class='confirm' id='no6069'><img src='http://dl.dropbox.com/u/1446072/apps/d%26b/no.png'/><\/h3><h3 class='status_right'>Balance: $500<\/h3>"
               }],
               "modifiers": [
                  {
                     "name": "sticky",
                     "value": {
                        "type": "bool",
                        "val": "true"
                     }
                  },
                  {
                     "name": "height",
                     "value": {
                        "type": "str",
                        "val": "50px"
                     }
                  }
               ],
               "name": "status_bar",
               "source": null
            }},
            {"action": {
               "args": [{
                  "type": "var",
                  "val": "msg"
               }],
               "modifiers": [
                  {
                     "name": "position",
                     "value": {
                        "type": "str",
                        "val": "right-top"
                     }
                  },
                  {
                     "name": "imageLocation",
                     "value": {
                        "type": "str",
                        "val": "http://k-misc.s3.amazonaws.com/resources/a41x77/.png"
                     }
                  },
                  {
                     "name": "link_color",
                     "value": {
                        "type": "str",
                        "val": "transparent"
                     }
                  }
               ],
               "name": "sidetab",
               "source": null
            }},
            {"emit": "\n        setInterval(function() {\n            $K(\"#KOBJ_PopIn_Dialog\").css(\"left\", \"50%\");\n            $K(\"#KOBJ_PopIn_Dialog\").css(\"margin-right\", \"-25%\");\n            $K(\"#KOBJ_PopIn_Dialog\").css(\"margin-left\", \"-25%\");\n            $K(\"#KOBJ_PopIn_Dialog\").width(\"50%\");\n            $K(\"#KOBJ_PopIn_Dialog\").css(\"top\", \"20%\");\n            $K(\"#KOBJ_PopIn_Dialog\").height(\"60%\");\n            var heightToBe = $K(\"#KOBJ_PopIn_Dialog\").height() - 35;\n            $K(\"#KOBJ_PopIn_Content > iframe\").height(heightToBe);\n            $K(\"#KOBJ_Close\").css(\"font-size\", \"14pt\");\n            $K(\"#KOBJ_PopIn_Link\").css({\n                \"display\": \"none\"\n            });\n        },\n        500);\n        KOBJ.log($K(window).width());\n        if ($K(window).width() < 946) {\n            $K(\".KOBJ_statusbar_content #animated_db\").css({\n                \"width\": \"50px\",\n                \"padding-top\": \"24px\"\n            });\n            $K(\".KOBJ_statusbar_content h3 a img\").css({\n                \"width\": \"50px\"\n            });\n            $K(\".KOBJ_statusbar_content h3 a\").css({\n                \"padding-top\": \"28px\"\n            });\n            $K(\".whitey\").css({\n                \"display\": \"none\"\n            });\n            $K(\".KOBJ_statusbar_content h3.status_right\").css({\n                \"font-size\": \"12px\",\n                \"padding-top\": \"33px\"\n            });\n            $K(\"#KOBJ_status_bar_wrapper\").css({\n                \"height\": \"29px !important\"\n            });\n            $K(\"p.confirm\").css({\n                \"font-size\": \"11px\",\n                \"width\": \"123px\",\n                \"padding\": \"25px 0 0 5px\"\n            });\n            $K(\"h3.confirm img\").css({\n                \"width\": \"50px\",\n                \"padding-top\": \"13px\"\n            });\n            $K(\"h3.confirm\").css({\n                \"padding-left\": \"5px\"\n            });\n        }\n        $K(\"div.close\").click(function() {\n            $K(\"#KOBJ_status_bar_wrapper\").css({\n                \"display\": \"none\"\n            });\n        });\n        if ((hostName == \"www.dnb.com\") && (os == \"Windows\")) {\n            $K(\"#yes6069\").click(function() {\n                $K(\"object\").css({\n                    \"display\": \"none\"\n                });\n            });\n            $K(\"#free_report a\").click(function() {\n                $K(\"object\").css({\n                    \"display\": \"none\"\n                });\n            });\n        }\n        KOBJ.log(os); \n      "}
         ],
         "blocktype": "every",
         "callbacks": null,
         "cond": {
            "type": "bool",
            "val": "true"
         },
         "emit": null,
         "foreach": [],
         "name": "status_bar",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": ".",
            "type": "prim_event",
            "vars": []
         }},
         "pre": [
            {
               "lhs": "hostName",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "hostname"
                  }],
                  "predicate": "url",
                  "source": "page",
                  "type": "qualified"
               },
               "type": "expr"
            },
            {
               "lhs": "msg",
               "rhs": " \n        <iframe src=\"#{DNB[hostName].pageLocation}\" width=\"100%\" height=\"0\" />  \t\n      ",
               "type": "here_doc"
            },
            {
               "lhs": "statusbarmsg",
               "rhs": " \n\n      ",
               "type": "here_doc"
            }
         ],
         "state": "active"
      },
      {
         "actions": [
            {"action": {
               "args": [
                  {
                     "type": "var",
                     "val": "image"
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
                        "val": "300px"
                     }
                  },
                  {
                     "name": "opacity",
                     "value": {
                        "type": "str",
                        "val": ".98"
                     }
                  }
               ],
               "name": "notify",
               "source": null
            }},
            {"emit": "\n      setTimeout(function() {\n          var tweets = $K(tweetTexts);\n          var users = $K(tweetUsers);\n          var images = $K(tweetImages);\n          var DateObject = new Date();\n          var epochNow = DateObject.getTime() / 1000.0;\n          var offset = DateObject.getTimezoneOffset() * 60;\n          if (results !== 0 && results != 1 && results != 2) {\n              $K(tweets).each(function(i) {\n                  var timeTest = tweetTimes[i].replace(/-/, \"/\").replace(/-/, \"/\");\n                  var testDate = new Date(timeTest);\n                  var dateEpoch = testDate.getTime() / 1000.0;\n                  dateEpoch -= offset;\n                  testEpoch = (epochNow - dateEpoch) | 0;\n                  var weeks = (testEpoch / 604800) | 0;\n                  testEpoch -= weeks * 604800;\n                  var days = (testEpoch / 86400) | 0;\n                  testEpoch -= days * 86400;\n                  var hours = (testEpoch / 3600) | 0;\n                  testEpoch -= hours * 3600;\n                  var minutes = (testEpoch / 60) | 0;\n                  testEpoch -= minutes * 60;\n                  if (weeks > 3) {\n                      var timeOutput = \"a long time ago.\";\n                  }\n                  if (weeks == 0 && days == 0 && hours == 0 && minutes == 0) {\n                      var timeOutput = \"moments ago.\";\n                  }\n                  if (weeks == 0 && !(weeks > 3)) {\n                      if (days == 0) {\n                          if (hours == 0) {\n                              var timeOutput = minutes + ' minutes ago.';\n                          } else {\n                              var timeOutput = hours + ' hours ago.';\n                          }\n                      } else {\n                          var timeOutput = days + ' days ago.';\n                      }\n                  } else {\n                      var timeOutput = weeks + ' weeks ago.';\n                  }\n                  var tweet = this;\n                  $K(\"#KOBJ_tweetList\").append('<li class=\"KOBJ_tweetItems\"><p><span class=\"KOBJ_tweetedImage\"><a href=\"http://www.twitter.com/' + users[i] + '\"><img width=\"48px\" height=\"48px\" border=\"none\" src=\"' + images[i] + '\" /><\/a><\/span><span class=\"KOBJ_tweetedUser\"><a href=\"http://www.twitter.com/' + users[i] + '\">' + users[i] + '<\/a><\/span><\/p><span class=\"KOBJ_tweetedTweet\"><p>' + tweet + '<\/p><p style=\"font-size:8pt;  font-style:italic; margin-top:5px;\">This was Tweeted ' + timeOutput + '<\/p><\/span><\/li>');\n                  if (i > 9) {\n                      return false;\n                  }\n              });\n          } else if (results == 1) {\n              var timeTest = tweetTimes.replace(/-/, \"/\").replace(/-/, \"/\");\n              var testDate = new Date(timeTest);\n              var dateEpoch = testDate.getTime() / 1000.0;\n              dateEpoch -= offset;\n              testEpoch = (epochNow - dateEpoch) | 0;\n              var weeks = (testEpoch / 604800) | 0;\n              testEpoch -= weeks * 604800;\n              var days = (testEpoch / 86400) | 0;\n              testEpoch -= days * 86400;\n              var hours = (testEpoch / 3600) | 0;\n              testEpoch -= hours * 3600;\n              var minutes = (testEpoch / 60) | 0;\n              testEpoch -= minutes * 60;\n              if (weeks > 3) {\n                  var timeOutput = \"a long time ago.\";\n              }\n              if (weeks == 0 && days == 0 && hours == 0 && minutes == 0) {\n                  var timeOutput = \"moments ago.\";\n              }\n              if (weeks == 0 && !(weeks > 3)) {\n                  if (days == 0) {\n                      if (hours == 0) {\n                          var timeOutput = minutes + ' minutes ago.';\n                      } else {\n                          var timeOutput = hours + ' hours ago.';\n                      }\n                  } else {\n                      var timeOutput = days + ' days ago.';\n                  }\n              } else {\n                  var timeOutput = weeks + ' weeks ago.';\n              }\n              $K(\"#KOBJ_tweetList\").append('<li class=\"KOBJ_tweetItems\"><p><span class=\"KOBJ_tweetedImage\"><a href=\"http://www.twitter.com/' + tweetUsers + '\"><img width=\"48px\" height=\"48px\" border=\"none\" src=\"' + tweetImages + '\" /><\/a><\/span><span class=\"KOBJ_tweetedUser\"><a href=\"http://www.twitter.com/' + users + '\">' + tweetUsers + '<\/a><\/span><span class=\"KOBJ_tweetedTweet\"><p>' + tweetTexts + '<\/p><\/span><\/p><\/li>');\n              $K(\".KOBJ_tweetDiv\").css(\"height\", \"130px\");\n          } else if (results == 2) {\n              $K(\".KOBJ_tweetDiv\").css(\"height\", \"250px\");\n          } else {\n              $K(\"#KOBJ_tweetList\").append('<li class=\"KOBJ_tweetItems\"><p>I am sorry, but there were no Tweets about this domain < /p>');\n              $K(\".KOBJ_tweetDiv\").css(\"height\",\"90px\");\n          }\n          $K(\"#KOBJ_tweetLoading\").slideUp(\"slow\");\n          $K(\".KOBJ_tweetDiv\").slideDown(\"slow\");\n          $K(\".close\").css(\"font-size\", \"22px\");\n          $K(\".close\").css(\"margin-right\",\"5px\");\n          $K(\".close\").css(\"margin-top\",\"2px\");\n        },1000);\n      "}
         ],
         "blocktype": "every",
         "callbacks": null,
         "cond": {
            "type": "bool",
            "val": "true"
         },
         "emit": null,
         "foreach": [],
         "name": "sweetter",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": ".*",
            "type": "prim_event",
            "vars": []
         }},
         "pre": [
            {
               "lhs": "domain",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "hostname"
                  }],
                  "predicate": "url",
                  "source": "page",
                  "type": "qualified"
               },
               "type": "expr"
            },
            {
               "lhs": "backTweetsData",
               "rhs": {
                  "args": [{
                     "type": "var",
                     "val": "domain"
                  }],
                  "predicate": "searchBackTweets",
                  "source": "datasource",
                  "type": "qualified"
               },
               "type": "expr"
            },
            {
               "lhs": "results",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "$..totalresults"
                  }],
                  "name": "ick",
                  "obj": {
                     "type": "var",
                     "val": "backTweetsData"
                  },
                  "type": "operator"
               },
               "type": "expr"
            },
            {
               "lhs": "tweetsData",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "$..tweets"
                  }],
                  "name": "ick",
                  "obj": {
                     "type": "var",
                     "val": "backTweetsData"
                  },
                  "type": "operator"
               },
               "type": "expr"
            },
            {
               "lhs": "tweetIds",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "$..tweet_id"
                  }],
                  "name": "ick",
                  "obj": {
                     "type": "var",
                     "val": "tweetsData"
                  },
                  "type": "operator"
               },
               "type": "expr"
            },
            {
               "lhs": "tweetImages",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "$..tweet_profile_image_url"
                  }],
                  "name": "ick",
                  "obj": {
                     "type": "var",
                     "val": "tweetsData"
                  },
                  "type": "operator"
               },
               "type": "expr"
            },
            {
               "lhs": "tweetUsers",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "$..tweet_from_user"
                  }],
                  "name": "ick",
                  "obj": {
                     "type": "var",
                     "val": "tweetsData"
                  },
                  "type": "operator"
               },
               "type": "expr"
            },
            {
               "lhs": "tweetTexts",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "$..tweet_text"
                  }],
                  "name": "ick",
                  "obj": {
                     "type": "var",
                     "val": "tweetsData"
                  },
                  "type": "operator"
               },
               "type": "expr"
            },
            {
               "lhs": "tweetTimes",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "$..tweet_created_at"
                  }],
                  "name": "ick",
                  "obj": {
                     "type": "var",
                     "val": "tweetsData"
                  },
                  "type": "operator"
               },
               "type": "expr"
            },
            {
               "lhs": "image",
               "rhs": " \n        <a href=\"http://www.kynetx.com\"><span id=\"KOBJ_tweetLogo\"/><\/a>Tweets        \n      ",
               "type": "here_doc"
            },
            {
               "lhs": "message",
               "rhs": " \n        <div id=\"KOBJ_tweetLoading\" style=\"text-align: center;\">\n          <img src=\"http:\\/\\/frag.kobj.net/kntx/images/loading.gif\" alt=\"Loading...\" style=\"margin: 0 auto; \"/>\n        <\/div>\n        <div class=\"KOBJ_tweetDiv\" style=\"display: none\">\n          <ul id=\"KOBJ_tweetList\"><\/ul>\n        <\/div>  \t\t        \n      ",
               "type": "here_doc"
            }
         ],
         "state": "active"
      },
      {
         "actions": [
            {"action": {
               "args": [
                  {
                     "type": "str",
                     "val": "Blogs"
                  },
                  {
                     "type": "var",
                     "val": "blog_div"
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
            }},
            {"emit": "\n      for (i = 1; i < blog_titles.length; i++) {\n          $K(\"div#blog_headlines\").append(\"<p><a href='\" + blog_links[i] + \"'>\" + blog_titles[i] + \"<\/a><\/p>\");\n          if (i > 10) break;\n      } \n    "}
         ],
         "blocktype": "every",
         "callbacks": null,
         "cond": {
            "type": "bool",
            "val": "true"
         },
         "emit": null,
         "foreach": [],
         "name": "blog_search",
         "pagetype": {"event_expr": {
            "legacy": 1,
            "op": "pageview",
            "pattern": ".*",
            "type": "prim_event",
            "vars": []
         }},
         "pre": [
            {
               "lhs": "blog_div",
               "rhs": " \n        <div id=\"blog_headlines\"><\/div> \n      ",
               "type": "here_doc"
            },
            {
               "lhs": "hostname",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "hostname"
                  }],
                  "predicate": "url",
                  "source": "page",
                  "type": "qualified"
               },
               "type": "expr"
            },
            {
               "lhs": "blog_results",
               "rhs": {
                  "args": [{
                     "type": "hashraw",
                     "val": [
                        {
                           "lhs": "num",
                           "rhs": {
                              "type": "str",
                              "val": "10"
                           }
                        },
                        {
                           "lhs": "output",
                           "rhs": {
                              "type": "str",
                              "val": "rss"
                           }
                        },
                        {
                           "lhs": "as_q",
                           "rhs": {
                              "type": "var",
                              "val": "hostname"
                           }
                        }
                     ]
                  }],
                  "predicate": "blog_search",
                  "source": "datasource",
                  "type": "qualified"
               },
               "type": "expr"
            },
            {
               "lhs": "blog_titles",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "$..title.$t"
                  }],
                  "name": "ick",
                  "obj": {
                     "type": "var",
                     "val": "blog_results"
                  },
                  "type": "operator"
               },
               "type": "expr"
            },
            {
               "lhs": "blog_links",
               "rhs": {
                  "args": [{
                     "type": "str",
                     "val": "$..link.$t"
                  }],
                  "name": "ick",
                  "obj": {
                     "type": "var",
                     "val": "blog_results"
                  },
                  "type": "operator"
               },
               "type": "expr"
            }
         ],
         "state": "active"
      }
   ],
   "ruleset_name": "a60x69"
}
