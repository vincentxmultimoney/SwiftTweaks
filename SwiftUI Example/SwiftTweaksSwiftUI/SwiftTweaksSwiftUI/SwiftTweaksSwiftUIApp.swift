//
//  SwiftTweaksSwiftUIApp.swift
//  SwiftTweaksSwiftUI
//
//  Created by Vincent Villalta on 5/13/25.
//

import SwiftUI
import SwiftTweaks

@main
struct SwiftTweaksSwiftUIApp: App {
    var body: some Scene {
        TweakWindowGroup(gestureType: .panSwipe, tweakStore: ExampleTweaks.defaultStore) {
            ContentView()
        }
    }
}

struct ExampleTweaks: TweakLibraryType {
    public static let colorTint = Tweak("General", "Colors", "Tint", UIColor.blue)
    public static let marginHorizontal = Tweak<CGFloat>("General", "Layout", "H. Margins", defaultValue: 15, min: 0)
    public static let marginVertical = Tweak<CGFloat>("General", "Layout", "V. Margins", defaultValue: 10, min: 0)
    public static let font = Tweak<StringOption>("General", "Layout", "Font", options: ["AvenirNext", "Helvetica", "SanFrancisco"])
    public static let featureFlagMainScreenHelperText = Tweak<Bool>("Feature Flags", "Main Screen", "Show Body Text", true)

    public static let buttonAnimation = SpringAnimationTweakTemplate("Animation", "Button Animation")

    public static let defaultStore: TweakStore = {
        let allTweaks: [TweakClusterType] = [colorTint, marginHorizontal, marginVertical, featureFlagMainScreenHelperText, buttonAnimation]

        let tweaksEnabled = true

        return TweakStore(
            tweaks: allTweaks,
            enabled: tweaksEnabled
        )
    }()
}
