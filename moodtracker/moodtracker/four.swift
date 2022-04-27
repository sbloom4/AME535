//
//  four.swift
//  moodtracker
//
//  Created by meh  on 4/25/22.
//

import SwiftUI

struct four: View {
    //reference to the moodStore array, set the rating to 4
    @EnvironmentObject var store: moodStore
    @State var newMood = moodRecord(rating: 4)
    
    @State private var whatWentWell = ""
    @State private var learnNew = ""
    @State private var venting = ""
    
    var body: some View {
    
     
        
        ZStack{
            
            Color("#ffe8d6").ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 10.0){
                
                Text("Glad to hear that you had a great day!")
                    .font(.title2)
                    .fontWeight(.regular)
                    .foregroundColor(Color("#6b705c"))
                    .padding(.bottom, 20)

        

                Text("Let's talk about what went well today.")
         
                TextEditor(text: $whatWentWell)
                    .frame(height: 150)
                    .padding(.bottom, 20)
   
       
                
                Text("Did we learn anything new today?")
                    .frame(height: 15)
                TextEditor(text: $learnNew)
                    .frame(height:150)
                    .padding(.bottom, 20)

                
                Text("Need to talk about anything else? ")
                    .frame(height: 15)
                TextEditor(text: $venting)
                    .frame(height:150)
                    .padding(.bottom, 20)
                
                Text("That's great! Keep up the good work!")
                
                //the button adds all the input into the object, and shows it in the console/terminal
                Button("Submit Your Day") {
                    newMood.input1 = whatWentWell
                    newMood.input2 = learnNew
                    newMood.input3 = venting
                    store.addMood(newMood)
                    print(store.moodRecords)
                }.frame(alignment: .center)
        
                
                }.padding()
            }
        }
}

struct four_Previews: PreviewProvider {
    static var previews: some View {
        four()
    }
}
