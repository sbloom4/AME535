//
//  1thru3.swift
//  moodtracker
//
//  Created by meh  on 4/25/22.
//

import SwiftUI

struct middle: View {
    //reference to the moodStore array, set the rating to 3 for now
    @EnvironmentObject var store: moodStore
    @State var newMood = moodRecord(rating: 3)
    
    @State private var hasEaten = false
    @State private var isAngry = false
    @State private var isLonely = false
    @State private var isTired = false
    
    @State private var lastAte = ""
    @State private var angryVent = ""
    @State private var lonelyVent = ""
    @State private var lastSlept = ""
    @State private var howSlept = ""
    @State private var venting = ""
    

    
    
    var body: some View {
        
      
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
                    
                    if hasEaten {
                        Text("When was the last time you ate?")
                        TextField("When was the last time you ate?", text: $lastAte)
                            .padding()
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    }
                    
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
                    
                    if isLonely {
                        Text("Do you want to talk about what made you feel loney?.")
                        TextField("What made you lonely?", text: $lonelyVent)
                            .padding()
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    }
                    
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
                        store.addMood(newMood)
                    }.frame(alignment: .center)
                }
            }
        }
    }
}

struct middle_Previews: PreviewProvider {
    static var previews: some View {
        middle()
    }
}
