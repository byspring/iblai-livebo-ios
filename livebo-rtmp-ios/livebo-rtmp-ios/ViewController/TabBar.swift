//
//  TabBar.swift
//  Created by yqb on 2020/12/24.
//  Copyright © 2020 iblai All rights reserved.
//

import SwiftUI

struct TabBar: View {
    @State var selectedView = 1
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.darkGray
    }
    var body: some View {
        TabView(selection: $selectedView) {
            Home()
                .tabItem {
                    Image("IconHome")
                    Text("推流")
            }
            .tag(1)
            ContentView()
                .tabItem {
                    Image("IconCards")
                    Text("拉流")
            }
            .tag(2)
            
            Settings()
                .tabItem {
                    Image("IconSettings")
                    Text("我的")
            }
            .tag(4)
        }
        .accentColor(.red)
        .edgesIgnoringSafeArea(.top)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
//            .environment(\.colorScheme, .dark)
//            .environment(\.sizeCategory, .extraExtraLarge)
    }
}
