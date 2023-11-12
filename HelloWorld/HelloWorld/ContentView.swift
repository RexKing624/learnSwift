//
//  ContentView.swift
//  HelloWorld
//
//  Created by Xer on 2023/11/11.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    let synthesizer = AVSpeechSynthesizer()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, Swift!")
                .fontWeight(.bold)
            //                .font(.title)
                .font(.system(.title, design: .rounded))
        }
        .padding()
        let synthesizer = AVSpeechSynthesizer()
        VStack {
            Button {
                print("123123")
                let utterance = AVSpeechUtterance(string:"label")
                utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
    //            let synthesizer = AVSpeechSynthesizer()
                synthesizer.speak(utterance)
            } label: {
                Text("Button")
                    .fontWeight(.bold)
                    .font(.system(.title,design: .rounded))
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.yellow)
        .cornerRadius(20)
        }
//        Button {
//
//            let utterance = AVSpeechUtterance(string: "Hello World")
//            utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
//            synthesizer.speak(utterance)
//
//
//        } label: {
//            Text("Hello World")
//                .fontWeight(.bold)
//                .font(.system(.title, design: .rounded))
//        }
//        .padding()
//        .foregroundColor(.white)
//        .background(Color.purple)
//        .cornerRadius(20)
    }

    }

//Button{欲执行的动作} label:{外观描述}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
