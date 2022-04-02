//
//  ContentView.swift
//  moodtracker
//
//  Created by Ishrat Lallmamode on 4/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("#6b705c").ignoresSafeArea()
            
            LazyHStack{
                Text("MoodTracker")
                    .font(.title)
                    .foregroundColor(Color("#b7b7a4"))
                    .bold()
                    
                    
            }
            
        }
            
          
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
