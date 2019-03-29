//
//  ViewController.swift
//  EnumTest
//
//  Created by Christian Comeau on 2018-07-30.
//  Copyright © 2018 Test. All rights reserved.
//

import UIKit

enum Enum1 {
    case value1
    case value2
    case value3
}

enum Enum2:Int {
    case value1 = 0
    case value2
    case value3
    case value4
}

enum Enum3:Int {
    case value1 = 0
    case value2
    case value3 = 5
    case value4
}

//https://useyourloaf.com/blog/getting-all-cases-of-an-enum/
//swift 4.2 only
/*enum Direction: CaseIterable {
	case left
	case right
	case up
	case down
}
//The compiler then provides you an allCases that is a collection of all cases of the enum:

Direction.allCases.count
// 4
Direction.allCases.forEach { print($0) }
// left right up down.*/


class ViewController: UIViewController {


	override func viewDidLoad() {
		super.viewDidLoad()
		
		enum Colors {
			case red
			case blue
		}
		
		let color1 = Colors.red

		switch color1 {
			case .red:
				print(color1)
			case .blue:
				print(color1)
		}
		
		
		enum Direction:Int {
			case north = 0
			case south
		}
		
		enum Direction2:String {
			case north = "North"
			case south = "South"
		}
		
		enum Direction3:String {
			case north = "North"
			case south = "South"
		}
		
		enum Direction4:Int {
			case north
			case south
		}
		
		enum Direction5 {
			case north(name:String)
		 	case south
			case west(name:String)
		}
		
		

		print(color1)
		print(Direction.north.rawValue)
		
		let direction5 = Direction5.north(name: "test")
		
		switch(direction5) {
		case .north(let name):
				print("north: \(name)")
		case .south:
			print("south:")
//		case .south (let name):
//			print("south: \(name)")
			
		case .west:
			print("west")
		}
        
        
        
        
        enum Number {
            case One
            case Two
            case Three
            
            mutating func next() {
                switch self {
                case .One:
                    self = .Two
                case .Two:
                    self = .Three
                    
                case .Three:
                    self = .Three
                }
            }
        }

		
	}

}

