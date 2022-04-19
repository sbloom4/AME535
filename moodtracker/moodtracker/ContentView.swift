//
//  ContentView.swift
//  moodtracker
//
//  Created by Ishrat Lallmamode on 4/1/22.
//

import SwiftUI



struct ContentView: View {
    @State private var sheetView = false
    @State private var userName = ""
    @State private var isActive = false
    var body: some View {
        NavigationView{
            ZStack{
                Color("#6b705c").ignoresSafeArea()
                LazyVStack{
                    Text("MoodTracker")
                        .font(.title)
                        .foregroundColor(Color("#b7b7a4"))
                        .bold()
                    
                    Button("New User?") {
                        sheetView = true
                    }
                    .padding(15.0)
                    .cornerRadius(20.0)
                    .background(Color("#cb997e"))
                    .foregroundColor(Color("#ffe8d6"))
                    .sheet(isPresented: $sheetView) {
                        
                        Text("Welcome to MoodTracker!")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(3.0)
                        
                        Text("The goal of this app is to help you track your moods in order to be able to take control of your mental health.")
                            .padding(3.0)
                        
                        Text("Disclaimer:  This app is not a replacement for seeking help from a mental professional.   The tools provided are not a substitute or a medical diagnosis.")
                            .padding(3.0)
                        
                        TextField("Name:", text: $userName)
                            .padding(3.0)
                            .border(Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1)
                        Button("Submit")
                        {
                            sheetView = false
                            
                        }
                        
                        Button("Close") {
                            sheetView = false
                        }
                    }
                    Spacer()
                        .frame(height: 10)
                    // code by HackingwithSwift
                    NavigationLink(destination: homeScreen(), isActive: $isActive){ EmptyView() }
                    Button("Returning User") {
                        isActive = true
                    }
                    .padding(15.0)
                    .cornerRadius(20.0)
                    .background(Color("#cb997e"))
                    .foregroundColor(Color("#ffe8d6"))
                }
                
            }
            
            
            
        }
                
    }
            
            
}
            


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
