//
//  ContentView.swift
//  ScrollView
//
//  Created by Maxim Dmitrochenko on 12-10-2024.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(MockData.items) { item in
                    Circle()
                        .containerRelativeFrame(
                            .horizontal,
                            count: verticalSizeClass == .regular ? 3 : 4,
                            spacing: 16
                        )
                        .foregroundColor(item.color)
                        .scrollTransition { content, phase in
                            content
                                .opacity(phase.isIdentity ? 1.0 : 0.5)
                                .scaleEffect(x: phase.isIdentity ? 1.0 : 0.1, y: phase.isIdentity ? 1.0 : 0.1)
                                .offset(y: phase.isIdentity ? 0 : 300)
                        }
                }
            }
            .scrollTargetLayout()
        }
        .contentMargins(16, for: .scrollContent)
        .scrollTargetBehavior(.viewAligned)
    }
}

#Preview {
    ContentView()
}
