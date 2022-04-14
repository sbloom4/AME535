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
                    .padding(10.0)
                    .cornerRadius(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("#cb997e")/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("#ffe8d6")/*@END_MENU_TOKEN@*/)
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
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Button("Submit")
                        {
                            sheetView = false
                            
                        }
                        
                        Button("Close") {
                            sheetView = false
                        }
                    }
                    
                    // code by HackingwithSwift
                    NavigationLink(destination: homeScreen(), isActive: $isActive){ EmptyView() }
                    Button("Returning User") {
                        isActive = true
                    }
                    .padding(10.0)
                    .cornerRadius(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("#cb997e")/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("#ffe8d6")/*@END_MENU_TOKEN@*/)
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
