//
//  BrowseView.swift
//  TrenHard
//
//  Created by Giorgi Samkharadze on 22.03.23.
//

import SwiftUI

struct BrowseView: View {
    //MARK: - Properties
    
    let muscles: [Muscle] = Bundle.main.decode("muscles.json")
    
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 350)
                    .listRowInsets(EdgeInsets (top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(muscles) { muscle in
                    NavigationLink {
                        MuscleDetailView(muscle: muscle)
                    } label: {
                        MuscleListItemView(muscle: muscle)
                    }
                }
            }
            .navigationBarTitle("Muscles", displayMode: .large)
            
        }
       
    }
       
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}
