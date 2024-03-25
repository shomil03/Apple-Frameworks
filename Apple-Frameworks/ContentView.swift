//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Shomil Singh on 16/01/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewmodel = FrameWorkViewModel()
    @State private var ispresented : Bool = false
    @State private var ListView : Bool = false
    @State private var Height : CGFloat = 120
    @State private var Height2 : CGFloat = 120
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: Height))]){
                    ForEach(MockData.frameworks , id : \.id) { framework in
                        NavigationLink(destination: DetailView(framework: framework, ListView: ListView), label: {
                            FrameWorkTitleView(framework: framework,ListView: ListView)
                                
                        })
                        .frame(width: Height2)
                    }
                    
                    
                }
                
            }
            .navigationTitle("🍎 framework")
            .toolbar{
                
                ToolbarItem(placement: .topBarTrailing, content: {
                    Button(action: {
                        withAnimation(.bouncy){
                           Height = Height == 120 ? 300 : 120
                           Height2 = Height2 == 120 ? 100 : 120
                        }
//                        ListView.toggle()
                        
                    }, label: {
                        Label("", systemImage: Height == 300 ?  "square.grid.2x2.fill" :  "list.bullet.clipboard")
                            .symbolRenderingMode(.multicolor)
                            .labelsHidden()
                    })
                })
            }
            

            
            
        }
        .preferredColorScheme(.dark)
        .tint(Color.primary)
    }
}

#Preview {
    FrameworkGridView()
}
