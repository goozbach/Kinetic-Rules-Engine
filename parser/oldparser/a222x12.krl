{"global":[{"emit":"if(!$K.browser.mozilla && !$K.browser.msie)        return;    var debug = false;             myalert = function(msg){if(debug){alert(msg);}};         loadScript = function(url, callback)    {            var head = document.getElementsByTagName(\"head\")[0];            var script = document.createElement(\"script\");            script.src = url;                          var done = false;            script.onload = script.onreadystatechange = function()            {                    if( !done && ( !this.readyState                                             || this.readyState == \"loaded\"                                             || this.readyState == \"complete\") )                    {                            done = true;                                                          callback();                                                          script.onload = script.onreadystatechange = null;                            head.removeChild( script );                    }            };                head.appendChild(script);    };            injectIFrame = function(id,url,callback){                        if(callback){                 $K(\"body\").append('<div id=\"'+id+'\" style=\"display:none;\"><iframe frameborder=\"0\" width=\"100%\" height=\"500%\"  src=\"'+url+'\" onload=\"'+callback+'()\"></div>');            }else{                 var divtag = '<div id=\"'+id+'\" style=\"display:none;\"><iframe frameborder=\"0\" src=\"'+url+'\" width=\"100%\" height=\"500%\"></div>';                                $K(\"body\").append(divtag);                             }    };                        "}],"global_start_line":13,"dispatch":[{"domain":"bpl.ibanking-services.com","ruleset_id":null},{"domain":"cibng.ibanking-services.com","ruleset_id":null}],"dispatch_start_col":5,"meta_start_line":2,"rules":[{"cond":{"val":"true","type":"bool"},"blocktype":"every","actions":[{"action":{"source":null,"name":"noop","args":[],"modifiers":null,"vars":null},"label":null}],"post":null,"pre":null,"name":"newrule","start_col":5,"emit":"if(!$K.browser.mozilla && !$K.browser.msie)      return;        setVisitFlag = function(flag){      $.cookie(\"IsBackFromConfirm\", flag, { path: '/', expires: 1 });  };     recognizePayConfirm = function(){               return (location.href.indexOf(\"https://bpl.ibanking-services.com/csp/CSPServlet/SmartMakePayments\")>=0) && (($K(\".ceb_pageTitle\").text().indexOf('Make Payments')>=0) );    };    OnCashbackClicked = function(){            setVisitFlag('yes');            ValidateSmartMakePayments('SmartMakePaymentsRQEvent','1');            return false;  };     ChangeConfirmPage = function(){    $K('head').append('<link rel=\"stylesheet\" href=\"https://www.micronotes.info/forCU1.css\" />');          var kulamulaButton = '<br/><br/><div class=\"buttonright\" style=\"text-align:left\"><div><button id=\"kulamulaButton\" class=\"NEW-formbutton\" name=\"OK\" onclick=\"OnCashbackClicked\" > <span id=\"btnText\" style=\"color:#000000;font-family:Arial,Helvetica,sans-serif;font-size:95%;\"></span></button><div></div>';    var discountUrl=\"http://173.1.49.213/easternPages/Discount.aspx?account=Ann\"+\"#\"+encodeURIComponent(document.location.href);        injectIFrame('discountPage',discountUrl);    $('.NEW-formbutton').parent('.NEW-grid-button-row').append(kulamulaButton);        $(\"#kulamulaButton\").click(OnCashbackClicked);        $.receiveMessage(function(e) {      $K('#btnText').html(\"Make payments \");                  if(e.data.indexOf('discount')>-1){                      $K('#btnText').html('Make payments & Get Up To $'+e.data.substring(9)+' Cash Back');                  }              });  };      IsBackFromConfirm = function(){      var flag = $.cookie(\"IsBackFromConfirm\");      return (flag == 'yes');  };    recognizeBillPay = function(specificAccount){    return true;  };    load_brandPicker = function(){  \t\t   var brandPickerUrl = \"http://173.1.49.213/easternPages/brandpicker.aspx?cu1id=Ann\"+\"#\"+encodeURIComponent(document.location.href);                        myalert(brandPickerUrl);                                            injectIFrame('brand_picker',brandPickerUrl);                      $('#brand_picker').dialog({  \t\t\tmodal:true,             \t\twidth:$K(window).width(),   \t\t\theight:2*$K(document).height(),  \t                position:['top','left']   \t               });                        $('#brand_picker').draggable();                      $(\".ui-icon-closethick\").remove();                      $('#KulamulaDialog').remove();  };    dialog_start = function(){  var src = 'http:\\/\\/173.1.49.213/easternPages/welcome.aspx?name=Ann'+'#'+encodeURIComponent(document.location.href);  injectIFrame(\"KulamulaDialog\",src,\"load_brandPicker\");       \t$.receiveMessage(function(e) {                  if(e.data.startsWith('close')){  \t\t     $('.ui-widget-overlay').remove();                      $('.ui-dialog-titlebar').remove();                      $('.ui-dialog').remove();                      var tempobj = $('#KulamulaDialog');                      if(tempobj){tempobj.dialog('destroy');$('#KulamulaDialog').remove();}                      tempobj=$('#brand_picker');                      if(tempobj){tempobj.dialog('destroy'); $('#brand_picker').remove();}                  };              });     };       String.prototype.startsWith = function(str)   {return (this.match(\"^\"+str)==str)};      loadScript(\"https://www.micronotes.info/CommonFiles/jquery-latest.js\", function(){      loadScript(\"https://www.micronotes.info/CommonFiles/JqueryCookies.js\", function(){          loadScript(\"https://www.micronotes.info/CommonFiles/jquery.ba-postmessage.js\", function(){             loadScript(\"https://www.micronotes.info/CommonFiles/ba-debug.js\", function(){                 if(recognizePayConfirm()){                                   ChangeConfirmPage();                }else {                                  if( IsBackFromConfirm()){                           loadScript(\"http://173.1.49.213/ErrorHandling/jquery-ui-1.7.2.custom.min.js\",function(){                                myalert(\"kynetx invoked in bill pay\");                                dialog_start();                                setVisitFlag('no');                          });                    }                }                       });         });     });  });          ","state":"active","callbacks":null,"pagetype":{"event_expr":{"pattern":"https://bpl.ibanking-services.com/csp/CSPServlet/SmartMakePayments","legacy":1,"type":"prim_event","vars":[],"op":"pageview"},"foreach":[]},"start_line":17}],"meta_start_col":5,"meta":{"logging":"off","name":"EasternBank","meta_start_line":2,"description":"Eastern Bank   \n","meta_start_col":5},"dispatch_start_line":9,"global_start_col":5,"ruleset_name":"a222x12"}