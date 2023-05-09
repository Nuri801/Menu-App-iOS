//
//  CustomButton.swift
//  Menu
//
//  Created by 유티이씨 on 2023/05/08.
//

import SwiftUI

struct CustomButton: View {
    
    var buttonText: String
    
    var body: some View {
        Button {
            
        } label: {
            Text(buttonText)
                .padding()
                .border(.green)
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(buttonText: "dummy button")
    }
}
