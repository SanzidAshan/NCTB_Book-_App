//
//  BookViewVC.swift
//  NCTB_APP
//
//  Created by Sanzid Ashan on 4/5/17.
//  Copyright © 2017 Sanzid Ashan. All rights reserved.
//

import UIKit




class BookViewVC: UIViewController {
    
    @IBOutlet weak var topConstrains: NSLayoutConstraint!
    
    @IBOutlet weak var webViewLink: UILabel!

    @IBOutlet weak var webView: UIWebView!
    
    var getWebViewText = String()
    var getWebDownloadLink = String()
    
    
    @IBOutlet weak var webViewDownload: UILabel!
    
    
    func webViewBook(name : String ){
        
        let url = URL (string: name )
        let requestObj = URLRequest(url: url!)
        webView.loadRequest(requestObj)
        
    }
    
    func webViewBookDownload(name : String ){
        
        let url = URL (string: getWebDownloadLink )
        let requestObj = URLRequest(url: url!)
        webView.loadRequest(requestObj)
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webViewLink.text = getWebViewText
        
        
        

        webViewBook(name: getWebViewText)
        
        let itemButton = UIBarButtonItem(image: UIImage(named: "002-arrows"), style: .plain, target: self, action:#selector(DownloadLayout(sender:))) // action:#selector(Class.MethodName) for swift 3
        self.navigationItem.rightBarButtonItem  = itemButton
        
       

        
       
        

        // Do any additional setup after loading the view.
    }
    
   
    func DownloadLayout(sender: UIBarButtonItem) {
        
     
        
        webViewBookDownload(name: getWebDownloadLink )

        
//        if topConstrains.constant != 0 {
//            
//            topConstrains.constant = 0
//        }
//        
//        else if topConstrains.constant == 0{
//            
//            topConstrains.constant = -60
//            
//        }
        
        
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
