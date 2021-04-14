//
//  04-14-2021.swift
//  SwiftUI Miami Challenges
//
//  Created by Giannini Charles on 4/14/21.
//

// Goal:

// Photo Thing, 3 images per row.

// SF Symbols for my grid of images.

//lasso.sparkles


import SwiftUI

struct PhotoGrid: View {
    private var columns: [GridItem] = [
        GridItem(.adaptive(minimum: 100), spacing: 32)
    ]

    private var names: [String] = [
        "books.vertical",
        "lasso.sparkles",
        "eyes.inverse",
        "mustache",
        "wand.and.stars",
        "bandage",
        "tortoise",
        "bonjour",
        "appclip",
        "applelogo",
    ]

    private var colors: [Color] = [
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .purple
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns,
                          alignment: .center,
                          spacing: 32,
                          pinnedViews: [.sectionHeaders, .sectionFooters]) {
                    ForEach(0..<30) { _ in
                        Image(systemName: names.randomElement()!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(colors.randomElement()!)
//                            .background(Color.red)
                    }
                }
//                .background(Color.green)
            }
            .navigationTitle("Grids")
            .padding(.horizontal)
        }.navigationTitle("Cool beans")
    }
}

struct PhotoGrid_Previews: PreviewProvider {
    static var previews: some View {
        PhotoGrid()
            .previewLayout(.fixed(width: 770, height: 600))

    }
}
