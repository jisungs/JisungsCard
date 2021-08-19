//
//  ContentView.swift
//  JisungsCard
//
//  Created by jisung on 2021/08/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.42, green: 0.54, blue: 0.80)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("jisung")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height:150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Jisung")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Full Stack Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Divider()
                InfoView(text: "+82 10 1234 1234", imageName: "phone.fill")
                InfoView(text: "jisung.smart@gmail.com", imageName: "envelope.fill")
                
//                ZStack {
//                    RoundedRectangle(cornerRadius: 20)
//                        .foregroundColor(.white)
//                        .frame(width: 350, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                    Text("+82 10 1234 1234")
//                        .foregroundColor(.black)
//                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}

