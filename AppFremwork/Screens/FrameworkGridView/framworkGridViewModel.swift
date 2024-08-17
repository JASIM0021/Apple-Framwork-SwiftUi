//
//  framworkGridViewModel.swift
//  AppFremwork
//
//  Created by Sk Jasimuddin on 17/08/24.
//

import Foundation
import SwiftUI

final class FremworksGridViewModels : ObservableObject {
    let column : [GridItem] = [GridItem(.flexible()),
    
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var selectedFramwork : Framework? {
        
        didSet{
            isShowingDetailsView = true
        }
    }
    @Published var isShowingDetailsView = false
    
}
