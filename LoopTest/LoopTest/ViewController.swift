//
//  ViewController.swift
//  LoopTest
//
//  Created by Chris Comeau on 2018-07-25.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let min = 0
    let max = 100

	var data = ["a", "b", "c", "d", "e"]
	var dict = ["key1":123, "key2":345]

    override func viewDidLoad() {
        super.viewDidLoad()

        
        var array1 = [1,2,3];
        var count = 0
        
        for e in array1 {
            print("loop1: \(e)"); count+=1
        }

        for _ in array1 {
            print("loop2")
        }
        
        
        for e in stride(from: min, to: max, by: 5) {
            print("stride max: \(e)")
        }
        
        
        for e in stride(from: min, through: max, by: 5) {
            print("stride2 through: \(e)")
        }
        
        
        var x = 0
        while1:  while x < 10 {
            x = x+1
            print("while1")
            
            
            var y = 0
            while2: while y < 10 {
                y = y+1
                print("while2")
                
                if y == 2 {
                    continue while2
                }
                else if y == 5 {
                    break while1
                }

            }
        }
        
        for (i, e) in [12, 45, 56].enumerated() {
            print("enumerated: \(i): \(e)")
        }
        
			
			for (index, e) in data.enumerated() {
				print("\(index): \(e)")
			}
			
			for (index, element) in dict.enumerated() {
				
			}
			
			for e in data {
				
			}
			
			for e in data[1...3] {
				
			}
			for e in data[3..<data.count] {
				
			}

			//for i in 3...1 { //runtime error
			for i in 3...3 { //ok 1 time
				print("loop: \(i)")
			}

    }



}

