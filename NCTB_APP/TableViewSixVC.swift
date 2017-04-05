//
//  TableViewSixVC.swift
//  NCTB_APP
//
//  Created by Sanzid Ashan on 4/5/17.
//  Copyright © 2017 Sanzid Ashan. All rights reserved.
//

import UIKit

class TableViewSixVC: UITableViewController {
    
    
    var bookImage = [UIImage(named:"Book"),UIImage(named:"Book2"),UIImage(named:"Book3"),UIImage(named:"Book4"),UIImage(named:"Book5") ]
    
    var bookName = ["তথ্য ও যোগাযোগ প্রযুক্তি","বাংলা ব্যকরণ ও নির্মিতি ","কৃষি শিক্ষা","আনন্দ পাঠ(বাংলা দ্রুত পঠন)","কর্ম ও জীবনমুকী শিক্ষা"]
    
    
    var webView = ["https://drive.google.com/file/d/0B8L6VJQZe3EELW9PUm1NN09IM2c/view","https://drive.google.com/file/d/0B8L6VJQZe3EELW9PUm1NN09IM2c/view","https://drive.google.com/file/d/0B8L6VJQZe3EELW9PUm1NN09IM2c/view","https://drive.google.com/file/d/0B8L6VJQZe3EELW9PUm1NN09IM2c/view","https://drive.google.com/file/d/0B8L6VJQZe3EELW9PUm1NN09IM2c/view"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncommeellnt the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return bookName.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "6cell", for: indexPath) as! SixVCCell
        
        cell.bookImage.image = bookImage[indexPath.row]
        cell.bookName.text = bookName[indexPath.row]
        

        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       
        let MainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let passData = MainStoryboard.instantiateViewController(withIdentifier: "BookViewVC") as! BookViewVC
//        desCV.getImage = imageName[indexPath.row]!
//        desCV.getName = nameArray[indexPath.row]
        
        passData.getWebViewText = webView[indexPath.row]
        
        self.navigationController?.pushViewController(passData, animated: true)
        
        
        
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
