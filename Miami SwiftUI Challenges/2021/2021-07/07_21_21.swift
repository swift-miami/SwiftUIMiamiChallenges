//
//  07_21_21.swift
//  SwiftUI Miami Challenges
//
//  Created by Giovanni Noa on 7/21/21.
//

import SwiftUI

struct PillView: View {

    var body: some View {
        VStack {
            ForEach((0..<3)) { _ in
                Button("Button") { }
                    .padding(.horizontal)
                    .buttonStyle(CapsuleButton())

            }
        }
    }
}

struct CapsuleButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.all, 30)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(Color.orange)
            .clipShape(Capsule())
    }
}


#if DEBUG
struct PillViewPreview: PreviewProvider {
    static var previews: some View {
        PillView()
    }
}
#endif
