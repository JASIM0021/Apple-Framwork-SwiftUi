//
//  XDismisButton.swift
//  AppFremwork
//
//  Created by Sk Jasimuddin on 17/08/24.
//

import SwiftUI

struct XDismisButton: View {
    
    @Binding var isShowing : Bool
    var body: some View {
        HStack (){
            Spacer()
            Button {
                isShowing = false
            }label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width:44,height:44)
                   
            }
        }
        .padding()
    }
}

#Preview {
    XDismisButton(isShowing: .constant(true))
}
