//
//  RegisterView.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/26/24.
//

import SwiftUI

struct RegisterView: View {
    @State var registerRequest = RegisterRequest()
    var body: some View {
        VStack(spacing: 80) {
            Text("let's create your account")
                .font(.title2)
            VStack(spacing: 30) {
                InputField(placeholder: "username", bindingText: registerRequest.username, isSecure: false)
                InputField(placeholder: "name", bindingText: registerRequest.name, isSecure: false)
                InputField(placeholder: "surname", bindingText: registerRequest.surname, isSecure: false)
                InputField(placeholder: "email", bindingText: registerRequest.email, isSecure: false)
                InputField(placeholder: "password", bindingText: registerRequest.password, isSecure: true)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("register")
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
    RegisterView()
}
