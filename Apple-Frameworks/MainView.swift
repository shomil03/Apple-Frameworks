//
//  MainView.swift
//  Apple-Frameworks
//
//  Created by Shomil Singh on 21/01/24.
//

import SwiftUI

struct MainView: View {
    
    @State var ListView = false
    
    var body: some View {
        VStack{
            VStack{}
            
            if(ListView){
                
                FrameWorkListView(ListView: $ListView)
                
            }
            
            
            else
            {
                
                FrameworkGridView(ListView: $ListView)
                
            }
        }
    }
}

#Preview {
    MainView()
}
