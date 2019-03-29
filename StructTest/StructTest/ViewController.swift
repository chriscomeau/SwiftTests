//
//  ViewController.swift
//  StructTest
//
//  Created by Chris Comeau on 2018-07-31.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit

struct Point {
    var x = 0.0
    var y = 0.0
    
    mutating func moveBy(x deltaX:Double, y deltaY:Double) {
        x += deltaX
        y += deltaY
    }
}

extension Point {
    //var z = 0.0 //error
    init(x:Double) {
        self.x = x
        self.y = 0
    }
    
    /*init(x:Double, y:Double) { //invalid reclaration
        self.x = x
        self.y = y
    }*/
    
    init(x:Double, y:Double, z:Double) {
        self.x = x
        self.y = y
    }
    
    mutating func set(x:Double) {
        self.x = x
    }

}

struct Spaceship {
    var name: String
    
    //func setName(_ newName: String) { //error not mutating
    mutating func setName(_ newName: String) { //error not mutating
            name = newName
    }
}

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        var p:Point = Point(x: 1.0, y: 1.0)
        
        p.moveBy(x: 5, y: 5)
        

    }

   
}

