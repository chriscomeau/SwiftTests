//
//  ViewController.swift
//  VarargsTest
//
//  Created by Christian Comeau on 2018-08-15.
//  Copyright © 2018 Test. All rights reserved.
//

//https://appventure.me/2015/07/19/tuples-swift-advanced-usage-best-practices/#sec-2-4
//https://medium.com/@abhimuralidharan/variadic-functions-swift-54ce99a55c1d


import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		test1("a", "b", "c")
		test2(with: "a", "b", "c")

	}
	
	func test1(_ elements:String...) {
		
		for e in elements {
			print(e)
		}
	}
	
	func test2(with elements:String...) {
		
		for e in elements {
			print(e)
		}
	}
	

}

