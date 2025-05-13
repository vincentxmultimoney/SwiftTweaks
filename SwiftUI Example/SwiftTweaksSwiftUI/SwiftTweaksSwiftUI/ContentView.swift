//
//  ContentView.swift
//  SwiftTweaksSwiftUI
//
//  Created by Vincent Villalta on 5/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Color(uiColor: ExampleTweaks.assign(ExampleTweaks.colorTint))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
