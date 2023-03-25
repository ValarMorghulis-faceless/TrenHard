//
//  CoverImageView.swift
//  TrenHard
//
//  Created by Giorgi Samkharadze on 22.03.23.
//

import SwiftUI
import UIKit


struct CoverImageView: View {
    //MARK: - Properties
    init() {
       UIPageControl.appearance().currentPageIndicatorTintColor = .red
       UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
       }

    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    //MARK: - Body
    
    
    var body: some View {
        TabView {
            ForEach(coverImages) { image in
                Image(image.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .accentColor(.red)
        
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
    }
}
