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
    @State private var therapistNumber = ""
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
                    .cornerRadius(20.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("#cb997e")/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("#ffe8d6")/*@END_MENU_TOKEN@*/)
                    .sheet(isPresented: $sheetView) {
                        NavigationView{
                            VStack{
                                
                            
                                Text("Welcome to MoodTracker!")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                    .padding()
                                  
                                
                                Text("The goal of this app is to help you track your moods in order to be able to take control of your mental health.").padding()
                                  
                                
                                Text("Disclaimer:  This app is not a replacement for seeking help from a mental professional.   The tools provided are not a substitute or a medical diagnosis.").padding()
                                    
                                
                                TextField("Name:", text: $userName)
                                    .padding()
                                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                    
                                Text("Somedays people can have a bad day, and that's okay. You are also able to enter your mental health professional's phone number as well. You can change this at any time.").padding()
                                
                                TextField("Therapist's Number:", text: $therapistNumber)
                                    .padding()
                                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                    
                                NavigationLink(destination: homeScreen(), isActive: $isActive){ EmptyView() }
                                Button("Submit") {
                                    isActive = true
                                    sheetView = false 
                                }
                                
                                Button("Close") {
                                    sheetView = false
                                }
                            }.padding()
                        }
                    }
                    
                    // code by HackingwithSwift
                    
                    Spacer()
                        .frame(height: 25)
                    NavigationLink(destination: homeScreen(), isActive: $isActive){ EmptyView() }
                    Button("Returning User") {
                        isActive = true
                    }
                    .padding(10.0)
                    .cornerRadius(20.0)
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
