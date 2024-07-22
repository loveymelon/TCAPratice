//
//  ContactsFeature.swift
//  TCAPratice
//
//  Created by 김진수 on 7/22/24.
//

import Foundation
import ComposableArchitecture

struct Contact: Equatable, Identifiable {
  let id: UUID
  var name: String
}


@Reducer
struct ContactsFeature {
    
    @ObservableState // 재 init이 안되게 하기 위해서 매크로
    struct State: Equatable {
        var contacts: IdentifiedArrayOf<Contact>
    }
    
    enum Action {
        case addButtonTap
    }
    
    var body: some ReducerOf<Self> {
        
        Reduce { state, action in
            switch action {
            default:
                break
            }
        
            return .none
        }
    }
    
    
}
