//
//  FullBodyView.swift
//  TrenHard
//
//  Created by Giorgi Samkharadze on 22.03.23.
//

import SwiftUI

struct FullBodyView: View {
    var body: some View {
        VStack {
            Image("Abs")
                .resizable()
                .scaledToFit()
                .frame(width: 250,height: 250)
       
            Image("Arms:Shoulders")
                .resizable()
                .scaledToFit()
                .frame(width: 250,height: 250)
        }
    }
}

struct FullBodyView_Previews: PreviewProvider {
    static var previews: some View {
        FullBodyView()
    }
}
