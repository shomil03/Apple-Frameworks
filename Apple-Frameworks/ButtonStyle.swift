//
//  ButtonStyle.swift
//  Apple-Frameworks
//
//  Created by Shomil Singh on 20/01/24.
//

import SwiftUI

struct ButtonStyle: View {
    var text : String = "button"
    var body: some View {
        Text(text)
            .bold()
            .frame(width: 280 , height: 50)
            .foregroundStyle(Color.white)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 60))
            .padding()
        
    }
}

#Preview {
    ButtonStyle()
}
