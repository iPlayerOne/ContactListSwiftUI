//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by ikorobov on 24.09.2022.
//

import SwiftUI


struct NumbersView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts){ person in
                Section(header: Text(person.fullName).font(.headline)) {
                    HStack {
                        Image(systemName: "phone")
                        Text(person.number)
                    }
                    HStack {
                        Image(systemName: "envelope")
                        Text(person.email)
                    }
                }
                .listStyle(.plain)
                .navigationTitle("Contact List")
            }
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contacts: Person.getPersonList())
    }
}
