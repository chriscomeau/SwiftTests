//
//  ViewController.swift
//  AlertTest
//
//  Created by Chris Comeau on 2019-04-16.
//  Copyright © 2019 Skyriser Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func viewDidAppear(_ animated: Bool) {
    let alert = UIAlertController(title: "Error", message: "This is a test.", preferredStyle: .alert)
    //alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
      print("OK")
    }))
    self.present(alert, animated: true, completion: nil)
  }
}

