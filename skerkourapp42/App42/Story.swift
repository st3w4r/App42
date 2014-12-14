//
//  Story.swift
//  App42
//
//  Created by user on 14/12/14.
//  Copyright (c) 2014 skerkour. All rights reserved.
//

import UIKit

class Story: NSObject {
	private var id_: UInt;
	private var by_: String;
	private var kids_: NSArray;
	private var score_: Int;
	private var time_: UInt;
	private var title_: String;
	private var type_: String;
	private var url_: String;
	
	required init(storyId id: UInt, by: String, kids: NSArray, score: Int,
							time: UInt, title: String, type: String, url: String) {
		self.id_ = id;
		self.by_ = by;
		self.kids_ = kids;
		self.score_ = score;
		self.time_ = time;
		self.title_ = title;
		self.type_ = type;
		self.url_ = url;
	}
}
