//
//  ContactUsViewController.swift
//  ZipIt
//
//  Created by Tayyab Ejaz on 03/10/2018.
//  Copyright © 2018 Tayyab Ejaz. All rights reserved.
//

import UIKit
import WebKit

class ContactUsViewController: UIViewController, WKNavigationDelegate {
    
    var webView : WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        //Hitting the Link
        let url = URL(string: "https://zipit.pk/contact")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        
        let preferences = WKPreferences()
        preferences.javaScriptEnabled = true
    }
    

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
    
}
