//
//  ViewController.swift
//  ProtocolTEst
//
//  Created by Chris Comeau on 2018-07-31.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

protocol Sound {
	func makeSound()
	
}

struct Dog:Sound {
	func makeSound() {
		print("woof")
	}
}



protocol Number {
	var floatValue:Float {get}
}

extension Int:Number {
	var floatValue:Float {
		return Float(self)
	}
}


extension Double:Number {
	var floatValue:Float {
		return Float(self)
	}
}

func takeNumber(number:Number) {
	print("float: \(number.floatValue)")
}

extension Sound {
	func makeSound() {
		print("wow")
	}
}

