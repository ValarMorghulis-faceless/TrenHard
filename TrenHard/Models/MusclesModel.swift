//
//  MusclesModel.swift
//  TrenHard
//
//  Created by Giorgi Samkharadze on 22.03.23.
//

import Foundation


struct Muscle: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let exercises: [Exercises]
}

struct Exercises: Codable, Identifiable {
    let id: Int
    let name: String
    let imageName: String
    let link: String
    let overview: String
    let howto : [String]
    
}
