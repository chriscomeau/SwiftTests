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
  
  var tableArray = [Dictionary<String, Any>]()
  
  override func viewDidLoad() {
    super.viewDidLoad()

    postData()
  }
  
  //reference https://gist.github.com/cmoulton/7ddc3cfabda1facb040a533f637e74b8
  func postData() {
    let todosEndpoint: String = "https://jsonplaceholder.typicode.com/todos"
    
    guard let todosURL = URL(string: todosEndpoint) else {
      print("Error: cannot create URL")
      return
    }
    
    var request = URLRequest(url: todosURL)
    request.httpMethod = "POST" //important
    let newTodo: [String: Any] = ["title": "My First todo", "completed": false, "userId": 1]
    let jsonTodo: Data
    
    do {
      jsonTodo = try JSONSerialization.data(withJSONObject: newTodo, options: []) //important
      request.httpBody = jsonTodo //important
      
      //https://medium.com/@sdrzn/networking-and-persistence-with-json-in-swift-4-part-2-e4f35a606141
      // Make sure that we include headers specifying that our request's HTTP body
      // will be JSON encoded
//      var headers = request.allHTTPHeaderFields ?? [:]
//      headers["Content-Type"] = "application/json"
//      request.allHTTPHeaderFields = headers
      
    } catch {
      print("Error: cannot create JSON from todo")
      return
    }
    
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
      
      guard error == nil else {
        print("error calling POST on /todos/1")
        print(error!)
        return
      }
      guard let responseData = data else {
        print("Error: did not receive data")
        return
      }
      
      // parse the result as JSON, since that's what the API provides
      do {
        guard let receivedTodo = try JSONSerialization.jsonObject(with: responseData, options: []) as? [String: Any]
          else {
                print("Could not get JSON from responseData as dictionary")
                return
            
        }
        print("The todo is: " + receivedTodo.description)
        
        guard let todoID = receivedTodo["id"] as? Int else {
          print("Could not get todoID as int from JSON")
          return
        }
        
        print("The ID is: \(todoID)")
      } catch  {
        print("error parsing response from POST on /todos")
        return
      }
    }
    task.resume()
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
    
    return cell
    
  }
}

