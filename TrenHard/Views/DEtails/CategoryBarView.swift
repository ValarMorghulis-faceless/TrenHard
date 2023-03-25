//
//  CategoryBarView.swift
//  TrenHard
//
//  Created by Giorgi Samkharadze on 18.03.23.
//

import SwiftUI

enum CategoryBarButtonText: String{
    case fullBody = "Full Body"
    case cardio = "Cardio"
    case crossFit = "Cross Fit"
    case weightLifting = "Weight Lifting"
    case bodyWeight = "Body Weight"
    case yoga = "Yoga"
}

struct CategoryBarView: View {
    var text: CategoryBarButtonText
    @EnvironmentObject var appState: AppStateManager
    var body: some View {
        Button {
            appState.selectedCat = text
        } label: {
            CategoryBarButton(buttonText: text.rawValue, isActive: appState.selectedCat == text)
        }

    }
}

struct CategoryBarView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryBarView(text: .fullBody)
            .environmentObject(AppStateManager())
    }
}
