//
//  ViewController.swift
//  QueueTest
//
//  Created by Chris Comeau on 2018-07-29.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit
import Foundation

extension DispatchQueue {
	static func delay(_ theDelay:Double, completion :@escaping ()->Void) {
		
		DispatchQueue.main.asyncAfter(deadline:.now() + theDelay) {
			completion()
		}
	}
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var bears = [String]()
        
        //let queue = DispatchQueue.global() //race
        
        let queue = DispatchQueue(label:"bearQueue")
        queue.async {
            bears.append("test1")
        }
        queue.async {
            bears.append("test2")
        }
        
			
			DispatchQueue.main.async {
				print("test3")
			}
			
			DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
				print("test4")
			}
				
			DispatchQueue.delay(2.0) {
				print("test5")
			}

        

    }
}

