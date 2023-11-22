//
//  Contact.swift
//  ContactsNanoChallenge
//
//  Created by Rossella Ambrosio on 14/11/23.
//

import Foundation
import SwiftUI
import SwiftData

//func < (lhs: Contact, rhs: Contact) -> Bool {
//        return (lhs.surname, lhs.name) < (rhs.surname, rhs.name)
//    }

@Model
final class Contact: Identifiable {
    var id: String
    var name: String
    var surname: String
    var phoneNumber: String
    var company: String?
    var email: String?
   
//    static func == (lhs: Contact, rhs: Contact) -> Bool {
//        return (lhs.surname, lhs.name) < (rhs.surname, rhs.name)
    //trova modo di fare un model
    
    init(name: String, surname: String, phoneNumber: String, company: String) {
        self.id = UUID().uuidString
        self.name = name
        self.surname = surname
        self.phoneNumber = phoneNumber
        self.company = company
        self.email = email
        
    }
   
    
}



