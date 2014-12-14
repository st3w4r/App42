//
//  HnTableViewController.swift
//  App42
//
//  Created by skerkour on 13/12/2014.
//  Copyright (c) 2014 skerkour. All rights reserved.
//

import UIKit

class HnTableViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {

    private var api: ApiHn;
    
    required init(coder aDecoder: NSCoder) {
        api = ApiHn();
		super.init(coder: aDecoder);
		NSNotificationCenter.defaultCenter().addObserver(self, selector: "displayData:", name: "dataDone", object: nil);
	}
    
    override func viewDidLoad() {
		super.viewDidLoad();
    }

    override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning();
	}

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return (1);
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return (api.get_ids_news().count);
    }
	
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell");
		cell.textLabel?.text = "\(api.get_ids_news()[indexPath.row])";
		return (cell);
	}
	
	func displayData(sender: AnyObject) {
		self.tableView.reloadData();
		NSNotificationCenter.defaultCenter().removeObserver("dataDone");
	}
}
