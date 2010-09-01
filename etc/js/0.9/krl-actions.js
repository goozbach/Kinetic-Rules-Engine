

KOBJ.raise_event_action = function (uniq, event_name, config) {
    var app = KOBJ.get_application(config.rid);
    app.raise_event(event_name,config["parameters"],config["app_id"]);
};

KOBJ.page_content_event = function (uniq, label, selectors, config) {
    var app = KOBJ.get_application(config.rid);

    var found_data = [];

    $KOBJ.each(selectors, function(name, selector) {
        var result = $KOBJ(selector["selector"]);
        if (selector["type"] == "text")
            result = result.text();
        else if (selector["type"] == "form")
            result = result.val();
        else
            result = "invalid select type";


        found_data.push({name: name,value:result });
    });
    found_data.push({name: "label",value:label })


    var all_data = {"param_data":found_data};

    KOBJEventManager.add_out_of_bound_event(app, "page_content", true, all_data);

};


/*
 * This is a shortcut way to register interest for an event for a given application
 * id.
 */
KOBJ.watch_event = function(event, selector, config)
{
    // Page views are special in that they do not have selectors
    var application = KOBJ.get_application(config["rid"]);
    if (event != "pageview") {
        KOBJEventManager.register_interest(event, selector, application, config);
    }
    else {
        KOBJEventManager.add_out_of_bound_event(application, "pageview");
    }
};