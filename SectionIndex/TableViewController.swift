//
//  TableViewController.swift
//  SectionIndex
//
//  Created by iOS Student on 10/7/16.
//  Copyright © 2016 Duong. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var arrayData: NSMutableArray!
    var dictContacts = NSMutableDictionary()
    var arrayKey: NSArray!  //Lay key trong dictionnary
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        //Màu chữ và nền cột bên phải
        self.tableView.sectionIndexBackgroundColor = UIColor.gray
        self.tableView.sectionIndexColor = UIColor.white
        
        arrayData = NSMutableArray()
        
        for i in 0..<70 {
            arrayData.add(Person())
            let person = arrayData[i] as! Person
            print(person.fullName)
            print(person.mobilePhone)
        }
        
       for element in arrayData {
            let person = element as! Person
            var firstLetter: String = (person.firstName as NSString!).substring(to: 1)
        
             if firstLetter == "Đ" {
                firstLetter = "D"
        }
             if firstLetter == "Á" {
                firstLetter = "A"
        }
            var arrayForLetter: NSMutableArray!
            
            if (dictContacts.value(forKey: firstLetter)) != nil {
                arrayForLetter = dictContacts.value(forKey: firstLetter) as! NSMutableArray
                arrayForLetter.add(person)
                dictContacts.setValue(arrayForLetter, forKey: firstLetter)
            }   else {
                arrayForLetter = NSMutableArray(object: person)
                dictContacts.setValue(arrayForLetter, forKey: firstLetter)
        }
        }
  //      print(dictContacts)
            arrayKey = dictContacts.allKeys as NSArray!
        arrayKey = arrayKey.sortedArray(using: #selector(NSNumber.compare(_:))) as NSArray
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return arrayKey.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionTitle = arrayKey[section]
        let sectionPersons = dictContacts[sectionTitle as! String] as! NSArray
        
        return (sectionPersons.count)
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrayKey[section] as? String
    }

    //Tạo cột bên phải
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return arrayKey as? [String]
    }
    
    //Thay đổi màu nền và chữ của phần header section
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = UIColor.gray
        let header: UITableViewHeaderFooterView = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.white
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if (cell == nil)    {
            cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Cell")
        }
        let sectionTitle = arrayKey[indexPath.section]
        let sectionPersons = dictContacts[sectionTitle as! String]
        
        let person = (sectionPersons as! NSArray)[indexPath.row] as! Person
        
        cell?.textLabel?.text = person.fullName
        cell?.detailTextLabel?.text = person.mobilePhone

        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detaiVC = DetailVC()
        
        let sectionTitle = arrayKey[indexPath.section]
        let sectionPersons = dictContacts[sectionTitle as! String]
        
        let person = (sectionPersons as! NSArray)[indexPath.row] as! Person

        detaiVC.person = person
        
        self.navigationController?.pushViewController(detaiVC, animated: true)
    }
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


