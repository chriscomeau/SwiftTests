//
//  ViewController.swift
//  NSURLSessionTest
//
//  Created by Chris Comeau on 2018-07-22.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController, URLSessionDelegate, URLSessionTaskDelegate, UITableViewDataSource, UITableViewDelegate {

    

    var session:URLSession? = nil
    
    @IBOutlet weak var tableView:UITableView?
    
    var tableArray = [String]()
/*    var test: Int
    
    
    required init?(coder aDecoder: NSCoder) {
        test = 0
        super.init(coder: aDecoder)
    }
 */


    override func viewDidLoad() {
        super.viewDidLoad()

        session = URLSession.shared
        
        let url:URL? = URL(string:"https://api.myjson.com/bins/vi56v")
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            guard error == nil else {
                print("returned error")
                return
            }
            
            guard let content = data else {
                print("No data")
                return
            }
            
            
            
            guard let json = (try? JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers)) as? [String: Any] else {
                
                print("Not containing JSON")
                return
            }
            
            
            if let array = json["companies"] as? [String] {
                self.tableArray = array
            }
            
            //print("json: \(json)")
            
            print("tableArray: \(self.tableArray)")
            
            //table
            
            DispatchQueue.main.async {
                //main thread
                self.tableView!.reloadData()

            }

        }
        
        task.resume()

    }

  

    //MARK: - URLSession -

    
    //MARK: - table view -
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "cell"
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: identifier)
        
        if let label = cell.textLabel {
            label.text = self.tableArray[indexPath.row]
        }
        
        //or
        //cell.textLabel!.text = self.tableArray[indexPath.row]
        
        return cell
        
    }
    
    
}

