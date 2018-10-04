//
//  ViewController.swift
//  ZipIt
//
//  Created by Tayyab Ejaz on 03/10/2018.
//  Copyright © 2018 Tayyab Ejaz. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    //Creating a WebView
    var webView : WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        
        //Hitting the Link
        let url = URL(string: "https://zipit.pk")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
   
    }
    
    override func loadView() {
//        webView = WKWebView()
//        webView.uiDelegate = self
//        webView.navigationDelegate = self
//        view = webView
        
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
    }
    
    
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
}



