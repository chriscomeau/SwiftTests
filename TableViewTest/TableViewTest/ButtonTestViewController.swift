//
//  ButtonTestViewController.swift
//  TableViewTest
//
//  Created by Christian Comeau on 2018-07-25.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit
//import Cocoa

class ButtonTestViewController: UIViewController {

	@IBOutlet weak var button: UIButton?
	
	
	/*@IBOutlet weak var loginOrSignupButton: NSButton! {
		didSet {
			let title = NSLocalizedString("signup_required_button")
			loginOrSignupButton.setTitle(title, for: .normal)
			loginOrSignupButton.setTitle(title, for: .highlighted)
		}
		
		*/

		
    override func viewDidLoad() {
        super.viewDidLoad()

			
			//MARK: - CGREct -
			
			var rect: CGRect = CGRect(x:0, y:0, width:100, height:20)
			rect.size.width = 200
			
			
			var rect2 = CGRect(x:0, y:0, width:100, height:100)

			
			//button
		
			let myButtonRect = CGRect(x: 10, y: 10, width: 100, height: 10)
			let myButton =  UIButton(frame: myButtonRect)
			view.addSubview(myButton)
			
			myButton.addTarget(self, action: #selector(actionButton(_:)), for:.touchUpOutside)
			myButton.addTarget(self, action: #selector(actionButton2(_:)), for: .touchUpInside)
            myButton.backgroundColor = UIColor.red
            myButton.backgroundColor = UIColor.init(red: 100, green: 100, blue: 20, alpha: 1)
	//		myButton.target = self
	//		myButton.action = Selector(printSomething())

		
			
			/*if let button = button {
				button.setTitle("Title", for: UIControlState.normal)
				
				button.setTitleColor(UIColor.blue, for: UIControlState.normal)
				
				var color = UIColor.blue.withAlphaComponent(0.1)
				color = UIColor(red: 0.5, green: 0.5, blue: 0.2, alpha: 1.0)
				button.setTitleColor(color, for: UIControlState.normal)
				https://medium.com/breakfastcode/attributed-strings-in-swift-6d4b37db59a5
				let attribDict = [
					NSFontAttributedName :
				]
				
				var attrib:NSAttributedString = NSAttributedString(string: "Attrib", attributes: attribDict)
				
			}*/
			
			
    }
	
	@objc func actionButton(_ sender: UIButton!) {
		print("actionButton")
	}
	
	@objc func actionButton2(_ sender: UIButton!) {
		
	}

}
