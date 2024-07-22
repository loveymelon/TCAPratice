//
//  AddContactFeature.swift
//  TCAPratice
//
//  Created by 김진수 on 7/22/24.
//

import Foundation
import ComposableArchitecture

@Reducer
struct AddContactFeature {
    
    @ObservableState
    struct State: Equatable {
        var contact: Contact
    }
    
    enum Action {
        case cancelButtonTapped
        case saveButtonTapped
        case setName(String)
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case let .setName(name):
                state.contact.name = name
            case .cancelButtonTapped:
                break
            case .saveButtonTapped:
                break
            }
            
            return .none
        }
    }
}
