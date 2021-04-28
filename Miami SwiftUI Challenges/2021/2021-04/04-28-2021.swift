//
//  04-28-2021.swift
//  SwiftUI Miami Challenges
//
//  Created by Alfredo Merino on 4/28/21.
//

import SwiftUI
import UIKit

struct LoadingSpinner: View {
    @State private var spinning = true
    
    var body: some View {
        VStack {
            Text("Loading…")
                .font(.title2)
                .foregroundColor(.gray)
            
            //UIKit Version
            //Spinner(animate: $spinning)
            
            // SwiftUI Version
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .blue))
        }
    }
}

struct Spinner: UIViewRepresentable {
    typealias UIViewType = UIActivityIndicatorView
    @Binding var animate: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.startAnimating()
        spinner.color = .systemGray
        return spinner
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        if animate {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
}

struct LoadingSpinner_Previews: PreviewProvider {
    static var previews: some View {
        LoadingSpinner()
    }
}
