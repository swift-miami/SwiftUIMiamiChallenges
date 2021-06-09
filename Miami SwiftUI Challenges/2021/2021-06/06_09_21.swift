//
//  06_09_21.swift
//  SwiftUI Miami Challenges
//
//  Created by Giovanni Noa on 6/9/21.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""

    var body: some View {
        ZStack(alignment: .center) {
            VStack {
                Spacer()
                
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .foregroundColor(.blue)
                    .frame(width: 128, height: 128, alignment: .center)
                    .padding(.bottom, 80)

                FloatingTextField(text: $username, title: "Username", imageName: "mail")

                FloatingTextField(text: $password, title: "Password", imageName: "lock", isSecure: true)

                Button(action: {}) {
                    Text("Login")
                        .foregroundColor(Color.init(UIColor.systemBackground))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(20.0)
                }
                .padding(.horizontal)


                HStack {
                    Button("Signup") { }
                    Spacer()
                    Button("Forgot Password?") { }
                }
                .padding(.horizontal)

                Spacer()
            }
        }
        .edgesIgnoringSafeArea([.all])
        .background(Color.init(white: 0.90))

    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct FloatingTextField: View {
    @Binding var text: String

    let title: String
    let imageName: String
    var isSecure: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)

            Label(
                title: { isSecure ? AnyView(SecureField("", text: $text)) : AnyView(TextField("", text: $text )) },
                icon: { Image(systemName: imageName) }
            )
        }
        .padding()
        .background(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)).foregroundColor(.white))
        .padding()
        .shadow(radius: 10)
    }
}

struct LoginButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 150)

            .frame(width: .infinity, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())


    }
}
