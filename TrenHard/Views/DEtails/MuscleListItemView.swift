//
//  MuscleListItemView.swift
//  TrenHard
//
//  Created by Giorgi Samkharadze on 22.03.23.
//

import SwiftUI

struct MuscleListItemView: View {
    
    let muscle: Muscle
    
    var body: some View {
        HStack (alignment: .center, spacing: 16) {
            Image(muscle.name)
                .resizable()
                .scaledToFill()
                .frame(width: 90,height: 90)
                .clipShape(
                RoundedRectangle(cornerRadius: 12)
                )
            VStack(alignment: .leading, spacing: 8) {
                Text(muscle.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.red)
                Text(muscle.description)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(8)
            }
            
        }
    }
}

struct MuscleListItemView_Previews: PreviewProvider {
    static let muscles: [Muscle] = Bundle.main.decode("muscles.json")
    static var previews: some View {
        MuscleListItemView(muscle: muscles[0])
    }
}
