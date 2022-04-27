//
//  homeScreen.swift
//  moodtracker
//
//  Created by Ishrat Lallmamode on 4/13/22.
//

import SwiftUI

struct homeScreen: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: inputMoodView(),
                    label: {
                    
                        Text("Input Mood")
                })
                
                NavigationLink(destination: moodLogView(),
                    label: {
                    
                        Text("Your Moods")
                })
                

                
            }
            
        }.navigationBarHidden(true)

    }
}


struct homeScreen_Previews: PreviewProvider {
    static var previews: some View {
        homeScreen()
    }
}
