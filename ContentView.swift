//
//  ContentView.swift
//  GuessMovie
//
//  Created by 吳宜庭 on 2023/2/12.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    let synthesizer = AVSpeechSynthesizer()
    var body: some View {
        VStack {
            Text("猜猜這些電影").fontWeight(.bold).font(.title)

            Button {
                speak(text:"捍衛任務")
            } label: {
                Text("🐕🚙😡✏️😵")
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.purple)
            .cornerRadius(20)
            
            Button {
                speak(text:"冰雪奇緣")
            } label: {
                Text("🏰👩🏻‍🤝‍👩🏼🌀❄️☃️")
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(20)
            
            Button {
                speak(text:"少林足球")
            } label: {
                Text("👦0️⃣🦶🙏")
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.yellow)
            .cornerRadius(20)
            
            Button {
                speak(text:"復仇者聯盟")
            } label: {
                Text("🗻🤡🥷🔗🇲🇳")
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(20)
            
            Text("點擊按鈕即可得知答案").fontWeight(.light)
        }
        
    }
    func speak(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "zh")
        synthesizer.speak(utterance)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
