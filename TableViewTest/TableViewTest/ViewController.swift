//
//  ViewController.swift
//  TableViewTest
//
//  Created by Chris Comeau on 2018-07-22.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit
class ViewController : UIViewController//, UITableViewDelegate, UITableViewDataSource
{
		//let data = ["test1", "test2", "test3", "test4", "test5"]
	
    //@IBOutlet private weak var tableView : UITableView?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
			
			//tableView!.separatorInset = UIEdgeInsets.zero
//			tableView!.dataSource = self
//			tableView!.delegate = self

        
    }
    /*
    private func test1() {
        print("test1")
    }
    
		private func getCellName(index:Int) -> String {
				let name = data[index]
			
				print("getCellName: \(name)")
        return name
    }
    
    public func numRows() -> Int {
        return data.count
    }

    //MARK: - UITableView -
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30.0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numRows()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let reuse:String = "reuse"
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier:reuse)
				//cell.editingStyle
			
			if let label = cell.textLabel {
					label.text = "\(getCellName(index:indexPath.row)) \(indexPath.row)"
        }
        return cell
    }
	
	func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
		let index = indexPath.row
		print("didDeselectRowAt: \(index): \(getCellName(index:indexPath.row))")
	}
	*/
	//swipe
	//https://stackoverflow.com/questions/32004557/swipe-able-table-view-cell-in-ios-9
	
	/*
	func tableView(_ tableView: UITableView, editActionsForRowAt: IndexPath) -> [UITableViewRowAction]? {
		let more = UITableViewRowAction(style: .normal, title: "More") { action, index in
			print("more button tapped")
		}
		more.backgroundColor = .lightGray
		
		let favorite = UITableViewRowAction(style: .normal, title: "Favorite") { action, index in
			print("favorite button tapped")
		}
		favorite.backgroundColor = .orange
		
		let share = UITableViewRowAction(style: .normal, title: "Share") { action, index in
			print("share button tapped")
		}
		share.backgroundColor = .blue
		
		return [share, favorite, more]
	}
	
	
	func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
		return true
	}

	func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
		// it can be empty
	}
	*/
	
	
	
	//https://developerslogblog.wordpress.com/2017/06/28/ios-11-swipe-leftright-in-uitableviewcell/
/*
	func tableView(_ tableView: UITableView,
								 leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
	{
		let closeAction = UIContextualAction(style: .normal, title:  "Close", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
			print("OK, marked as Closed")
			success(true)
		})
		closeAction.image = UIImage(named: "tick")
		closeAction.backgroundColor = .purple
		
		return UISwipeActionsConfiguration(actions: [closeAction])
		
	}
	
	func tableView(_ tableView: UITableView,
								 trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
	{
		let modifyAction = UIContextualAction(style: .normal, title:  "Update", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
			print("Update action ...")
			success(true)
		})
		modifyAction.image = UIImage(named: "hammer")
		modifyAction.backgroundColor = .blue
		
		return UISwipeActionsConfiguration(actions: [modifyAction])
	}
	
	func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
		return true
	}
*/
	/*
	
	//https://www.ioscreator.com/tutorials/swipe-table-view-cell-custom-actions-tutorial-ios11
	
	
	 func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?
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
*/
	
}



