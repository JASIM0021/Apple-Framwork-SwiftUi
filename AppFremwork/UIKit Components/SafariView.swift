//
//  SafariView.swift
//  AppFremwork
//
//  Created by Sk Jasimuddin on 17/08/24.
//

import Foundation
import SwiftUI
import SafariServices

struct SafariView : UIViewControllerRepresentable {
    
    let url : URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
}
