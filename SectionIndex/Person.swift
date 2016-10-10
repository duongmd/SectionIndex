//
//  Person.swift
//  SectionIndex
//
//  Created by iOS Student on 10/7/16.
//  Copyright © 2016 Duong. All rights reserved.
//

import Foundation

class Person {

    // Thêm static để khi khởi tạo lại(vòng lặp for in bên TableViewController chạy tiếp) thì nó vẫn giữ lại giá trị cũ trước đó
    
    static var arrFirstNameMen: [String]!
    static var arrFirstNameWomen: [String]!
    static var arrLastName: [String]!
    static var arrMiddleNameMen: [String]!
    static var arrMiddleNameWomen: [String]!
    static var arrHeadNumber: [String]!
    
    var fullName: String!
    var lastName: String!
    var firstName: String!
    var middleName: String!
    var mobilePhone: String!
    
    static var isCheck: Bool = true
    
    //init() tạo đối tượng person từ class Person
    init() {
        if Person.isCheck == true {
            Person.arrFirstNameMen = ["Anh", "Bắc", "Biên", "Chung", "Chiến", "Chính", "Công", "Dương", "Dũng", "Đạo", "Điền", "Đạt", "Kiên", "Kiểm", "Long", "Mạnh", "Nam", "Nhân", "Phúc", "Phước", "Phú", "Quảng", "Quân", "Sáng", "Trung", "Tú", "Cần", "Minh", "Phương", "Thế", "Duy", "Cường", "Huy", "Thắng", "Tiến", "Tùng", "Bình"]
            Person.arrFirstNameWomen = ["An", "Anh", "Ánh", "Chung", "Dung", "Giang", "Hằng", "Hương", "Khánh", "Liên", "Linh", "Liễu", "Mai", "Nhi", "Nhung", "Oanh", "Phúc", "Quyên", "Quỳnh", "Thuỷ", "Thảo", "Tú", "Phương",  "Hoa", "Huệ", "Uyên", "Yến", "Xuân"]
            Person.arrMiddleNameMen = ["Văn", "Đăng", "Bảo", "Đình", "Minh", "Vĩnh", "Hữu", "Công", "Khắc", "Duy", "Kim", "Thế", "Xuân"]
            Person.arrMiddleNameWomen = ["Thị", "Ngọc", "Thuỳ"]
            Person.arrLastName = ["Hoàng", "Trần", "Nguyễn", "Đặng", "Phạm", "Trịnh", "Đỗ", "Đinh", "Lê", "Vũ", "Bùi", "Hồ", "Ngô",  "Dương", "Lý", "Lương", "Doãn"]
            
            Person.arrHeadNumber = ["091", "092", "093", "094", "096", "097", "098", "0123", "0168"]
            
            Person.isCheck = false
        }
        let genderIndex = arc4random_uniform(2) //Random ra so 0 hoac 1
        if genderIndex == 0 {
            middleName = Person.arrMiddleNameWomen[Int(arc4random_uniform(UInt32(Person.arrMiddleNameWomen.count)))]
            firstName = Person.arrFirstNameWomen[Int(arc4random_uniform(UInt32(Person.arrFirstNameWomen.count)))]
        } else {
            middleName = Person.arrMiddleNameMen[Int(arc4random_uniform(UInt32(Person.arrMiddleNameMen.count)))]
            firstName = Person.arrFirstNameMen[Int(arc4random_uniform(UInt32(Person.arrFirstNameMen.count)))]
        }
        lastName = Person.arrLastName[Int(arc4random_uniform(UInt32(Person.arrLastName.count)))]
        
        fullName = lastName + " " + middleName + " " + firstName
        mobilePhone = Person.arrHeadNumber[Int(arc4random_uniform(UInt32(Person.arrHeadNumber.count)))] + "\(1000000 + arc4random_uniform(9000000))"
    }
    
}
