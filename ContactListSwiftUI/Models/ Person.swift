//
//   Person.swift
//  ContactListSwiftUI
//
//  Created by ikorobov on 24.09.2022.
//

struct Person: Identifiable {
    
    let id: Int
    let name: String
    let surname: String
    let email: String
    let number: String
    
    var fullName: String {
        name + " " + surname
    }
        
    static func getPersonList() -> [Person] {
        
        var contactList: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let numbers = DataStore.shared.phoneNumbers.shuffled()
        let mails = DataStore.shared.eMails.shuffled()
        
        for index in 0..<names.count {
            let person = Person(
                id: index + 1,
                name: names[index],
                surname: surnames[index],
                email: mails[index],
                number: numbers[index]
            )
            contactList.append(person)
        }
        return contactList
    }
}


