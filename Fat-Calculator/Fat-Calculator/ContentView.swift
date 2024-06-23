//
//  ContentView.swift
//  Fat-Calculator
//
//  Created by Earth Minerdev . on 23/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State var resultTex :String = "FAT Caculator"
    @State var weight :String = ""
    @State var fat :String = ""
    var body: some View {
        VStack {
            
            Text(resultTex).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            HStack{
                Text("Weight")
                TextField("กิโลกรัม", text: $weight).keyboardType(.numberPad)
                
            }
            .padding()
            HStack{
                Text("Fat")
                TextField("เปอร์เซ็น", text: $fat).keyboardType(.numberPad)
            }.padding()
            
            
            
            Button("เริ่มคำนวณ") {
                let result = Double(self.weight)! * pow(Double(self.fat)! / 100.0, 1)
                self.resultTex = String(result)
            }.padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
