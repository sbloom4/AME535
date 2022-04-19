//
//  inputMoodView.swift
//  moodtracker
//
//  Created by Ishrat Lallmamode on 4/13/22.
//

import SwiftUI

struct inputMoodView: View {
    var body: some View {

            
        ZStack{
            
            VStack {
                
                Text(Date(), style: .date)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color("#cb997e"))
                    .multilineTextAlignment(.leading)
                
                Spacer()
                    .frame(height: 50)
                
                Text("Segmented Control")
                
                Spacer()
                    .frame(height: 15)
                
                
                        
                    
                    
                }
            }
        }
}

struct inputMoodView_Previews: PreviewProvider {
    static var previews: some View {
        inputMoodView()
    }
}
