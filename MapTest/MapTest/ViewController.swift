//
//  ViewController.swift
//  MapTest
//
//  Created by Chris Comeau on 2018-07-29.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //var images : [UImage] = Array<UIImage>()
        var images : [UIImage] = [UIImage]()
        
        for i in 1...7 {
            if let image = UIImage(named: "test_\(i)") {
                images.append(image)
            }
        }
        
        
        let images2 = (1...7).map {UIImage(named:"test_\($0)")}
        
        let images3 = (1...7).map { number in
            UIImage(named:"test_\(number)")
            
        }

    }


}

