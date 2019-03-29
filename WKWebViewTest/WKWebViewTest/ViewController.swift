//
//  ViewController.swift
//  WKWebViewTest
//
//  Created by Chris Comeau on 2018-07-22.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

    @IBOutlet private weak var webView : WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //safe
        #if true
        if let webView = webView {
            webView.uiDelegate = self;
            
            let myURL = URL(string:"https://google.com")
            if let myURL = myURL {
                let myRequest = URLRequest(url: myURL)
                webView.load(myRequest)

            }
        }
        #endif
   
        #if false
        //unsafe
        webView!.uiDelegate = self;
        let myURL = URL(string:"https://apple.com")
        let myRequest = URLRequest(url:myURL!)
        webView!.load(myRequest)
        #endif

    }

    func webView(webView: WKWebView!, didFailProvisionalNavigation navigation: WKNavigation!, withError error: NSError!) {
        print("didFailProvisionalNavigation")
        
        let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}

