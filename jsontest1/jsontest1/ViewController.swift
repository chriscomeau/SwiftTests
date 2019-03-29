//
//  ViewController.swift
//  jsontest1
//
//  Created by Christian Comeau on 2018-10-04.
//  Copyright © 2018 Test. All rights reserved.
//

import UIKit

enum API {
	//https://jsonplaceholder.typicode.com/
	static let test1 = "https://jsonplaceholder.typicode.com/posts"
	static let test2 = "https://jsonplaceholder.typicode.com/todos/1"
	static let test3 = "https://api.github.com/users/chriscomeau"
}

struct MyGitHub: Codable {
	
	let name: String?
	let location: String?
	let followers: Int?
	let avatarUrl: URL?
	let repos: Int?
	
	private enum CodingKeys: String, CodingKey {
		case name
		case location
		case followers
		case repos = "public_repos"
		case avatarUrl = "avatar_url"
		
	}
}

class ViewController: UIViewController {

	var session: URLSession?
	
	var data = [[String:Any]]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func viewWillAppear(_ animated: Bool) {
		self.session = URLSession.shared
		
		guard let session = session else {
			print("invalid session")
			return;
		}
		
		//test 1
		let task1 = session.dataTask(with: URL(string: API.test1)!, completionHandler: { (data, response, error) in
			
			guard error == nil else {
				//print("error: \(error)")
				print("error: \(String(describing: error))")
				return
			}

			guard let content = data else {
				print("invalid data")
				return
			}
			
			do {
				//let json = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.allowFragments)
				
				//let json = try JSONSerialization.jsonObject(with: content, options: []) as! [[String:Any]]

				let json = try JSONSerialization.jsonObject(with: content, options: [])
				
				guard let array = json as? [[String:Any]] else {
					//error json converting
					print("invalid json tuype")
					return

				}

				
				print("json good")
				//self.data = array
				
				for element in array {
					if let title = element["title"] {
						print("1: title: \(title)")
					}

				}
			}
			catch let error as NSError {
				print("json error: \(String(describing: error))")

			}
			
			//if let json = JSONSerialization.jsonObject(with: content, options:JSONSerialization.ReadingOptions.allowFragments) {
			
		})
		
		task1.resume()
		
		
		//test 2
		let task2 = session.dataTask(with: URL(string: API.test2)!, completionHandler: { (data, response, error) in
			
			guard error == nil else {
				//print("error: \(error)")
				print("error: \(String(describing: error))")
				return
			}
			
			guard let content = data else {
				print("invalid data")
				return
			}
			
			do {
				let json = try JSONSerialization.jsonObject(with: content, options: [])
				
				guard let dict = json as? [String:Any] else {
					//error json converting
					print("invalid json tuype")
					return
					
				}
				
				print("json good")
				
				for (key, value) in dict {
					
					print("2: key: \(key)")
					
				}
			}
			catch let error as NSError {
				print("json error: \(String(describing: error))")
				
			}
			
		})
		
		task2.resume()
		
		
		
		//test 3
		
		//https://medium.com/xcblog/painless-json-parsing-with-swift-codable-2c0beaeb21c1
		
		guard let gitUrl = URL(string: API.test3) else { return }
		URLSession.shared.dataTask(with: gitUrl) { (data, response, error) in
			guard let data = data else { return }
			do {
				let decoder = JSONDecoder()
				let gitData = try decoder.decode(MyGitHub.self, from: data)
				print(gitData.name ?? "invalid")
				
			} catch let err {
				print("Err", err)
			}
		}.resume()

	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
		
		//#error("to delete") only 4.2
	}


}

