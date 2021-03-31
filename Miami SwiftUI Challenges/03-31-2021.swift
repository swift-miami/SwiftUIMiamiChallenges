//
//  ContentView.swift
//  SwiftUI Miami Challenges
//
//  Created by Ivan Corchado Ruiz on 3/31/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            StatusItem(title: "Dali", subtitle: "is the boss", symbolName: "calendar.circle.fill")
            StatusItem(title: "G", subtitle: "is the wizard", symbolName: "calendar.circle.fill")
            StatusItem(title: "Jimmy", subtitle: "is the jefe", symbolName: "speaker.wave.2.circle.fill")
        }
        .frame(width: .infinity)
    }
}

struct StatusItem: View {
    let title: String
    let subtitle: String
    let symbolName: String

    var body: some View {
        HStack {
            Spacer()
            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 8) {
                    Image(systemName: symbolName)
                        .font(.title2)
                    Text(title)
                        .font(.title2)
                        .bold()
                }
                Text(subtitle)
                    .font(.body)
            }
            Spacer()
            Divider()
        }
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPad Pro (9.7-inch)")
//            .environment(\.sizeCategory, .accessibilityLarge)

    }
}
