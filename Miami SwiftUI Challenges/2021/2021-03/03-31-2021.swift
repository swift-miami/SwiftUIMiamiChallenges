import SwiftUI

/**
Build a view that allows for multiple subviews of the same kind and vertical dividers only between elements.
- The first element shouldn't have a leading dividers.
- The last element shouldn't have a trailing dividers.
- If you only have one element it shouldn't have any dividers.

 ```
┌────┐ ┌───────────────┐    │     ┌────┐ ┌───────────────┐    │     ┌────┐ ┌───────────────┐
│icon│ │Title          │    │     │icon│ │Title          │    │     │icon│ │Title          │
└────┘ └───────────────┘    │     └────┘ └───────────────┘    │     └────┘ └───────────────┘
┌──────────────────────┐    │     ┌──────────────────────┐    │     ┌──────────────────────┐
│Subtitle              │    │     │Subtitle              │    │     │Subtitle              │
└──────────────────────┘    │     └──────────────────────┘    │     └──────────────────────┘
*/
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
