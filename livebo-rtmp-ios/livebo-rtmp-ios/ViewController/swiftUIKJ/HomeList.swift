//
//  HomeList.swift
//  Created by yqb on 2020/12/24.
//  Copyright © 2020 iblai All rights reserved.
//
import SwiftUI

struct HomeList: View {
    let courseData = CourseData
    @State var showModel = false
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    VStack {
                        Text("摆领云直播")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        Text("视频智能服务专家")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }
                .padding(.leading, 70)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 30) {
                        ForEach(courseData) { item in
                            Button(action: {
                                self.showModel = true
                            }) {
                                GeometryReader { geometry in
                                    CourseView(
                                        title: item.title,
                                        xiaotitle : item.xiaotitle,
                                        image: item.image,
                                        backgroundColor: item.backgroundColor,
                                        shadowColor: item.shadowColor
                                    )
                                        .rotation3DEffect(Angle(degrees: Double(geometry.frame(in: .global).minX - 40) / -40), axis: (x: 0, y: 10, z: 0))
                                }
                                .frame(width: 246, height: 360)
                            }.sheet(isPresented: self.$showModel) {
                                ContentView()
                            }
                        }
                    }
                    .padding(.leading, 30)
                    .padding(.top, 30)
                    .padding(.bottom, 30)
                    Spacer()
                }
                CertificateRows()
            }
            .padding(.top, 78)
            .padding(.bottom, 83)
        }
    }
}

struct HomeList_Previews: PreviewProvider {
    static var previews: some View {
        HomeList()
    }
}

struct CourseView: View {
    var title : String = "Build an app with SwiftUI"
    var xiaotitle : String = "xxxxx"
    var image : String = "Illustration1"
    var backgroundColor: Color = Color("background3")
    var shadowColor : Color = Color("shadow3")
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(20)
                .lineLimit(nil)
                .padding(.trailing, 50)
            
            Text(xiaotitle).foregroundColor(.white).padding(20).font(.custom("", size: 22)) //水平方向向右偏移40点的距离
            Spacer()
            
            Image(image)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: ContentMode.fit)
                .frame(width: 246, height: 150)
                .padding(.bottom, 30)
        }
        .background(backgroundColor)
        .cornerRadius(30)
        .frame(width: 246, height: 360)
        .shadow(color: shadowColor, radius: 20, x: 0, y: 20)
        
    }
}

struct Course: Identifiable {
    var id = UUID()
    var title : String
    var xiaotitle : String
    var image : String
    var backgroundColor: Color
    var shadowColor : Color
    
}

let CourseData = [
    Course(
        title: "RTMP直播",
        xiaotitle : "全端支持、稳定、兼容好、延时低",
        image: "Illustration1",
        backgroundColor: Color("background3"),
        shadowColor: Color("shadow3")
    ),
    Course(
        title: "RTC快直播",
        xiaotitle : "超低延时300毫秒内、无需安装插件",
        image: "Illustration2",
        backgroundColor: Color("background4"),
        shadowColor: Color("shadow4")
    )
]
