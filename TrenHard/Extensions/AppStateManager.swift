//
//  AppStateManager.swift
//  TrenHard
//
//  Created by Giorgi Samkharadze on 18.03.23.
//

import Foundation


class AppStateManager: ObservableObject {
    @Published var selectedTab: TabBarButtonType = .browse
    @Published var selectedText: TabBarButtonText = .browse
    @Published var selectedCat: CategoryBarButtonText = .fullBody
}
