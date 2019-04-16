//
//  ViewController2.swift
//  NSURLSessionTest
//
//  Created by Chris Comeau on 2018-07-22.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, URLSessionDelegate, URLSessionTaskDelegate, UITableViewDataSource, UITableViewDelegate {

    var session:URLSession? = nil

    @IBOutlet weak var tableView:UITableView?

    var tableArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

      //https://api.myjson.com/bins/vi56v
      URLSession.shared.dataTask(with: URL(string: "test")!) { (data, response, error) in
        guard error == nil else {
          print("error: \(error?.localizedDescription ?? "unknown")")
          return
        }
        
        guard data != nil else {
          print("error: empty data")
          return
        }
        
        //???
        
        DispatchQueue.main.async {
          print("test")
        }
      }.resume()
    
  }
    //MARK: - table view -

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "cell"
      let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: identifier)

        if let label = cell.textLabel {
            label.text = self.tableArray[indexPath.row]
        }

        return cell
    }

}
