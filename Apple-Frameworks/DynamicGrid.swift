//
//  DynamicGrid.swift
//  Apple-Frameworks
//
//  Created by Shomil Singh on 25/03/24.
//

import SwiftUI

struct DynamicGrid: View {
    @State var Height: CGFloat = 120
    @State var heightSecond: CGFloat = 150
    let colors : [Color] = [.black.opacity(0.1), .black.opacity(0.2), .black.opacity(0.3), .black.opacity(0.4), .black.opacity(0.5), .black.opacity(0.6), .black.opacity(0.7), .black.opacity(0.8), .black.opacity(0.9), .black.opacity(0.1)]
    @State private var ListView : Bool = false
    @State private var column = [[GridItem(.adaptive(minimum: 200))]]
    
    var body: some View {
        
        NavigationStack {
            ScrollView{
                ZStack{
                    
                    LazyVGrid(columns: column[0]){
                        ForEach(MockData.frameworks , id : \.id) { framework in
                            NavigationLink(destination: DetailView(framework: framework, ListView: ListView), label: {
                                FrameWorkTitleView(framework: framework,ListView: ListView)
                                
                                
                            })
                        } 
                        .shadow(radius: 10)
                        .animation(.smooth, value: Height)
                        
                        
                    }
//                    .padding(.horizontal)
                   

                                    
                }
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing, content: {
                        Button(action: {
                           
                                Height = Height == 120 ? 200 : 120
                                heightSecond = heightSecond == 150 ? 200 : 150
                            
//                            ListView.toggle()
                            
                        }, label: {
                            Label("", systemImage: ListView ?  "square.grid.2x2.fill" :  "list.bullet.clipboard")
                                .symbolRenderingMode(.multicolor)
                                .labelsHidden()
                        })
                    })
                    ToolbarItem(placement: .bottomBar){
                        Button("Change"){
//                            withAnimation{
                                Height = Height == 120 ? 200 : 120
                                heightSecond =  heightSecond == 150 ?  200 : 150
//                            }
                        }
                        .buttonStyle(BorderedProminentButtonStyle())
                    }
                }

                
            }
        }
    }
    func change(){
        
    }
}

#Preview {
    DynamicGrid()
}
