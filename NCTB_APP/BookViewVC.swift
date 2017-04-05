//
//  BookViewVC.swift
//  NCTB_APP
//
//  Created by Sanzid Ashan on 4/5/17.
//  Copyright © 2017 Sanzid Ashan. All rights reserved.
//

import UIKit


    
    


class BookViewVC: UIViewController {
    
    @IBOutlet weak var webViewLink: UILabel!

    @IBOutlet weak var webView: UIWebView!
    
    var getWebViewText = String()
    
    
    func webViewBook(name : String ){
        
        let url = URL (string: getWebViewText )
        let requestObj = URLRequest(url: url!)
        webView.loadRequest(requestObj)
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webViewLink.text = getWebViewText
        

        webViewBook(name: getWebViewText)
        
        
//        let url = URL (string: getWebViewText )
//        let requestObj = URLRequest(url: url!)
//        webView.loadRequest(requestObj)
        
        

        // Do any additional setup after loading the view.
    }
    
   
    
    
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
