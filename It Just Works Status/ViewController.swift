//
//  ViewController.swift
//  It Just Works Status
//
//  Created by Riccardo Crippa on 4/21/16.
//  Copyright © 2016 Riccardo Crippa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    private struct Constants {
        static let title = "Your Title Goes Here"
        static let URL = "Your URL Goes Here"
        static let loading = "Your Text During Loading Goes Here"
    }
    
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = Constants.title
        self.webView.delegate = self
        self.webView.loadRequest(URLRequest(url: URL(string: Constants.URL)!))
    }
    @IBAction func reload(_ sender: UIBarButtonItem) {
        self.webView.reload()
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        self.title = Constants.loading
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        self.title = Constants.title
    }


}

