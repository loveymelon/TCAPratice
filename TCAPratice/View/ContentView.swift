//
//  ContentView.swift
//  TCAPratice
//
//  Created by 김진수 on 7/22/24.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    let store: StoreOf<ContactsFeature>
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(store.contacts) { contact in
                    Text(contact.name)
                }
            }
            .navigationTitle("Contacts")
            .toolbar {
                Button{
                    store.send(.addButtonTap)
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}
