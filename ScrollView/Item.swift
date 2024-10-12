//
//  Item.swift
//  ScrollView
//
//  Created by Maxim Dmitrochenko on 12-10-2024.
//

import Foundation
import SwiftUICore

struct Item: Identifiable {
    let id = UUID()
    let color: Color
}

struct MockData {
    static var items: [Item] = [
        Item(color: .teal),
        Item(color: .pink),
        Item(color: .indigo),
        Item(color: .orange),
        Item(color: .purple),
        Item(color: .yellow),
        Item(color: .green),
        Item(color: .blue),
        Item(color: .brown),
        Item(color: .red)
    ]
}
