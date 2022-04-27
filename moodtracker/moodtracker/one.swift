//
//  one.swift
//  moodtracker
//
//  Created by meh  on 4/25/22.
//

import SwiftUI

struct one: View {
    @State private var willBeOkay = false
    @State private var showInput = false
    
    
    var callSomeone = "tel://602-326-1813"

    var body: some View {
        
          ZStack{
              
              Color("#ffe8d6").ignoresSafeArea()
              
              ScrollViewReader { proxy in
                  ScrollView{
              
            VStack{
                if !showInput {
                Image(systemName: "exclamationmark.octagon.fill")
                    .resizable(resizingMode: .tile)
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(Color.red)
                    .frame(width: 100.0, height: 100.0)
             
                    Text("ALERT!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 35)
                    
                    Text("We all have bad days! It's okay to feel like you do. However, you're not alone!")
                        .padding(.bottom, 20)
                    
                        
                    Text("To proceed, please ensure that you are in a safe place. \n\nThe suicide hotline is available 24/7. You also have the ability to contact your mental health professional.").padding(.bottom, 20)
                    
                    
                        Button("I am in a safe place"){
                            willBeOkay = true
                        }.alert("Are you sure? \nWe only want you to be safe.", isPresented: $willBeOkay){
                            
                            Text("It is not weak to reach out for help.")
                            
                            Button("Call Suicide Hotline"){
                                guard let url = URL(string: callSomeone) else { return }
                                UIApplication.shared.open(url)
                        }
                            Button("Call Therapist"){
                                guard let url = URL(string: callSomeone) else { return }
                                UIApplication.shared.open(url)
                        }
                            
                            Button("I'll be okay, I promise"){
                                    showInput = true
                            }
                                
                            }
                    
                    
                }
                
                else if (showInput)
                {
                    middle()
                    
                }
                
                
                
            }
            .padding()
                  }
              }
          }
    }
}

struct one_Previews: PreviewProvider {
    static var previews: some View {
        one()
    }
}
