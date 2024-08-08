//
//  InputFieldView.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/26/24.
//

import SwiftUI

struct InputField: View {
    @State var placeholder: String
    @Binding var bindingText: String
    @State var isSecure: Bool
    var body: some View {
        VStack(alignment: .center) {
            if(isSecure) {
                SecureField(placeholder, text: $bindingText)
                .padding(.bottom, 2)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
            } else {
            TextField(placeholder, text: $bindingText)
                    .padding(.bottom, 2)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
            }
            Divider()
                .background(.green)
                .frame(height: 1)
        }
        .padding(.horizontal, 30)
    }
}
