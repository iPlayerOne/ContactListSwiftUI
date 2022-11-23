//
//  ContactsDetailView.swift
//  ContactListSwiftUI
//
//  Created by ikorobov on 24.09.2022.
//

import SwiftUI

struct ContactsDetailView: View {
    
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                Spacer()
            }
            HStack {
                Image(systemName: "phone")
                Text(person.number)
            }
            HStack {
                Image(systemName: "envelope")
                Text(person.email)
            }
        }
        .navigationTitle(person.fullName)
    }
}

struct ContactsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsDetailView(person: Person.getPersonList()[0])
    }
}
