//
//  ViewController.swift
//  WebViewTest
//
//  Created by Chris Comeau on 2018-07-22.
//  Copyright © 2018 Skyriser Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet private weak var webView:UIWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let webView = webView {
            webView.delegate = self
        }
        
        if let url = URL(string:"https://google.com") {
            let request:URLRequest = URLRequest(url: url)
            webView?.loadRequest(request)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - UIWebView -
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        print("webViewDidStartLoad")
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        print("didFailLoadWithError \(error.localizedDescription)")
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("webViewDidFinishLoad")
    }

}

