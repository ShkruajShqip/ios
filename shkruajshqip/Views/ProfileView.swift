//
//  ProfileView.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/24/24.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var coordinator: Coordinator
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
                Button(action: {coordinator.present(sheet: .register)}, label: {
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
                    Button(action: {coordinator.present(sheet: .login)}, label: {
                        Text("login")
                            .foregroundStyle(.green)
                    })
                }
                
            }
        
    }
}

#Preview {
    ProfileView()
        .environmentObject(Coordinator())
}
