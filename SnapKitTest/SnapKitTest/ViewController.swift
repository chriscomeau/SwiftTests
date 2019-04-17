//
//  ViewController.swift
//  SnapKitTest
//
//  Created by Chris Comeau on 2019-04-16.
//  Copyright © 2019 Skyriser Media. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

  lazy var box = UIView()

  override func viewDidLoad() {
    super.viewDidLoad()

    self.view.addSubview(box)
    
    box.backgroundColor = UIColor.blue
    box.snp.makeConstraints { (make) -> Void in
      make.width.height.equalTo(50)
      make.center.equalTo(self.view)
    }

  }


}

