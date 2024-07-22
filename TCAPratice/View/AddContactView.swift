//
//  AddContactView.swift
//  TCAPratice
//
//  Created by 김진수 on 7/22/24.
//

import SwiftUI
import ComposableArchitecture

struct AddContactView: View {
    
    // @Bindable 변화 감지??
    //    if #available(iOS 17.0, *) {
    //        @Bindable var store: StoreOf<AddContactFeature>
    //    } else {
    //        @Perception.Bindable var store: StoreOf<AddContactFeature>
    //    }
    @Perception.Bindable var store: StoreOf<AddContactFeature>
    
    var body: some View {
        Form {
            TextField("Name", text: $store.contact.name.sending(\.setName))
            Button("Save") {
                store.send(.saveButtonTapped)
            }
        }
        .toolbar {
            ToolbarItem {
                Button("Cancel") {
                    store.send(.cancelButtonTapped)
                }
            }
        }
    }
}
