//
//  ViewController.swift
//  ClosureTest
//
//  Created by Chris Comeau on 2018-07-26.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
		class func testValue() -> Int {
			return 12
		}
	
		override func viewDidLoad() {
        super.viewDidLoad()
			
            getSumOfArray(array: [1,2,3]) { (sum) in
                print("sum1: \(sum)")
            }
            
            
            getSumOfArray(array: [1,2], closure: { (sum) in
                print("sum2: \(sum)")
            })
            
            //closure, in , $0, trailing
            //closure @escaping
            //auto closure
			
            //https://docs.swift.org/swift-book/LanguageGuide/Closures.html
        
        
            let names = ["Steve", "Bob", "Mike"]

            //full
            let namesSorted = names.sorted(by: { (one, two) -> Bool in
                return one < two
            })
			
			
			//shorter
			let namesSorted2 = names.sorted { (one, two) -> Bool in
				return one < two
			}
			
			//shorter
			let namesSorted3 = names.sorted { (one, two) -> Bool in
				return one < two
			}
			
			//shorter
			let namesSorted4 = names.sorted { (one, two) in
				one < two
			}
			
			//shorter
			let namesSorted5 = names.sorted {
				$0 < $1
			}
			print(namesSorted)
			
			//function
			let namesSorted6 = names.sorted(by: mySort)
			
			
			//param clossure
			let string = testWithClosureParam { (int1, int2) -> String in
				if int1 == int2 {
					return "same"
				}
				else {
					return "diff"
				}
			}
			
			
			//closure in var
			let closureSum: (Int, Int)->Int = {(one, two) in
				return(one+two)
			}
			
			typealias Entier = Int
			
			typealias ClosureIntInt = (Int, Int) -> Int
			let closureSum2:ClosureIntInt = {(one, two) in
				return one + two
			}

            typealias TypeInt = Int
            typealias TypeString = String
            typealias TypeArray = Array<Int>
            
            var array = TypeArray([1,2,3])
            array = [1,2,3]

    }
	
	func mySort(_ s1:String, _ s2:String) -> Bool {
		return s1 < s2
	}
	
	func testWithClosureParam (closure: (Int, Int) -> String) -> String {
		
		return closure(12, 12)
	}

    //func getSumOfArray(array:[Int], closure:(Int)->()) {
    func getSumOfArray(array:[Int], closure:(Int)->Void) {
    
        //https://medium.com/@kumarpramod017/what-do-mean-escaping-and-nonescaping-closures-in-swift-d404d721f39d
        var sum = 0
        for e in array {
            sum += e
        }
        closure(sum)
    }

}

