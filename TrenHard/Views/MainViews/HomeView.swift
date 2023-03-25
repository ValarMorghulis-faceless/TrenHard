//
//  HomeView.swift
//  TrenHard
//
//  Created by Giorgi Samkharadze on 15.03.23.
//

import SwiftUI

struct HomeView: View {
    //MARK: - Properties
    @EnvironmentObject private var appState: AppStateManager
    //MARK: - Functions
    
    func correctViewForState() -> some View {
        switch appState.selectedCat {
        case .fullBody:
            let view = FullBodyView()
            return AnyView(view)
        case .cardio:
            let view = CardioView()
            return AnyView(view)
        case .crossFit:
            let view = CrossFitView()
            return AnyView(view)
        case .weightLifting:
            let view = WeightLiftingView()
            return AnyView(view)
        case .bodyWeight:
            let view = BodyWeightView()
            return AnyView(view)
        case .yoga:
        let view = YogaView()
            return AnyView(view)
        }
    }
    
    //MARK: - Body
    var body: some View {
        VStack {
            
            ScrollView(.horizontal,showsIndicators: false) {
                LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                                    CategoryBarView(text: .fullBody)
                                    CategoryBarView(text: .cardio)
                                    CategoryBarView(text: .crossFit)
                                    CategoryBarView(text: .weightLifting)
                                    CategoryBarView(text: .bodyWeight)
                                    CategoryBarView(text: .yoga)
                }
            }
            .frame(height: 50)
            .padding()
            
            Spacer()
           
            correctViewForState()
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(AppStateManager())
    }
}
