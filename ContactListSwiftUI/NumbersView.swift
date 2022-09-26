//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by ikorobov on 24.09.2022.
//

import SwiftUI


struct NumbersView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons){ person in
                Section(header: Text(person.fullName)) {
                    HStack {
                        Image(systemName: "phone")
                        Text(person.number)
                    }
                    HStack {
                        Image(systemName: "envelope")
                        Text(person.email)
                    }
                }
                .navigationTitle("Numbers")
            }
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getPersonList())
    }
}
