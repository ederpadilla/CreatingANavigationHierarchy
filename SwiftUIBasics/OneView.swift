//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Eder  Padilla on 31/07/22.
//

import SwiftUI

struct OneView: View {
    
    @State var isActive = false
    @State var number = 1
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                CircleNumberView(color: .red,
                                 number: number)
                .offset(y: -60)
                .navigationTitle("Screen 1️⃣")
                
                Button {
                    number += 1
                } label: {
                    Text("Add more")
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(16)
                }

                
                NavigationLink(destination: TwoView(popToRoot: $isActive),
                               isActive: $isActive) {
                    Text("Next Screen")
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(16)
                }
            }
            .onAppear {
                print("🚀🚀🚀🚀 will appear")
            }
            .onDisappear {
                print("🚀🚀🚀🚀 will dissssappear")
            }
        }
        .accentColor(Color(.label))
    }
}

struct CircleNumberView: View {
    
    var color: Color
    var number: Int
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 250,
                       height: 250)
                .foregroundColor(color)
            
            Text("\(number)")
                .foregroundColor(.white)
                .font(.system(size: 75,
                              weight: .bold))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OneView()
    }
}
