//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by ikorobov on 24.09.2022.
//

import SwiftUI

struct ContactListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) {person in
                HStack {
                    Text(person.fullName)
                    NavigationLink(destination: ContactsDetailView(person: person)) {}
                }
                .navigationTitle("Contacts List")
            }
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getPersonList())
    }
}
