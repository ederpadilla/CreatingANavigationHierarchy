//
//  SwiftUIBasicsApp.swift
//  SwiftUIBasics
//
//  Created by Eder  Padilla on 31/07/22.
//

import SwiftUI

@main
struct SwiftUIBasicsApp: App {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [ .foregroundColor: UIColor.label ]
    }
    
    var body: some Scene {
        WindowGroup {
            OneView()
        }
    }
}
