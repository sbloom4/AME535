//
//  one.swift
//  moodtracker
//
//  Created by meh  on 4/25/22.
//

import SwiftUI

struct one: View {
    @EnvironmentObject var store: moodStore
    @State var newMood = moodRecord(rating: 1)
    
    @State private var hasEaten = false
    @State private var isAngry = false
    @State private var isLonely = false
    @State private var isTired = false
    
    @State private var howSlept = ""
    @State private var venting = ""
    @State private var angryVent = ""
    
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
                    ZStack{
                        
                        Color("#ffe8d6").ignoresSafeArea()
                        
                        ScrollViewReader { proxy in
                            ScrollView{
                        
                        
                        VStack(){
                            Image(systemName: "exclamationmark.octagon.fill")
                                .resizable(resizingMode: .tile)
                                .foregroundColor(Color.red)
                                .frame(width: 100.0, height: 100.0, alignment: .center)
                            
                            Text("H. A. L. T.")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.red)
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 35)
                            
                            VStack(alignment: .leading){
                            
                            
                            
                            
                            Text("HALT is a way to walk through why you feel the way that you do. It helps slow down our brain and helps us do the things our body needs to feel better.")
                            Group{
                                Toggle(isOn: $hasEaten.animation()) {
                                    Text("Have you eaten?")
                                }.toggleStyle(SwitchToggleStyle(tint: Color("#6b705c")))
                                
                                
                                
                                Toggle(isOn: $isAngry.animation()) {
                                    Text("Did something make you upset today?")
                                }.toggleStyle(SwitchToggleStyle(tint: Color("#6b705c")))
                                
                                if isAngry {
                                    Text("Let's talk about it! Vent your heart out.")
                                    TextField("What made you upset?", text: $angryVent)
                                        .padding()
                                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                }
                                
                                Toggle(isOn: $isLonely.animation()) {
                                    Text("Do you feel lonely?")
                                }.toggleStyle(SwitchToggleStyle(tint: Color("#6b705c")))
                                
                              
                                
                                Toggle(isOn: $isTired.animation()) {
                                    Text("Are you tired?")
                                }.toggleStyle(SwitchToggleStyle(tint: Color("#6b705c")))
                                
                                if isTired{
                                    Text("How and when did you last sleep?")
                                    TextField("How did you sleep?", text: $howSlept)
                                        .padding()
                                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                }
                            }.padding()
                            
                                Text("Just vent on why you feel the way you do. There's nothing with wanting to get things off your chest.")
                          
                            TextEditor(text: $venting)
                                .frame(height:150)
                                .padding(.bottom, 20)
                            
                            }.padding()
                            }
                                Button("Submit Your Day") {
                                    newMood.input1 = howSlept
                                    newMood.input2 = venting
                                    newMood.input3 = angryVent
                                    store.addMood(newMood)
                                }.frame(alignment: .center)
                            }
                        }
                    }
                }
            }
        
        }
    }
    .padding()
  }
}
}

struct one_Previews: PreviewProvider {
    static var previews: some View {
        one()
    }
}
