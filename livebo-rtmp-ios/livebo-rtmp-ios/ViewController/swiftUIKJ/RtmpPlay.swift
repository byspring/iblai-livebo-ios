//
//  RtmpPlay.swift
//  livebo-rtmp-ios
//
//  Created by yqb on 2021/1/25.
//

import Foundation
import SwiftUI
struct RtmpPlay: View {
    @State var toggleOn = true
    @State var number = 1
    @State var selection = 1
    @State var date = Date()
    @State var email = ""
    @State var submit = false
    var body: some View {
        NavigationView {
            Form {
                Toggle(isOn: $toggleOn) {
                    Text("Hello")
                }
                Stepper(value: $number, in: 1...10) {
                    Text("\(number) WORLD\(number > 1 ? "s" : "")")
                }
                Picker(selection: $selection, label: Text("Picker")) {
                    Text("111").tag(1)
                    Text("222").tag(2)
                }
                DatePicker(selection: $date, label: { Text("Date") })
                Section(header: Text("拉流地址：rtmp/m3u8")) {
                    TextField("your email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                Button(action: {self.submit.toggle()}) {
                    Text("播放").position(x: 0, y: 200)
                }
                .alert(isPresented: $submit) {
                    Alert(title: Text("Thanks"), message: Text("\(email)"))
                }
                
            }
            .navigationBarTitle("IBL云拉流")
        }
    }
}

struct RtmpPlay_Previews: PreviewProvider {
    static var previews: some View {
        RtmpPlay()
    }
}

