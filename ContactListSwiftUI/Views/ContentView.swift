//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by ikorobov on 24.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let contacts = Person.getPersonList()
    
    var body: some View {
        TabView {
            ContactListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Contacts")
                }
            NumbersView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
