//
//  04-21-2021.swift
//  SwiftUI Miami Challenges
//
//  Created by Dylan  on 4/21/21.
//

import SwiftUI

struct ProgressCircle: View {
    @State private var progress: CGFloat = 0.0
    private let lineWidth: CGFloat = 15
    private let strokeColor: Color = .blue
    private var progressText: String {
        String(format: "%.0f%%", progress * 100)
    }
    
    var body: some View {
        VStack(alignment: .center) {
            ZStack {
                Text(progressText)
                    .font(.system(size: 100, weight: .bold, design: .rounded))
                    .foregroundColor(strokeColor)
                Circle()
                    .stroke(lineWidth: lineWidth)
                    .foregroundColor(strokeColor.opacity(0.3))
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(style: .init(lineWidth: lineWidth, lineCap: .round, lineJoin: .round))
                    .foregroundColor(strokeColor)
                    .rotationEffect(.init(degrees: 270))
                    .animation(.easeInOut)
            }
            .padding(.horizontal)
            Stepper("", value: $progress, in: 0...1, step: 0.1)
                .frame(width: 100, alignment: .center)
        }
        .padding(.horizontal)
    }
}

struct ProgressCircle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressCircle()
    }
}
