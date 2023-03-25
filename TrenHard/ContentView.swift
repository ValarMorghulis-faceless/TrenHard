//
//  ContentView.swift
//  TrenHard
//
//  Created by Giorgi Samkharadze on 15.03.23.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @EnvironmentObject private var appState: AppStateManager
    
    //MARK: - Functions
    
    func correctViewForState() -> some View {
        switch appState.selectedTab {
        case .home:
            let view = HomeView()
            return AnyView(view)
        case .progress:
            let view = Text("Progress")
            return AnyView(view)
        case .profile:
            let view = Text("Profile")
            return AnyView(view)
        case .browse:
            let view = BrowseView()
            return AnyView(view)
        }
    }
    
    //MARK: - Body
    
    
    
    var body: some View {
        ZStack {
            VStack {
           correctViewForState()
                
                Spacer()
                
                HStack() {
                    TabBarButtonView(type: .browse, text: .browse)
                    TabBarButtonView(type: .home, text: .home)
                    TabBarButtonView(type: .progress, text: .progress)
                    TabBarButtonView(type: .profile, text: .profile)
                }
                .frame(height: 70)
               // .background(Color.white)
                .padding(.bottom, -15)
                .overlay(Rectangle().frame(width: nil, height: 1, alignment: .top).foregroundColor(Color.gray.opacity(0.3)), alignment: .top)
                
            }
        }
       // .ignoresSafeArea(.keyboard,edges: .bottom)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AppStateManager())
    }
}
