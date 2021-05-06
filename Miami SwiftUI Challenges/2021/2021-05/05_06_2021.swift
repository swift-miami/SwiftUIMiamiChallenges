//
//  05_06_2021.swift
//  SwiftUI Miami Challenges
//
//  Created by Ivan Corchado Ruiz on 5/6/21.
//

import SwiftUI

struct ContextualMenu: View {
    var body: some View {
        // iOS 14 +
        Menu("Show Me The Menu") {
            Section {
                Button(action: {},
                       label: {
                        Label("Copy", systemImage: "doc.on.doc")
                       })

                Button(action: {},
                       label: {
                        Label("Swift me baby", systemImage: "swift")
                       })
            }

            Menu("Delete") {
                Button(action: {},
                       label: {
                        Label("Delete for real", systemImage: "trash")
                       })
            }
        }

        // iOS 13 +
//        Text("Show me the menu, bitch")
//            .contextMenu {
//                    Button {
//                        print("Change country setting")
//                    } label: {
//                        Label("Choose Country", systemImage: "globe")
//                    }
//
//                    Button {
//                        print("Enable geolocation")
//                    } label: {
//                        Label("Detect Location", systemImage: "location.circle")
//                    }
//                }
    }
}

struct ContextualMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContextualMenu()
    }
}
