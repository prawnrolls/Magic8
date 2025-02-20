//
//  ContentView.swift
//  Magic8
//
//  Created by Linda Dang on 20/2/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var currentPrediction = ""
    let choicesArray = [
        "It is certain",
        "It is decidedly so",
        "Without a doubt",
        "Yes, definitely",
        "You may rely on it",
        "As I see it, yes",
        "Most likely",
        "Outlook good",
        "Yes",
        "Signs point to yes",
        "Reply hazy try again",
        "Ask again later",
        "Better not tell you now",
        "Cannot predict now",
        "Concentrate and ask again",
        "Don't count on it",
        "My reply is no",
        "My sources say no",
        "Outlook not so good",
        "Very doubtful"
    ]
    
    var body: some View {
        VStack {
            Spacer()
            
            ZStack{
                Image("predict-ball-image") //sans system name bc it's for sf symbols only
                    .resizable()
                    .scaledToFit()
                
                ZStack {
                    Circle()
                        .foregroundStyle(.indigo)
                    
                    Text(currentPrediction)
                        .foregroundStyle(.white)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center) //centre align multiline statements
                        .animation(.default, value: currentPrediction) //when curPre changes apply the fade
                        .font(.title)
                    //add modifiers to whole zstack so we can avoid repetition and change them together
                    
                }
                .frame(width: 140, height: 140)
                .padding(.bottom, 35)
            }
            
            Spacer()
            
            Button("Predict") {
                currentPrediction = choicesArray.randomElement() ?? "No prediction 😭"
            }
            .buttonStyle(.bordered)
            .tint(.indigo)
        }
    }

}


#Preview {
    ContentView()
}
