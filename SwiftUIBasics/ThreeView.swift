//
//  ThreeView.swift
//  SwiftUIBasics
//
//  Created by Eder  Padilla on 31/07/22.
//

import SwiftUI

struct ThreeView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Binding var popToRoot: Bool
    
    @State var number: Int = 3
    
    var body: some View {
        
        VStack {
            CircleNumberView(color: .green,
                             number: number)
            .offset(y: -60)
            //.navigationBarHidden(true)
            .navigationBarTitle("Screen 3️⃣",
                                displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Back", systemImage: "chevron.backward")
                    }
                }
            }
            
            Button {
                number = number + 1
            } label: {
                Text("Add more")
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(16)
            }
            
            Button {
                NavigationUtil.popToRootView()
            } label: {
                Text("Root Screen")
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(16)
            }
        }
    }
}

struct ThreeView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeView(popToRoot: .constant(false))
    }
}
