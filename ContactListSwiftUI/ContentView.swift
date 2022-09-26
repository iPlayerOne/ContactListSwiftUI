//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by ikorobov on 24.09.2022.
//

import SwiftUI

private let persons = Person.getPersonList()

struct ContentView: View {
    var body: some View {
        TabView {
            ContactListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Contacts")
                }
            NumbersView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
