//
//  ViewController.swift
//  CoreDataTest
//
//  Created by Chris Comeau on 2018-08-15.
//  Copyright © 2018 Chris Comeau. All rights reserved.
//

//https://www.raywenderlich.com/353-getting-started-with-core-data-tutorial

import UIKit
import CoreData

class ViewController: UIViewController {
    @IBOutlet weak var tableView:UITableView!
    //var names:[String] = []
		var people: [NSManagedObject] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "The List"
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
	
		override func viewWillAppear(_ animated: Bool) {
			super.viewWillAppear(animated)
			
			//1
			guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
					return
			}
			let managedContext = appDelegate.persistentContainer.viewContext
			
			//2
			let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Person")
			
			//3
			do {
				people = try managedContext.fetch(fetchRequest)
			} catch let error as NSError {
				print("Could not fetch. \(error), \(error.userInfo)")
			}
		}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func addName(_ sender: Any) {
        
        let alert = UIAlertController(title: "New Name",
                                      message: "Add a new name",
                                      preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Save",
                                       style: .default) {
                                        [unowned self] action in
                                        
                                        guard let textField = alert.textFields?.first,
                                            let nameToSave = textField.text else {
                                                return
                                        }
                                        
                                        //self.names.append(nameToSave)
																				
																				self.save(name: nameToSave)

																				
                                        self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .default)
        
        alert.addTextField()
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
    }

	
	func save(name: String) {
		
		guard let appDelegate =
			UIApplication.shared.delegate as? AppDelegate else {
				return
		}
		
		// 1
		let managedContext = appDelegate.persistentContainer.viewContext
		
		// 2
		let entity = NSEntityDescription.entity(forEntityName: "Person", in: managedContext)!
		let person = NSManagedObject(entity: entity, insertInto: managedContext)
		
		// 3
		person.setValue(name, forKeyPath: "name")
		
		// 4
		do {
			try managedContext.save()
			people.append(person)
		} catch let error as NSError {
			print("Could not save. \(error), \(error.userInfo)")
		}
	}

    
}


//MARK: - UITableViewDataSource
extension ViewController:UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        //return names.count
				return people.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            
            let cell =
                tableView.dequeueReusableCell(withIdentifier: "Cell",
                                              for: indexPath)
           // cell.textLabel?.text = names[indexPath.row]
					
					
					let person = people[indexPath.row]
					cell.textLabel?.text = person.value(forKeyPath: "name") as? String
					return cell
    }
}


//MARK: - Actions
extension ViewController {
    
    
}
