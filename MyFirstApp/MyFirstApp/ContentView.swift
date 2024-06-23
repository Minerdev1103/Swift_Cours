//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Earth Minerdev . on 22/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State var name:String = "วันนี้ กินอะไรดี"
    @State var menu:Int = 0
    @State var count:Int = 0
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(name)
                .font(.title2)
                .foregroundColor(.purple)
                .frame(width: 300, height: 100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center)
    
            Button("Button") { 
                
                
                
                self.menu = Int.random(in: 1...10)
                
                
                
                self.count  += 1
                
            }
            
            
            

            Text("สุ่มเลย "+String(count)+" ครั้ง")
                }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
