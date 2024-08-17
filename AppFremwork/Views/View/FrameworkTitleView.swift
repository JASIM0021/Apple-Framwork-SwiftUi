//
//  FrameworkTitleView.swift
//  AppFremwork
//
//  Created by Sk Jasimuddin on 17/08/24.
//

import SwiftUI

struct FremworkTitleView : View {
    
  
    let fremwork : Framework
    
    var body: some View {
        HStack{
            
            Image(fremwork.imageName)
                .resizable()
                .frame(width:70,height:70)
            Text(fremwork.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
       
    }
      
}

#Preview {
    FremworkTitleView(fremwork:  MockData.sampleFramework)
}
