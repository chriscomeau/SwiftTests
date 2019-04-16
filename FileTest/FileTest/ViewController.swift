//
//  ViewController.swift
//  FileTest
//
//  Created by Chris Comeau on 2019-04-16.
//  Copyright © 2019 Skyriser Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let str = "Super long string here"
    let filename = getDocumentsDirectory().appendingPathComponent("output.txt")
    
    do {
      try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
    } catch {
      print("error")
      // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
    }

  }

  func getDocumentsDirectory() -> URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
  }


}

