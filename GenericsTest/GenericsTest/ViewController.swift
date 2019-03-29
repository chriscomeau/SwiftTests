//
//  ViewController.swift
//  GenericsTest
//
//  Created by Christian Comeau on 2018-08-23.
//  Copyright © 2018 Test. All rights reserved.
//

import UIKit

protocol Storage {
	
	associatedtype Item
	func store(item: Item)
	func retrieve(index:Int) -> Item?
	
}

class Book {
	
}

class Bookcase:Storage {
	
	var books = [Book]()
	
	func store(item:Book) {
			books.append(item)
	}
	
	func retrieve(index: Int) -> Book? {
		
		return books[index]
		//return nil
	}
}

class Stuff<T>:Storage {
	var items = [T]()
	func store(item:T) {
		
		items.append(item)
	}
	
	func retrieve(index: Int) -> T? {
		return items[index]
	}
	
	
}

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		let total1 = addition(a: 1, b: 2)
		print("addition 1:\(total1)")
		
		let total2 = addition(a: 0.99, b: 0.33)
		print("addition 2:\(total2)")
		
		let index = findIndex(of: 3, in:[0,1,2,3,4,5])
		print("findIndex 1:\(index)")

	}

	//https://learnappmaking.com/generics-swift-how-to/
	
	func addition<T: Numeric>(a: T, b: T) -> T {
		return a + b
	}
	

	func findIndex<T: Equatable>(of foundItem: T, in items: [T]) -> Int? {
		
		for (index, item) in items.enumerated()  {
			if item == foundItem {
				return index
			}
			
		}
		
		return nil
	}
	
	
	

}

