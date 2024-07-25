//
//  ProfileView.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/24/24.
//

import SwiftUI

enum AuthSheetType {
    case register
    case login
}

struct ProfileView: View {
    @State var showSheet = false
    @State var sheetType: AuthSheetType = .register
    var body: some View {
            VStack(alignment: .center) {
                Image(systemName: "person")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
                Text("don't have an acoount?")
                    .font(.headline)
                    .fontWeight(.semibold)
                Button(action: {toggleSheet(.register)}, label: {
                        Text("register")
                            .font(.headline)
                            .padding(.horizontal, 120)
                            .padding(.vertical, 10)
                            .background(.green)
                            .foregroundStyle(.white)
                            .clipShape(.capsule)
                })

                HStack {
                    Text("or you have an acoount?")
                    Button(action: {toggleSheet(.login)}, label: {
                        Text("login")
                            .foregroundStyle(.green)
                    })
                }
                
            }.sheet(isPresented: $showSheet) {
                switch sheetType {
                case .register:
                    RegisterView()
                case .login:
                    LoginView()
                }
            }
        
    }
    
    func toggleSheet(_ type: AuthSheetType) {
        sheetType = type
        showSheet.toggle()
    }
}

#Preview {
    ProfileView()
}
