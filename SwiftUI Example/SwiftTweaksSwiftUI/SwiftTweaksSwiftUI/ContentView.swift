//
//  ContentView.swift
//  SwiftTweaksSwiftUI
//
//  Created by Vincent Villalta on 5/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.red.frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            VStack {
                Text("Texting")
                Spacer()
            }
        }


    }
}

#Preview {
    ContentView()
}
