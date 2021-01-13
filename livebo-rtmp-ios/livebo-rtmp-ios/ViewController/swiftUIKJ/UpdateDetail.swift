//
//  UpdateDetail.swift
//  Created by yqb on 2020/12/24.
//  Copyright © 2020 iblai All rights reserved.
//

import SwiftUI

struct UpdateDetail: View {
    
    var title = "Swiftui"
    var text = "Loading"
    var image = "Illustration1"
    
    
    var body: some View {
        VStack(spacing: 20.0) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
            
            Text(text)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            Spacer()
        }
        .padding(30.0)
    }
}

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail()
    }
}
