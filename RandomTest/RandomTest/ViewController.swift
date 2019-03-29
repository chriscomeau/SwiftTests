//
//  ViewController.swift
//  RandomTest
//
//  Created by Chris Comeau on 2018-08-15.
//  Copyright © 2018 Chris Comeau. All rights reserved.
//

import UIKit

extension Int {
    //static func getRandom(from:Int, to:Int) -> Int {
    static func random(_ from:Int, _ to:Int) -> Int {
        return 0
    }
    
    static func random2(in:Range<Int>) -> Int {
        return 0
    }
    
    static func random3(in:Array<Int>) -> Int {
        return 0
    }

}

class ViewController: UIViewController {

//    func randomLocal(_ from:Int, _ to:Int) -> Int {
//        return 0
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //swift 4.2?
        //let random1 = UInt8.random(in: 0..<6) // → 5

        let _ = arc4random_uniform(100) //0-99
        
        //let _ = Int.getRandom(from:0, to:100)
        //let _ = Int.getRandom(from:Int(0), to:Int(100))
        //let _ = Int.getRandom(Int(0), Int(100))
        let _ = Int.random(0, 100)

        //let _ = randomLocal(0, 100)
       
        
        let _ = Int.random2(in: 0..<100)
        //let _ = Int.random2(in: 0...100) //error
        
        let _ = Int.random3(in:[1,2,3])

        let _ = Int.random3(in: Array(0...100))
        let _ = Int.random3(in: Array(0..<100))
    }

    

}

