//
//  TableViewController.swift
//  TableViewTest
//
//  Created by Christian Comeau on 2018-07-25.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

	let data = ["test1", "test2", "test3", "test4", "test5"]
	

	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
			
			
			//tableView!.separatorInset = UIEdgeInsets.zero
//			tableView!.dataSource = self
//			tableView!.delegate = self
			
			
			

    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return numRows()
    }

	
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
			
			let reuse:String = "reuse"
			let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier:reuse)

				cell.textLabel!.text = getCellName(index: indexPath.row)
        // Configure the cell...

        return cell
    }
	
	private func getCellName(index:Int) -> String {
		let name = data[index]
		
		print("getCellName: \(name)")
		return name
	}
	
	public func numRows() -> Int {
		return data.count
	}

	
	//https://www.ioscreator.com/tutorials/swipe-table-view-cell-custom-actions-tutorial-ios11

	override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?
	{
		// 1
		let shareAction = UITableViewRowAction(style: UITableViewRowActionStyle.default, title: "Share" , handler: { (action:UITableViewRowAction, indexPath: IndexPath) -> Void in
			// 2
			let shareMenu = UIAlertController(title: nil, message: "Share using", preferredStyle: .actionSheet)
			
			let twitterAction = UIAlertAction(title: "Twitter", style: UIAlertActionStyle.default, handler: nil)
			let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
			
			shareMenu.addAction(twitterAction)
			shareMenu.addAction(cancelAction)
			
			self.present(shareMenu, animated: true, completion: nil)
		})
		// 3
		let rateAction = UITableViewRowAction(style: UITableViewRowActionStyle.default, title: "Rate" , handler: { (action:UITableViewRowAction, indexPath:IndexPath) -> Void in
			// 4
			let rateMenu = UIAlertController(title: nil, message: "Rate this App", preferredStyle: .actionSheet)
			
			let appRateAction = UIAlertAction(title: "Rate", style: UIAlertActionStyle.default, handler: nil)
			let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
			
			rateMenu.addAction(appRateAction)
			rateMenu.addAction(cancelAction)
			
			self.present(rateMenu, animated: true, completion: nil)
		})
		// 5
		return [shareAction,rateAction]
	}

}
