//
//  FrameWorkViewModel.swift
//  Apple-Frameworks
//
//  Created by Shomil Singh on 20/01/24.
//

import SwiftUI

final class FrameWorkViewModel : ObservableObject {
    
    var columns : [GridItem] = [ GridItem(.flexible()) ,
                                 GridItem(.flexible()),
                                 GridItem(.flexible())
    ]
    
}
