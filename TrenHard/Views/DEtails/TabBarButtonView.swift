//
//  TabBarButtonView.swift
//  TrenHard
//
//  Created by Giorgi Samkharadze on 18.03.23.
//

import SwiftUI

enum TabBarButtonType: String {
    case browse = "square.grid.2x2"
    case home = "house.fill"
    case progress = "calendar"
    case profile =  "person.crop.circle"
}
enum TabBarButtonText: String {
    case browse = "Browse"
    case home = "Home"
    case progress = "Progress"
    case profile = "Profile"
}

struct TabBarButtonView: View {
    var type : TabBarButtonType
    var text : TabBarButtonText
    @EnvironmentObject var appState: AppStateManager
    var body: some View {
        Button(action: {
            appState.selectedTab = type
        }, label: {
            TabBarButton(buttonText: text.rawValue, imageName: type.rawValue, isActive: appState.selectedTab == type)
                .tint(appState.selectedTab == type ? .buttonColor : Color.gray.opacity(0.5) )
        })
        
    }

}

struct TabBarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButtonView(type: .home, text: .home)
            .environmentObject(AppStateManager())
            
    }
}
