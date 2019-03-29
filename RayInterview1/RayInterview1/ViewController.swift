//
//  ViewController.swift
//  RayInterview1
//
//  Created by Christian Comeau on 2018-08-02.
//  Copyright © 2018 Test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		//https://www.raywenderlich.com/110982/swift-interview-questions-answers
		
		//MARK: 1
//		for _ in 0 ..< 5 {
//			print("Hello!")
//		}
		
		
		
//		let animals = ["fish", "cat", "chicken", "dog"]
//		let sortedAnimals = animals.sort { (one: String, two: String) -> Bool in
//			return one < two
//		}
		
		
		//MARK: 4
		//original
		//		let animals = ["fish", "cat", "chicken", "dog"]
//		let sortedAnimals = animals.sorted { (one: String, two: String) -> Bool in
//			return one < two
//		}
//		print(sortedAnimals)

		//with by
//		let animals = ["fish", "cat", "chicken", "dog"]
//		let sortedAnimals = animals.sorted(by: { (one: String, two: String) -> Bool in
//			return one < two
//		})
//		print(sortedAnimals)

		
//		let animals = ["fish", "cat", "chicken", "dog"]
//		let sortedAnimals = animals.sorted { one, two in
//			return one < two
//		}
//		print(sortedAnimals)

//		let animals = ["fish", "cat", "chicken", "dog"]
//		let sortedAnimals = animals.sorted {
//			return $0 < $1
//		}
//		print(sortedAnimals)

//		let animals = ["fish", "cat", "chicken", "dog"]
//		let sortedAnimals = animals.sorted(by:<)
//		print(sortedAnimals)

			let animals = ["fish", "cat", "chicken", "dog"]
			let sortedAnimals = animals.sorted {
				$0 < $1
			}
			print(sortedAnimals)

		

	}


}

