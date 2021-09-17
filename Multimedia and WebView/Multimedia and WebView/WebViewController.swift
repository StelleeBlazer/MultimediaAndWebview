//
//  WebViewController.swift
//  Multimedia and WebView
//
//  Created by Mac n Cheese on 10/06/21.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlWeb = URL(string: "https://idn.id")
        webView.load(URLRequest(url: urlWeb!))

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
