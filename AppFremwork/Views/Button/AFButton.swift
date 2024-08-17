//
//  AFButton.swift
//  AppFremwork
//
//  Created by Sk Jasimuddin on 17/08/24.
//

import SwiftUI

struct AFButton: View {
    
    var title : String
    var body: some View {
       
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 300, height: 50)
                .background(.red)
                .foregroundStyle(.white)
                .cornerRadius(10)
        
    }
}

#Preview {
    AFButton(title: "Test button")
}
