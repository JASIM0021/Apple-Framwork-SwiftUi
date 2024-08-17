//
//  FremworkGridView.swift
//  AppFremwork
//
//  Created by Sk Jasimuddin on 16/08/24.
//

import SwiftUI

struct FremworkGridView: View {
    @StateObject var viewModel = FremworksGridViewModels()
   
    
    
    var body: some View {
      
     
        NavigationStack {
           
//            ScrollView {
//                LazyVGrid(columns:viewModel.column){
            List {
                   
                    ForEach(MockData.frameworks){ item in
                        
                        NavigationLink(value:item){
                            FremworkTitleView(fremwork: item)
                        }
                        
//                        FremworkTitleView(fremwork: item)
//                            .onTapGesture {
//                                viewModel.selectedFramwork = item
//                            }
                        
                    }
                   
                }
//            }
            .navigationTitle("🍎 Frameworks")
            
//            .sheet(isPresented: $viewModel.isShowingDetailsView){
//                FramworkDetailsView(framwork: viewModel.selectedFramwork!, isShowingDetailsView: $viewModel.isShowingDetailsView)
//            }
            .navigationDestination(for: Framework.self){ fremwork in
                
                FramworkDetailsView(framwork: fremwork)
                
            }
            
        }
        .accentColor(Color(.label))
       
    }
}

#Preview {
    FremworkGridView()
}



