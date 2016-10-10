//
//  DetailVC.swift
//  SectionIndex
//
//  Created by iOS Student on 10/10/16.
//  Copyright © 2016 Duong. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    var labelName = UILabel()
    var label2 = UILabel()
    var btn1 = UIButton()
    var btn2 = UIButton()
    var person = Person()
    var label3 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        
        self.labelName.frame = CGRect(x: 30, y: 100, width: 300, height: 50)
        self.labelName.font = UIFont.boldSystemFont(ofSize: 30)
        
        self.label2.frame = CGRect(x: 30, y: 200, width: 200, height: 50)
        self.label2.font = UIFont.boldSystemFont(ofSize: 20)
        self.label3.frame = CGRect(x: 30, y: 190, width: 200, height: 30)
        self.label3.font = UIFont.boldSystemFont(ofSize: 20)
        
        self.labelName.text = person.fullName
        labelName.textColor = UIColor.red
        
        self.label2.text = person.mobilePhone
        self.label3.text = "mobile"
        label3.textColor = UIColor.blue
        
        self.btn1.frame = CGRect(x: 250, y: 200, width: 50, height: 50)
        self.btn2.frame = CGRect(x: 330, y: 200, width: 50, height: 50)
        
        let img1 = UIImage(named: "Martz90-Circle-Messages.ico")
        btn1.setImage(img1, for: .normal)
        
        let img2 = UIImage(named: "telephone.jpg")
        btn2.setImage(img2, for: .normal)
        
        self.view.addSubview(self.labelName)
        self.view.addSubview(self.label2)
        self.view.addSubview(self.label3)
        self.view.addSubview(self.btn1)
        self.view.addSubview(self.btn2)
    }

}
