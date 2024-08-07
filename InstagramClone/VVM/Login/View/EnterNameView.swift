//
//  EnterNameView.swift
//  InstagramClone
//
//  Created by 권형일 on 7/13/24.
//

import SwiftUI

struct EnterNameView: View {
    @Environment(SignupViewModel.self) var signupViewModel
    
    var body: some View {
        @Bindable var signupViewModel = signupViewModel
        
        SignupBackgroundView {
            VStack {
                Text("이름 입력")
                    .font(.title)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.bottom, 5)
                
                TextField("성명", text: $signupViewModel.name)
                    .modifier(InstagramTextFieldModifier())
                    .padding(.bottom)
                
                NavigationLink {
                    EnterUsernameView()
                } label: {
                    Text("다음")
                        .foregroundStyle(.white)
                        .frame(width: 363, height: 42)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                Spacer()
            }
        }
    }
}

#Preview {
    EnterNameView()
        .environment(SignupViewModel())
}
