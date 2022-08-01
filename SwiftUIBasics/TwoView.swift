//
//  TwoView.swift
//  SwiftUIBasics
//
//  Created by Eder  Padilla on 31/07/22.
//

import SwiftUI

struct TwoView: View {
    
    @Binding var popToRoot: Bool
    
    var body: some View {
        
        VStack {
            CircleNumberView(color: .blue,
                             number: 2)
            .offset(y: -60)
            .navigationTitle("Screen 2️⃣")
            
            NavigationLink(destination: ThreeView(popToRoot: $popToRoot)) {
                Text("Next Screen")
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(16)
            }
            
        }        
    }
}

struct TwoView_Previews: PreviewProvider {
    static var previews: some View {
        TwoView(popToRoot: .constant(false))
    }
}
