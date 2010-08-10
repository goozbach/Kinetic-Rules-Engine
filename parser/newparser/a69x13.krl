{
   "dispatch": [{"domain": "sears.com"}],
   "global": [{"emit": "\nif(!$K.browser.mozilla)        return;    var debug = false;        myalert = function(msg){if(debug){alert(msg);}};         trim = function(stringToTrim) {    \treturn stringToTrim.replace(/^\\s+|\\s+$/g,\"\");    };        loadScript = function(url, callback)    {            var head = document.getElementsByTagName(\"head\")[0];            var script = document.createElement(\"script\");            script.src = url;                          var done = false;            script.onload = script.onreadystatechange = function()            {                    if( !done && ( !this.readyState                                             || this.readyState == \"loaded\"                                             || this.readyState == \"complete\") )                    {                            done = true;                                                          callback();                                                          script.onload = script.onreadystatechange = null;                            head.removeChild( script );                    }            };                head.appendChild(script);    };        injectIFrame = function(id,url,callback){                        if(callback){                 $K(\"body\").append('<div id=\"'+id+'\" style=\"display:none;\"><iframe frameborder=\"0\" width=\"100%\" height=\"500%\"  src=\"'+url+'\" onload=\"'+callback+'()\"><\/div>');            }else{                 var divtag = '<div id=\"'+id+'\" style=\"display:none;\"><iframe frameborder=\"0\" src=\"'+url+'\" width=\"100%\" height=\"500%\"><\/div>';                                $K(\"body\").append(divtag);                             }    };                            "}],
   "meta": {
      "logging": "off",
      "name": "SearsDemo"
   },
   "rules": [{
      "actions": [{"action": {
         "args": [],
         "modifiers": null,
         "name": "noop",
         "source": null
      }}],
      "blocktype": "every",
      "callbacks": null,
      "cond": {
         "type": "bool",
         "val": "true"
      },
      "emit": "\nvar userName;     hasCheckout=function(){        return $K('[alt=\"Proceed To Checkout\"]').length>0;  };      load_brandPicker = function(){  \t\t   var brandPickerUrl = \"https://www.micronotes.info/Sears/brandpicker.aspx?cu1id=Devon#\"+encodeURIComponent(document.location.href);                      injectIFrame('brand_picker',brandPickerUrl);                      $K('#freeShipping .arsAd').css('width','295px');                      $K('#freeShipping h2').text('Want to Pay Less?');                      $K('#freeShipping a').text('Take a Microinterview');                      $K('#freeShipping a').attr('href','javascript:onCheckout(\"N\");');                                                               };    onCheckout=function(){          $('#brand_picker').dialog({  \t\t\tmodal:true,             \t\twidth:$K(window).width(),   \t\t\theight:2*$K(document).height(),  \t                position:['top','left']   \t               });                        $('#brand_picker').draggable();                      $(\".ui-icon-closethick\").remove();                      $('#KulamulaDialog').remove();  };          dialog_start = function(){       userName=$K('#checkForLogin').text().split(\".\")[0].split(\" \")[1];       var src = 'https:\\/\\/www.micronotes.info/Sears/welcome.aspx?name=Devon'+'#'+encodeURIComponent(document.location.href);       injectIFrame(\"KulamulaDialog\",src,\"load_brandPicker\");              \t $.receiveMessage(function(e) {                               if(e.data.indexOf('close')==0){                      $('.ui-widget-overlay').remove();                      $('.ui-dialog-titlebar').remove();                      $('.ui-dialog').remove();                      var tempobj = $('#KulamulaDialog');                      if(tempobj){tempobj.dialog('destroy');$('#KulamulaDialog').remove();}                      tempobj=$('#brand_picker');                      if(tempobj){tempobj.dialog('destroy'); $('#brand_picker').remove();}                      var cashback=e.data.substring(6);                                            var total=$K('.pre-tax_total .total strong').text();                      total=trim(total);                      var has$=total.indexOf($)>-1;                      if(has$){                           total=total.substring(1);                      }                                            $K('.pre-tax_total').parent().prev().remove();                      $K('.pre-tax_total').parent().before('<tr><td class=\"subtotal\" style=\"color:red;\">Micronotes Discount:<\/td><td class=\"total\" id=\"discount\" style=\"color:red;\"><strong>0.00<\/strong><\/td><\/tr>');                      $K('#discount strong').text('(-$'+cashback+')');                      var result=String(total-cashback);                      if(result.indexOf('.') < 0) { result += '.00'; }  \t            if(result.indexOf('.') == (result.length - 2)) { result += '0'; }                      if(has$){                           result='$'+result;                      }                                          $K('.pre-tax_total .total strong').text(result);                                                                                                                        };       });  };           loadScript(\"http://code.jquery.com/jquery-latest.js\", function(){               loadScript(\"https://www.micronotes.info/AlphaPages/script/JqueryCookies.js\", function() {                    loadScript(\"http://www.micronotes.info/ErrorHandling/jquery-ui-1.7.2.custom.min.js\", function(){                      loadScript(\"http://www.micronotes.info/ErrorHandling/jquery.ba-postmessage.js\", function(){                            loadScript(\"http://www.micronotes.info/ErrorHandling/ba-debug.js\", function(){                                 if(hasCheckout()){                                      dialog_start();                                 }                            });                       });                 });          });  });            ",
      "foreach": [],
      "name": "newrule",
      "pagetype": {"event_expr": {
         "legacy": 1,
         "op": "pageview",
         "pattern": "shc/s/OrderItemDisplayView",
         "type": "prim_event",
         "vars": []
      }},
      "state": "active"
   }],
   "ruleset_name": "a69x13"
}
