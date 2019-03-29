//
//  ViewController.swift
//  SetTest
//
//  Created by Chris Comeau on 2018-07-29.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var setTest: Set = ["test1", "test1", "test2", "test3"]
            
        var setTest2: Set = ["test1", "test5", "test6"]
            
        
        if setTest2.contains("test4") {
            print("contains")
        }
        
        
        let arrayDuplicates = [0,0,1,1,2,2,3,3]

        let arrayUniques = removeDuplicates(array: arrayDuplicates)
        
        print("dups: \(arrayDuplicates)")
        print("uniques: \(arrayUniques.sorted())")
			
			
			//more
			var set1:Set<String> = ["One", "Two", "Three"]
			var set2:Set<String> = ["One", "Two", "Three", "Three"] //only 1x "Three"
			
			
			//empty set
			
			var set3 = Set<String>()
			
			//access index
			//var found = set2[2] //error
			
			//test order
			
			for s in set1 {
				print(s)
			}
			
			
			print("done")

    }
    
    func removeDuplicates(array:[Int]) -> [Int] {
        
        let set:Set = Set(array)
        
        var set2:NSSet = set as NSSet
        var set3:NSSet = NSSet(set:set)

        return Array(set)
    }

}

