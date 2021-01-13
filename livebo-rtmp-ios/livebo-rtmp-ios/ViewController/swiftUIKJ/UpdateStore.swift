//
//  UpdateStore.swift
//  Created by yqb on 2020/12/24.
//  Copyright © 2020 iblai All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    let didChange = PassthroughSubject<Void, Never>()
    
    @Published var updates: [Update] = []
    
    init(updates: [Update] = []) {
        self.updates = updates
    }
}
