//
//  ApiHn.swift
//  App42
//
//  Created by Yanaël Barbier on 13/12/2014.
//  Copyright (c) 2014 Yanael Barbier. All rights reserved.
//

import UIKit
import Foundation

class ApiHn: NSObject, NSURLConnectionDelegate {
    
     required override init() {
        super.init()
        let url = NSURL(string: "https://hacker-news.firebaseio.com/v0/topstories.json")
        let request = NSURLRequest(URL: url!)
        let connection = NSURLConnection(request: request, delegate:self, startImmediately: true)
        
    }
    
    func connection(_connection: NSURLConnection, didReceiveData data: NSData) {
            var result: String = NSString(data:data, encoding:NSUTF8StringEncoding)!
            println(result)
        
    }
    
}


