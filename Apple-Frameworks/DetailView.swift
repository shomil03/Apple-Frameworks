//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by Shomil Singh on 20/01/24.
//

import SwiftUI

struct DetailView: View {
    
    let framework : Framework
    @State var showingSafari = false
    var ListView : Bool
    
    var body: some View {
        NavigationStack{
            VStack {
                VStack{
                    
                    FrameWorkTitleView(framework: framework, ListView: ListView)
                        .padding()
                    
                    ScrollView{
                        
                        Text(framework.description)
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                    }
                }
               
                
                Spacer()
                
                Button(action: {
                    showingSafari = true
                }, label: {
                    ButtonStyle(text: "Learn more")
                })
                
            }
            .fullScreenCover(isPresented: $showingSafari, content: {
                SafariView(url: URL(string: framework.urlString)!)
            })
        }
        
        
    }
}

#Preview {
    DetailView(framework: Framework(name: "arkit", imageName: "arkit", urlString: "https://developer.apple.com/augmented-reality/arkit", description: "ARKit 4 introduces a brand-new Depth API, creating a new way to access the detailed depth information gathered by the LiDAR Scanner on iPhone 12 Pro, iPhone 12 Pro Max, and iPad Pro.\n\nLocation Anchors leverages the higher-resolution data in Apple Maps to place AR experiences at a specific point in the world in your iPhone and iPad apps. And support for face tracking extends to all devices with the Apple Neural Engine and a front-facing camera, so even more users can experience the joy of AR in photos and videos."), ListView: false)
}
