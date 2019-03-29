//
//  ViewController.swift
//  ArrayTest
//
//  Created by Chris Comeau on 2018-07-22.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //http://www.aidanf.net/learn-swift/arrays

        var arrayOfInts:[Int] = [1, 2]
        var arrayOfInts2 = [1,2]
        
        let isEmpty:Bool = arrayOfInts.isEmpty
    
        let count:Int = arrayOfInts.count
        
        arrayOfInts.append(12)
        
        arrayOfInts.insert(18, at: 0)

        arrayOfInts += [5,6]
        
        
        var subArray = arrayOfInts[0...4]
        
        
        arrayOfInts.removeLast()
        
        for i in arrayOfInts {
            print(i)
        }
        
        
        //var cells = [Bool](count: 64, repeatedValue: false)

        let array1:[String] = ["a", "b"]
        let array2:[String] = ["c", "d"]
        let array3 = array1 + array2;
			
			
			//tempty array
			var empty1:[String] = [String]()
			var empty2:[String] = []
			var empty3 = Array<String>()
			//
			let preloadArray = Array(repeating:0, count:10) // initializes array with 10 default values of the number 0
			
			//remove
			var arrayOfInts3 = [1,2,3]
			arrayOfInts.removeFirst();
			arrayOfInts.removeAll();
			
			
			//any
			//var anyArray:[AnyObject] = [] //Error //Argument type 'Int' does not conform to expected type 'AnyObject'
			var anyArray:[Any] = []
			anyArray.append("test")
			let int1 = 1
			anyArray.insert(int1, at: 0)
			
        let number1:NSNumber = NSNumber(value: int1)
        let number2:NSNumber = NSNumber(value: int1)
			anyArray.insert(number1, at: 0)
        
        
        //ranges
        
        let doubleRange = 3.0 ..< 10.5
        
        let intRange = 10 ..< 20
			
			
			var arrayRes:[Int] = [Int]()
			arrayRes.reserveCapacity(20)
		
        
        let array5 = [1,2,3]
        
        
        //foreach
        array5.forEach {
            print($0)
        }
        
        array5.forEach { e in
            print(e)
        }

        
//        array5.forEach { //error
//            print($1)
//        }
			
			[1,2,3].forEach {
				print($0)
			}
			
			[4,5,6].forEach { e in
				print(e)
			}
			

    }


}

