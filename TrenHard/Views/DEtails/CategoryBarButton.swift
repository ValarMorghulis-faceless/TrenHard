//
//  CategoryBarButton.swift
//  TrenHard
//
//  Created by Giorgi Samkharadze on 18.03.23.
//

import SwiftUI

struct CategoryBarButton: View {
    var buttonText: String 
    var isActive: Bool
    var body: some View {
      Text(buttonText)
            .font(.system(size: 20))
            .foregroundColor(isActive ? .white : .black)
            .padding(10)
            .background( isActive ?  Color.buttonColor.cornerRadius(40) : Color.white.cornerRadius(40))
            .background(
            RoundedRectangle(cornerRadius: 40)
                .stroke(Color.gray, lineWidth: 1)
            )
    }
}

struct CategoryBarButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryBarButton(buttonText: "Full Body", isActive: false)
    }
}
