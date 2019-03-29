//
//  ViewController.swift
//  OptionalTests
//
//  Created by Chris Comeau on 2018-07-22.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let c: Int? = 10
        let d: Int = 0
        let e = c ?? d
        
        if let c = c {
            let f = c
        }
        
        let f = c!
        
        print("test \(c!)")
        print("test \(d)")
        print("test \(e)")
        print("test \(f)")

			
				let testInt:Int? = 23
				guard let testInt2 = testInt else {
						print("error")
				}
			
				guard let testInt3 = testInt else {
					print("error")
				}
			
        
        let implicitlyOptional : Int! = 10
        print(implicitlyOptional)

        let anotherOne : Int! = nil
        print(anotherOne) // will crash
        
        
        //https://medium.com/ios-os-x-development/swift-optionals-78dafaa53f3
        
        let x : Int? = 10
        let y : Int? = x.map {
            if $0 < 10 {
                return 0 //can't return nil
            } else {
                return $0
            }
        }
        
        
        
        
        /*let z: Int? = flatMap {
            if $0 < 10 {
                return nil
            } else {return $0}
        }*/

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

