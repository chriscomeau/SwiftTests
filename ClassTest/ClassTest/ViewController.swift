//
//  ViewController.swift
//  ClassTest
//
//  Created by Chris Comeau on 2018-07-23.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit

final class FinalClass {
    
}

/*
class cantFinal : FinalClass {
  //error
}
*/

class Animal {
    
    var age:Int
    var name:String
    
    var _tag:Int = 0
    var tag:Int {
        get {
            return _tag
        }
        
        set {
            _tag = newValue
        }
    }
    
    init() {
        age = 0
        name = ""
    }
    
    init(age:Int, name:String) {
        self.age = age
        self.name = name
    }
    
    init(age:Int) {
        self.age = age
        self.name = "noname"
    }
    
    deinit {
        print("deinit")
    }
	
	
	var test1:Int {
		set {
			print(newValue)
		}
		
		get {
			return 0
		}
	}
	
	var test2:Int? {
		didSet {
			print("didSet, oldValue: ", oldValue ?? "none")
		}
	}
    
}

class Dog : Animal {
	var bones:Int
	var paws:Int

	override init() {
		bones = 0
		paws = 0

		super.init()
	}
	
	init(bones:Int) {
		self.bones = bones
		self.paws = 0

		super.init()
	}
	
	convenience init(bones:Int, paws:Int) {
		
		self.init()
		
		self.bones = bones
		self.paws = paws

	}
}




class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
			
			let _ = Dog()
			
			let animal1 = Animal()
			
			//let dog2 = animal1 as Dog //error
			
			//let dog2 = animal1 as! Dog //crash
			
			guard let _ = animal1 as? Dog else {
				print("error")
				return
			}

	
			print("done")
	}



}



extension UIImageView {
	convenience init?(named: String, contentMode: UIViewContentMode) {
		
		guard let image = UIImage(named: named) else {
			return nil
		}
		
		//self.contentMode = contentMode //error

		self.init(image:image)
		
		self.contentMode = contentMode
	}
}
