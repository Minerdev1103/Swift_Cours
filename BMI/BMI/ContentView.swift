//
//  ContentView.swift
//  BMI
//
//  Created by Earth Minerdev . on 23/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State var resultTex :String = "BMI Caculator"
    @State var weight :String = ""
    @State var Height :String = ""
    var body: some View {
        VStack {
            
            Text(resultTex).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            HStack{
                Text("Weight")
                TextField("กิโลกรัม", text: $weight).keyboardType(.numberPad)
                
            }
            .padding()
            HStack{
                Text("Height")
                TextField("เซนติเมตร", text: $Height).keyboardType(.numberPad)
            }.padding()
            
            
            
            Button("เริ่มคำนวณ") {
                let result = Double(self.weight)! / pow(Double(self.Height)! / 100.0, 2)
                self.resultTex = String(result)
            }.padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
