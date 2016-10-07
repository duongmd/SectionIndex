//
//  TableViewController.swift
//  SectionIndex
//
//  Created by iOS Student on 10/7/16.
//  Copyright © 2016 Duong. All rights reserved.
//

import UIKit
//aa
class TableViewController: UITableViewController {
    var arrayData: NSMutableArray!
    var dictContacts = NSMutableDictionary()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        arrayData = NSMutableArray()
        
        for i in 0..<10 {
            arrayData.add(Person())
            let person = arrayData[i] as! Person
            print(person.fullName)
            print(person.mobilePhone)
        }
        
 /*       for element in arrayData {
            let person = element as! Person
            var firstLetter: String = (person.firstName as NSString!).substring(to: 1)
            
            var arrayForLetter: NSMutableArray!
            
            if (dictContacts.value(forKey: firstLetter)) != nil {
                arrayForLetter = dictContacts.value(forKey: firstLetter) as! NSMutableArray
            }
            
        }   */
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
