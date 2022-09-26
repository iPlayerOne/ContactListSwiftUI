//
//   Person.swift
//  ContactListSwiftUI
//
//  Created by ikorobov on 24.09.2022.
//

import SwiftUI

class Person: Identifiable {
    
    let name: String
    let surname: String
    let email: String
    let number: String
    
    var fullName: String {
        name + " " + surname
    }
    
    init(name: String, surname: String, email: String, number: String ) {
        self.name = name
        self.surname = surname
        self.email = email
        self.number = number
        
    }
    
    static func getPersonList() -> [Person] {
        let contactData = DataStore.shared
        
        let names = contactData.names.shuffled()
        let surnames = contactData.surnames.shuffled()
        let numbers = contactData.phoneNumbers.shuffled()
        let mails = contactData.eMails.shuffled()
        
        var contactList: [Person] = []
        var index = 0
        
        for _ in numbers {
            while index <= contactData.phoneNumbers.count - 1 {
                contactList += [
                    Person(
                        name: names[index],
                        surname: surnames[index],
                        email: mails[index],
                        number: numbers[index]
                    )
                ]
                
                index += 1
            }
        }
        return contactList
    }
}


