//
//  FramworkDetailsView.swift
//  AppFremwork
//
//  Created by Sk Jasimuddin on 17/08/24.
//

import SwiftUI

struct FramworkDetailsView: View {
    let framwork : Framework
    @State var isShowingSafariView = false
//    @Binding var isShowingDetailsView : Bool
    var body: some View {
        
        VStack{
            
        
//            XDismisButton(isShowing: $isShowingDetailsView)
            
            Spacer()
            FremworkTitleView(fremwork: framwork)
            Text(framwork.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
               
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView){
            SafariView(url: URL(string:framwork.urlString)!)
        }
//        .sheet(isPresented: $isShowingSafariView){
//            SafariView(url: URL(string:framwork.urlString)!)
//        }
    }
}

#Preview {
    FramworkDetailsView(framwork: MockData.sampleFramework)
}
