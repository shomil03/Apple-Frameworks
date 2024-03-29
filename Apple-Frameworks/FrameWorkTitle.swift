//
//  FrameWorkView.swift
//  Apple-Frameworks
//
//  Created by Shomil Singh on 17/01/24.
//

import SwiftUI

struct FrameWorkTitleView: View {
    let framework : Framework
    var ListView : Bool
    
    var body: some View {
        
        if(!ListView){
            VStack{
                Image(framework.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90 , height: 90)
                Text(framework.name)
                    .font(.title)
                    .foregroundStyle(Color.primary)
                    .scaledToFit()
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.6)
            }
        }
        else
        {
            HStack(){
                Image(framework.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90 , height: 90)
                    .padding()
                Text(framework.name)
                    .font(.title)
                    .foregroundStyle(Color.primary)
                    .scaledToFit()
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.6)
                Spacer()
            }

        }
        
    }
}

#Preview {
    FrameWorkTitleView(framework: Framework(name: "arkit", imageName: "arkit", urlString: "https://developer.apple.com/augmented-reality/arkit", description: "something"), ListView: true)
}
