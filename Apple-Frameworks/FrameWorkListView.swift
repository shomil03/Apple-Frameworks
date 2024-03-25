//
//  FrameWorkListView.swift
//  Apple-Frameworks
//
//  Created by Shomil Singh on 21/01/24.
//

import SwiftUI

struct FrameWorkListView: View {
    
    @StateObject var viewmodel = FrameWorkViewModel()
    @State private var ispresented : Bool = false
    @Binding var ListView : Bool
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.flexible())]){
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(destination: DetailView(framework: framework, ListView: ListView), label: {
                            FrameWorkTitleView(framework: framework, ListView: ListView)
                        })
                    }
                }
            }
            .navigationTitle("🍎 framework")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing, content: {
                    Button(action: {
                        withAnimation{
                            ListView.toggle()
                        }
                    }, label: {
                        Label("", systemImage: "square.grid.2x2.fill")
                            .labelsHidden()
                            .foregroundStyle(Color.green)
                    })
                })
            }
            
            
            
            
        }
        .preferredColorScheme(.dark)
        .tint(Color.primary)
    }
        
    }


#Preview {
    FrameWorkListView(ListView: .constant(true))
}
