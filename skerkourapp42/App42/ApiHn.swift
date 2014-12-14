//
//  ApiHn.swift
//  App42
//
//  Created by skerkour on 13/12/2014.
//  Copyright (c) 2014 skerkour. All rights reserved.
//

import UIKit
import Foundation

class ApiHn: NSObject, NSURLConnectionDelegate {
	
	var ids_news_: NSArray = [];
	
	required override init() {
        super.init();
        let url = NSURL(string: "https://hacker-news.firebaseio.com/v0/topstories.json");
        let request = NSURLRequest(URL: url!);
        let connection = NSURLConnection(request: request, delegate:self, startImmediately: true);
    }
    
    func connection(_connection: NSURLConnection, didReceiveData data: NSData) {
        var result: String = NSString(data:data, encoding:NSUTF8StringEncoding)!;
		println(parse(data));
    }
	
	func parse(data: NSData) -> NSArray {
		var error: NSError?;
		var idNewsJson: NSArray = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &error) as NSArray;
		
		self.ids_news_ = idNewsJson;
		NSNotificationCenter.defaultCenter().postNotificationName("dataDone", object: nil);
		return (idNewsJson);
	}
	
	func get_ids_news() -> NSArray {
		return (self.ids_news_);
	}
}


