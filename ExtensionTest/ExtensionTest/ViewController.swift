//
//  ViewController.swift
//  ExtensionTest
//
//  Created by Chris Comeau on 2018-07-29.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit

class Class1 {
	func publicMethod() {
		
	}
}

private extension Class1 {
	
	func privateMethod() {
		
	}
}

enum API1  {
	static let url1 = "http://google.com"
	static let url2 = "http://google.com"
}

struct API2 {
	private init(){}
	static let url1 = "http://google.com"
	static let url2 = "http://google.com"
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let array = [0...5];
        let array2 = (0...5);
        let array3 = [0,1,2,3]
        
        let array4 = Array(0...5)
        print("1: \(type(of:array)) : \(array)")
        print("2: \(type(of:array2)) : \(array2)")
        print("3: \(type(of:array3)) : \(array3)")
        print("4: \(type(of:array4)) : \(array4)")

        
        let array5 = Array(0...10);
        let array6 = array5.everyOther()
        print("5: \(array6)")

        
        //slices
        
        let array7 = [1,2,3,4,5]
        let subarray = array7.dropFirst()
        let secondIndex = array7.index(after: array7.startIndex)
        
        print(secondIndex == subarray.startIndex) //true
        
        
        
        //slice
        
        var array8 = [1,2,3,4,5,6,7,8]
        
        //let arrayHalf = array8.firstHalf()
        //let arrayHalf = array8.firstHalf

        array8 = []
        
        //print("arrayHalf: \(arrayHalf)")
			
			
				let testURL = API1.url1
				let testURL2 = API2.url1

			//errors, on purpose
//				let error1 = API1()
//				let error2 = API2()
			
			
        
    }

}

extension Collection {
    func everyOther() -> Array<Element>{
        
        var outputArray = [Element]()
        
        let start = self.startIndex
        let end = self.endIndex
        
        var iter = start
        
        while (iter != end) {
            let element = self[iter]
            
            outputArray.append(element)
            
            let next = index(after: iter)
            
            if (next == end) { break }
            
            iter = index(after: next)
        }
        
        return outputArray
    }
    
}

extension Collection {
    
    func second_OLD() -> Element? {
        
        guard self.startIndex != self.endIndex else {return nil}
        
        if isEmpty {return nil}
        
        
        
        var firstElement = first
        
        var secondElement: Element? = nil
        
        
        let index = self.index(after: self.startIndex)
        
        guard index != self.endIndex else {return nil}
        
        //if index != self.startIndex {return nil}
        
        //secondElement = firstElement+=1
        
        return self[index]
    }
    
    func second() -> Element? {
        return self.dropFirst().first
    }
    
    //func firstHalf() -> ArraySlice<Element> {
//    var firstHalf: ArraySlice<Element> {
//			return self.dropLast(self.count/2)
//    }
}

