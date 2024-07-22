//
//  TCAPraticeApp.swift
//  TCAPratice
//
//  Created by 김진수 on 7/22/24.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCAPraticeApp: App {
    var body: some Scene {
        WindowGroup {
//            ContentView(
//                store: Store(
//                    initialState: ContactsFeature.State(
//                        contacts: [
//                            Contact(id: UUID(), name: "Blob"),
//                            Contact(id: UUID(), name: "Blob Jr"),
//                            Contact(id: UUID(), name: "Blob Sr")
//                        ]
//                    ), reducer: {
//                        ContactsFeature()
//                    })
//            )
            AddContactView(
                store: Store(
                initialState: AddContactFeature.State(
                    contact: Contact(
                        id: UUID(),
                        name: "Blob"
                    )
                ),
                reducer: {
                    AddContactFeature()
                })
            )
        }
    }
}
