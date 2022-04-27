//
//  moodRecord.swift
//  moodtracker
//
//  Created by Ishrat Lallmamode on 4/13/22.
//

import Foundation
import SwiftUI

struct moodRecord: Identifiable, Codable {
    var id = UUID()
    var rating: Int
    
    //placeholder name
    var input1: String?
    var input2: String?
    var input3: String?
    
}

class moodStore: ObservableObject {
    @Published var moodRecords = [moodRecord]()
    
    func addMood(_ mood: moodRecord) {
        moodRecords.append(mood)
    }
    
    init() {
        moodRecords = []
    }
}


