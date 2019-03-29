//
//  ViewController.swift
//  FunctionTest
//
//  Created by Christian Comeau on 2018-07-26.
//  Copyright © 2018 Test. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

	var testValue:Int = 0
	
	struct Person {
		var name: String
		var age: Int
	}
	
	var person1:Person? {
		
//		get { return getFoo() }
//		set { setFoo(newValue) }

		willSet(newValue) {
			
			print("Old value is \(person1!.name), new value is \(newValue!.name)")

//			if let newName = newValue?.name {
//				print("willSet: \(newName)")
//			}
		}
		
		didSet {
			print("didSet")
			
		}
	}
	
	var person2:Person = Person(name: "amy", age: 20) {
		
		//		get { return getFoo() }
		//		set { setFoo(newValue) }
		
		willSet(newValue) {
			
			print("willSet: Old value is \(person2.name), new value is \(newValue.name)")
			
			//			if let newName = newValue?.name {
			//				print("willSet: \(newName)")
			//			}
		}
		
		didSet {
			print("didSet: \(person2.name)")
			
		}
	}

	
	var testInt : Int = 0 {
		willSet(newValue) {
			print("old: \(testInt) new: \(newValue)")
		}
		
		didSet {
			print("new: \(testInt)")
		}
		
	}
	
	
	
	
	func testInOut(value: inout Int) {
		value = 10
	}

	//nested function

	
	override var representedObject: Any? {
		didSet {
		// Update the view, if already loaded.
		}
	}
	
	func random (_ len:Int = 100) -> Int {
		return Int(arc4random_uniform(UInt32(len)))
	}


	//???
	var _foo : Int = 0

	var foo2:Int {
		get{return _foo}
		set{_foo = newValue}
	}

	
	//https://stackoverflow.com/questions/24006234/what-is-the-purpose-of-willset-and-didset-in-swift
	var foo1: Int {
		get { return getFoo() }
		set { setFoo(newValue) }
		
	}
	func getFoo() -> Int {
		return 0
	}
	func setFoo(_ val:Int) {
		
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
		testInOut(value: &testValue)
		
		person1 = Person(name: "bob", age: 12)
		
		
		var rand = random(35)
		var rand2 = random(0)
		
	}
	
	//return a function that returns an int
	func incrementer() -> ()->Int{
	
		func returnInt() -> Int {
			return 0
		}
		
		return returnInt
	
	}

	
}

