//
//  ViewController.swift
//  StringTest
//
//  Created by Chris Comeau on 2018-07-29.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var string1 = """
this is cool
isn't it?
"""

        let string2 = NSString(string:"""
test
test
""")

			
			let string3 = "test"
			
			
			if (string3 as String).contains("te") {
				print("contains")
			}
			
			
			let index = string3.index(of: "e")
			

			
    }


}

