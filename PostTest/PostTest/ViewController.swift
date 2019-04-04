//
//  ViewController.swift
//  PostTest
//
//  Created by Chris Comeau on 2019-04-04.
//  Copyright © 2019 Skyriser Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController, URLSessionDelegate, URLSessionTaskDelegate, UITableViewDataSource, UITableViewDelegate {
  
  
  
  var session:URLSession? = nil
  
  @IBOutlet weak var tableView:UITableView?
  
  //var tableArray = [String]()
  var tableArray = [Dictionary<String, Any>]()
  /*    var test: Int
   
   
   required init?(coder aDecoder: NSCoder) {
   test = 0
   super.init(coder: aDecoder)
   }
   */
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    getData()
    
    postData()
  }
  
  
  
  //MARK: - URLSession -
  
  func getData() {
    //get
    session = URLSession.shared
    let url:URL? = URL(string:"https://jsonplaceholder.typicode.com/posts")
    
    let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
      guard error == nil else {
        print("returned error")
        return
      }
      
      guard let content = data else {
        print("No data")
        return
      }
      
      guard let json = (try? JSONSerialization.jsonObject(with: content, options:
        JSONSerialization.ReadingOptions.mutableContainers)) as? [Dictionary<String, Any>] else {
        print("Not containing JSON")
        return
      }
      
      self.tableArray = json
      
      print("tableArray: \(self.tableArray)")
      
      //table
      
      DispatchQueue.main.async {
        //main thread
        self.tableView!.reloadData()
        
      }
    }
    
    task.resume()
  }
  
  func postData() {
    
    //https://jsonplaceholder.typicode.com
  }
  
  //MARK: - table view -
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.tableArray.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let identifier = "cell"
    let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: identifier)
    
    if let label = cell.textLabel {
      if let text = self.tableArray[indexPath.row]["title"] as? String {
      
        label.text = text
      }
    }
    
    //or
    //cell.textLabel!.text = self.tableArray[indexPath.row]
    
    return cell
    
  }
  
  
}

