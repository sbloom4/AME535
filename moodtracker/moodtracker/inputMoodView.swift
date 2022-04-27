//
//  inputMoodView.swift
//  moodtracker
//
//  Created by Ishrat Lallmamode on 4/13/22.
//

import SwiftUI
import Foundation

struct inputMoodView: View {
    
    @State var mood = 0
    @State var todaysDate = Date()
        var body: some View {
            ZStack{
                Color("#ffe8d6").ignoresSafeArea()

            ScrollView{
                
                
                LazyVStack(spacing: 5.0) {
                    Text("How are you feeling \(todaysDate)")
                        .font(.headline)
                        .foregroundColor(Color("#6b705c"))
                    Picker("How are you feeling?", selection: $mood) {
                        Image(systemName: "1.circle.fill")
                            .tag(1)
                        
                        Image(systemName: "2.circle.fill").tag(2)
                        Image(systemName: "3.circle.fill").tag(3)
                        Image(systemName: "4.circle.fill").tag(4)
                        Image(systemName: "5.circle.fill").tag(5)
                    }
                    .pickerStyle(.segmented)
                    .padding()
                    
                    
                
                    switch mood{
                    case 1:
                        one()
                    case 2:
                        middle()
                    case 3:
                        middle()
                    case 4:
                        four()
                    case 5:
                        four()
                    default:
                        Text("")
                    }

            
                }
            
            }
        }
    }
}

struct inputMoodView_Previews: PreviewProvider {
    static var previews: some View {
        inputMoodView()
    }
}
