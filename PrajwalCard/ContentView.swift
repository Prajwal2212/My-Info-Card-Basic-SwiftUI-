//
//  ContentView.swift
//  PrajwalCard
//
//  Created by Prajwal Prasad on 29/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.10, green: 0.74, blue: 0.61)
                .ignoresSafeArea()
            VStack {
                Image("06AF68D5-538D-42E7-AE4A-4B28AFC32EB1_1_105_c")
                    .resizable()
                    .frame(width: 200.0, height: 200.0)
                    .clipShape(Circle()).overlay(
                        Circle().stroke(Color.white, lineWidth: 6)
                    )
                Text("Prajwal Prasad")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(text: "+91 70044 16099", imageName: "phone.fill")
                InfoView(text: "prajwalprasad7.ppmf@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}

struct InfoView: View {
    var text: String
    var imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
                    .foregroundColor(.black)
            })
            .padding(.all)
    }
}
