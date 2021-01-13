//
//  CertificateRows.swift
//  Created by yqb on 2020/12/24.
//  Copyright © 2020 iblai All rights reserved.
//

import SwiftUI

struct CertificateRows: View {
    
    let certificates = certificateData
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("最近直播记录")
                .font(.system(size: 20))
                .fontWeight(.heavy)
                .padding(.leading, 30)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(certificates) { item in
                        LeeView(item: item)
                    }
                }
                .padding(20)
                .padding(.leading, 10)
            }
        }
    }
}

struct CertificateRows_Previews: PreviewProvider {
    static var previews: some View {
        CertificateRows()
    }
}

struct Certificate: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var width: CGFloat
    var height: CGFloat
}

let certificateData = [
    Certificate(title: "OC", image: "Certificate1", width: 230, height: 150),
    Certificate(title: "Swift", image: "Certificate2", width: 230, height: 150),
    Certificate(title: "Java", image: "Certificate3", width: 230, height: 150),
    Certificate(title: "GO", image: "Certificate4", width: 230, height: 150),
]
