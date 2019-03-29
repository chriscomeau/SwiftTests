//
//  ViewController.swift
//  ErrorTest
//
//  Created by Chris Comeau on 2019-03-29.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	struct APIError: Error {
		enum ErrorKind: Int {
			case genericError = 0
			// TODO: better error types
		}
		
		let kind: ErrorKind
		let message: String?
	}

	
	override func viewDidLoad() {
		super.viewDidLoad()

		let error = APIError(kind: .genericError, message:"No data")

		printError(error: error)
	}

	func printError(error: APIError) {
		print("Error: \(error.message ?? "No message"), code:\(error.kind.rawValue)")

	}

}

