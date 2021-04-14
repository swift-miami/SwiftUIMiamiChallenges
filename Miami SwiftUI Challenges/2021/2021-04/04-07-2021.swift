//
//  04-07-2021.swift
//  SwiftUI Miami Challenges
//

import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let title: String
}

struct FooterView: View {
    var body: some View {
        Button(action: {
            print("")
        }) {
            HStack {
                Spacer()
                Image(systemName: "plus.circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .padding(.vertical, 16)
                Spacer()
            }
        }
    }
}

struct EntryCell: View {
    @State private var text = ""
    var onTap: () -> Void
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "phone.circle.fill")
                    .font(.title)
                Text("Phone".uppercased())
                    .font(.subheadline)
                Spacer()
                Button(action: onTap) {
                   Image(systemName: "xmark.circle.fill")
                    .font(.title2)
                    }
            }
            
            HStack {
                Text("Call")
                    .font(.body)
                TextField("Placeholder", text: $text)
                    .font(.body)
            }
        }
        .padding(.vertical)
    }
}



struct VerticalView: View {
    var items = [Item(title: "Hey"),Item(title: "Ciao"),Item(title: "Something in Castellano"),Item(title: "Bonjour")]
    
    var body: some View {
        NavigationView {
            List {
                Section(footer: FooterView()) {
                    ForEach(items) { item in
                        EntryCell {
                            guard let index = items.firstIndex(where: {
                                $0.id == item.id
                            }) else { return }
                        }
                    }
                    
                    
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("New Shortcut")
        }
    }
}

struct VerticalViewPreview: PreviewProvider {
    static var previews: some View {
        VerticalView()
    }
}


/*
 
 var body: some View {
     NavigationView {
         List(items) { item in
             Section(footer: Text("Bottom Text")) {
                 Text(item.title)
             }
         }
         
         .navigationTitle("New Shortcut")
     }
 }
}
 
 */
