//
//  ViewController.swift
//  SwitchTest
//
//  Created by Chris Comeau on 2018-07-23.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit

@available(iOS 12.0, *)
class TestClass {
	
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let model:String = "Jetta"
        switch model {
            case "Beetle":
                print("test")
            case "Honda":
                print("test")
            
            default:
                print("test")
        }

			//MARK: -- #available --

			if #available (iOS 10, *) {
        let b = true
        switch b {
        case true:
            print("true")
        case false :
            print("false")
        }
			}
			else {
				print("not available")
			}
			
			
			//return because else can't fall through
			guard #available(iOS 9, *) else {print("not available"); return}
			
        
        //MARK: - enum -
        
        enum TestEnum : Int{
            case value1 = 1
            case value2 = 2
        }
        
        var t:TestEnum = TestEnum.value1;
        var t2 = t

        switch t2 {
        case .value1:
            print("value1")
        case .value2:
            print("value1")
        }
        
        enum TestEnum2: Int {
            case One = 1
            case Two
            case Three
        }
        
        var testEnum2 = TestEnum2.Two
        
        switch (testEnum2) {
        case .One:
            print("one")
        case .Two:
            print("two")
        case .Three:
            print("three")
        }
        
        
        enum Sexe : String {
            case Male="Male"
            case Female="Female"
        }
        
        let sexe1:Sexe = Sexe.Male
        let sexe2:Sexe = Sexe.Female
        print("sexe1: \(sexe1.rawValue)")
        
        
        //MARK: - associated value -
        
        enum Student {
            case Name(String)
            case Mark(Int, Int, Int)
        }
        
        var studentName = Student.Name("bob")
        var studentMark = Student.Mark(1,2,3)
        
        switch studentMark  {
        case .Name(let studName):
                print("name: \(studName)")
        case .Mark(let mark1, let mark2, let mark3):
                print("mark: \(mark1), \(mark2), \(mark3)")
        }
        
        //MARK: - range -
			
        let num:Int = 10
        
        switch num {
        case Int.min ..< 0:
            print("negative")
        case 0...5:
                print("case 1")
        case 5..<20:
            print("case 2")
        case 21...:
            print("big")
        default:
            fatalError("default")
        }

        
        
        //let num2:Int = Int.random(in: 0 ... 100) //4.2
        //let num2:Int = Int(arc4random_uniform(100))
        let num2:Int = randomInt(min:0, max:100)
        let num3:Int = random(100)
        switch num2 {
        case ..<0:
            print("negative")
        case 0..<5:
            print("small: \(num2)")
            fallthrough
        case 5..<10:
            print("small: \(num2)")

        case 13, 67:
            print("special")
            
        case 10...:
            print("big")
            
        default:
            fatalError("wrong value")
        }
			
			//MARK: - tupples, let
			
			var point = (0, 0)
			
			switch point {
			case (0, 0):
				print("case1")
				
			case (0, 1):
				print("case2")
				
			case (0, _):
				print("case3")
				
			case (-2...2, -2...2):
				print("case3")
				
			case (0, let y):
				print("case: \(y)")
				
			case let (x,y):
				print("case: \(x), \(y)")
				

			default:
				print("other")
				
			}
			
			
			//MARK: where
			
			var value = 10
			
			switch value {
			case 0:
				print("case")
			case 1..<5:
				print("case")
			case let x where x < 0 && x > -1000:
				print("case")
				
			default:
				print("default")
			}
			
			switch point {
				
			case let (x, _) where x > 100:
				print("test")
			case let (x, y) where x > 200:
				print("test")
				
			case (0, let y) where y < 0:
				print("test")

				default:
					print("default")
				
			}
			
        
        
			
        
        
    }
    
    func randomInt(min:Int, max:Int) -> Int {
        return Int(arc4random_uniform(UInt32(max-min + 1)) + UInt32(min))
    }
	
		@available(iOS 9.0, *) //test
    func random(_ n:Int) -> Int {
        return Int(arc4random_uniform(UInt32(n)))
    }

}

