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
    var title1: String
    var image: String
    var width: CGFloat
    var height: CGFloat
}

let certificateData = [
    Certificate(title: "...晚会在线直播", title1:"千人同时观看大型文艺晚会", image: "Certificate1", width: 230, height: 150),
    Certificate(title: "...大型公开课",title1:"大型读书会公开课", image: "Certificate2", width: 230, height: 150),
    Certificate(title: "...汽车在线讲解", title1:"雪地胎的重要性", image: "Certificate3", width: 230, height: 150),
    Certificate(title: "...机器人互动",title1:"人工智能发展方向", image: "Certificate4", width: 230, height: 150),
]
