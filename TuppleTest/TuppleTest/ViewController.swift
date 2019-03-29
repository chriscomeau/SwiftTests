//
//  ViewController.swift
//  TuppleTest
//
//  Created by Christian Comeau on 2018-07-27.
//  Copyright © 2018 Test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	static let (nameKey, addressKey) = ("name", "address")
    
    //func processTuple(tuple:(String, Int)) -> Bool {
    func processTuple(tuple:(name:String, age:Int)) -> Bool {

        return true
    }
    
    //func createTuple(name:String, age:Int) -> (String, Int) {
    func createTuple(name:String, age:Int) -> (name:String, age:Int) {

        return (name, age)
    }
	
	override func viewDidLoad() {
		super.viewDidLoad()
        
        let tuple1 = ("test", 25)
        print(tuple1.0)

        let tuple2 = (name:"test", age:26)
		print(tuple2.name)
        
        var tuple3:(String, Int)
        tuple3 = ("test", 23)
        print(tuple3.0)
        
        processTuple(tuple: tuple3)
        
        
        var tuple4 = createTuple(name: "bob", age: 12)
        //print(tuple4.0)
        print(tuple4.name)
        
        typealias Tuple = (String, Int)
        let tuple5 = Tuple("bob", 23)
        
        
        typealias Position = (x:Int, y:Int)
        
        let position1 = Position(x:1, y:2)
        let position2 = Position(y:2, x:1)

        //dict loop
        let dict = ["key1":"value1",
                    "key2":"value2",
                    "key3":"value3"]
        
        for(key, value) in dict {
            print("\(key): \(value)")
        }
        
        for(key,_) in dict {
            print("\(key)")
        }
        
        //assign
        var tuple6 = ("cool", 6)
        tuple6.1 = 7
        
        //empty
        let empty = ()
        
        //array
        
        let arrayTuple = ("cool", 1, ["a", "b", "c"])
        
        
        let switchTuple = (1, "bob")
        switch switchTuple {
        case (let number, _) where number == 0:
                print("test1")
            
        case (_, let name) where name == "nancy":
            print("test2")
        default:
            print("default")
        }
        
        /*
#if false
        let person = ("Gabriel", "Kirkpatrick")
        print(person.0) // Gabriel
        //You can also name the individual tuple elements:
        
        let person = (first: "Gabriel", last: "Kirkpatrick")
        print(person.first)
        //Tuples are extremely convenient as return types for functions that need to return more than one value:
        
        func intDivision(a: Int, b: Int) -> (quotient: Int, remainder: Int)
        {
            return (a/b, a%b)
        }
        
        print(intDivision(11, 3))    // (3, 2)
        let result = intDivision(15, 4)
        print(result.remainder)    // 3
#endif
    */
    
    }
	
	
	static var saveNameAndAddress = { (name: String, address: String) in
		//UserDefaults.standard.set([nameKey: name, addressKey: address], forKey: userSessionKey)
	}

	
}

