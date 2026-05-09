//
//  ContentView.swift
//  AITests
//
//  Created by Felipe Rezende on 08/05/26.
//

import SwiftUI
import DesignSystem

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(Color.DS.Brand.primary)
            Text("Hello, world!")
                .font(DSTypography.body)
                .foregroundStyle(Color.DS.Text.primary)
        }
        .padding(DSSpacing.s4)
    }
}

#Preview {
    ContentView()
}
