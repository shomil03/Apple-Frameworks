//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Shomil Singh on 16/01/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    var columns : [GridItem] = [ GridItem(.flexible()) ,
                                 GridItem(.flexible()),
                                 GridItem(.flexible())
    ]
    @StateObject var viewmodel = FrameWorkViewModel()
    @State private var ispresented : Bool = false
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(destination: DetailView(framework: framework), label: {
                            FrameWorkTitleView(framework: framework)
                        })
                    }
                }
            }
            .navigationTitle("🍎 framework")
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    FrameworkGridView()
}
