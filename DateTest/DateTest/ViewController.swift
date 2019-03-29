//
//  ViewController.swift
//  DateTest
//
//  Created by Chris Comeau on 2018-07-27.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
			
				let now = Date()
				print("now: \(now)")

				let formatter = DateFormatter();
				formatter.dateFormat = "yyyy/MM/dd HH:mm"
				if let date1 = formatter.date(from:"1979/01/27 10:23") {
					print("date1:\(date1)")
				}
			
	//			if(date1.isSunday()) {
	//				print("date1: isSunday")
	//			}
	}

}

