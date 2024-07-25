//
//  LoginView.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/26/24.
//

import SwiftUI

struct LoginView: View {
    @State var loginRequest = LoginRequest()
    var body: some View {
        VStack(spacing: 80) {
            Text("welcome back")
                .font(.title2)
            VStack(spacing: 30) {
                InputField(placeholder: "email", bindingText: loginRequest.email, isSecure: false)
                InputField(placeholder: "password", bindingText: loginRequest.password, isSecure: true)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("login")
                        .font(.headline)
                        .padding(.horizontal, 120)
                        .padding(.vertical, 10)
                        .background(.green)
                        .foregroundStyle(.white)
                        .clipShape(.capsule)
                })
            }
        }
    }
}

#Preview {
    LoginView()
}
