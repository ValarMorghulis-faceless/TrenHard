//
//  ExercisesView.swift
//  TrenHard
//
//  Created by Giorgi Samkharadze on 23.03.23.
//

import SwiftUI

struct ExercisesView: View {
    //MARK: - Properties
    
    let exercise: Exercises
    
    //MARK: - Body
    
    var body: some View {
        GroupBox {
            Image(exercise.imageName)
                .resizable()
                .scaledToFit()
            HeadingView(headingImage: "dumbbell", headingText: exercise.name)
                .padding()
            Text(exercise.overview)
                .multilineTextAlignment(.center)
                .padding()
            
            HStack {
                Image(systemName: "globe")
                    .foregroundColor(.green)
                    .fontWeight(.light)
                Text("Browse")
                    .foregroundColor(.green)
                    .fontWeight(.light)

                Spacer()
                Link("\(exercise.name)", destination: URL(string: "\(exercise.link)")!)
                    .fontWeight(.bold)
                
                Image(systemName: "arrow.up.right.square")
                    .foregroundColor(.green)
                    .fontWeight(.bold)
                
            }
            
            
        }
        
        
    }
}

struct ExercisesView_Previews: PreviewProvider {
    static let muslces: [Muscle] = Bundle.main.decode("muscles.json")
    static var previews: some View {
        ExercisesView(exercise: muslces[0].exercises[0])
    }
}
