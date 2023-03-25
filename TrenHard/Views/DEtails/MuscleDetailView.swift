//
//  MuscleDetailView.swift
//  TrenHard
//
//  Created by Giorgi Samkharadze on 22.03.23.
//

import SwiftUI

struct MuscleDetailView: View {
    
    let muscle: Muscle
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            Image(muscle.name)
                .resizable()
                .scaledToFit()
            Text(muscle.name.uppercased())
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding(.vertical,8)
                .foregroundColor(.primary)
                .background(
                    Color.red
                        .frame(height: 6)
                        .offset(y:24)
                )
            Group {
                HeadingView(headingImage: "info.circle", headingText: "All about \(muscle.name)")
                    .padding()
                
                Text(muscle.description)
                    .multilineTextAlignment(.leading)
                    .layoutPriority(1)
            
            }
            ForEach(muscle.exercises) { exercise in
                ExercisesView(exercise: exercise)
                    .padding()
                VStack(alignment: .center) {
                    ForEach(exercise.howto, id: \.self) { tip in
                        HStack(alignment: .center) {
                                Image(systemName: "circle.fill")
                                    .resizable()
                                    .frame(width: 10, height: 10)
                                    .foregroundColor(.red)
                                    .padding()
                            Spacer()
                                Text(tip)
                                 .multilineTextAlignment(.center)
                            
                                 
                        }
                    }
                    
                }
               
                
            }
        }
    }
}

struct MuscleDetailView_Previews: PreviewProvider {
    static let muscles: [Muscle] = Bundle.main.decode("muscles.json")
    
    static var previews: some View {
        NavigationView {
            MuscleDetailView(muscle: muscles[0])
        }
    }
}
