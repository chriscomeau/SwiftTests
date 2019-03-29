//
//  ViewController.swift
//  ExceptionTest
//
//  Created by Chris Comeau on 2018-07-24.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /*do {
            let responseJSON = try JSONSerialization.jsonObject(with: data, options: []) as! [[String:Any]]
            
            
        } catch {
            print("oops")
        }*/
        
        var string1:String? = "test"
        do {
            var string2:String! = try string1!
        } catch {
            print("error")
        }
        
        
        //https://medium.com/@JoyceMatos/error-handling-in-swift-3-try-try-and-try-f19705e32ff4
        
        /*
         In Conclusion
         try is used with a do-catch statement and allows for a more detailed approach to error handling.
         try? ignores our errors and will set them to nil if they happen to occur.
         try! force unwraps your code and guarantees that our function will never encounter an error. In the case that our function does throw an error our app will simply crash.

         */
        
    }

}

