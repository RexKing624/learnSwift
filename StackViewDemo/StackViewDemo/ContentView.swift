//
//  ContentView.swift
//  StackViewDemo
//
//  Created by Xer on 2023/11/12.
//
// 堆叠设计。VStack :提供纵向的堆叠效果
//         HStack :提供横向的堆叠效果


import SwiftUI

struct ContentView: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Instant Developer")
                    .fontWeight(.medium)
                    .font(.system(size: 40))
                    .foregroundColor(.indigo)
//                    .background(Color.black)
                Text("Get help from experts in 15 minutes")
            }
            HStack(alignment: .bottom, spacing: 10) { //水平堆疊視圖將所有的圖片視圖對齊底部邊緣，並在視圖之間加入10 點的間距。
                Image("user1")
                    .resizable()//拉升铺满全屏
    //                .scaledToFit()//保持图片的长宽比 也可以用⬇️
                .aspectRatio(contentMode: .fit)
                Image("user2")
                    .resizable()
                    .scaledToFit()
                Image("user3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .padding(.horizontal,20)//间距修饰器
            .padding()
            
            Text("Need help with coding problems? Register!")
                
            Spacer()
            if verticalSizeClass == .compact {  //判断屏幕是否横放
                HSignUpButtonGroup()//按键整一个取出
            } else {
                VSignUpButtonGroup()//按键整一个取出
            }
            
            
        }
        .padding(.top,30)
        .background{
            Image("background")
                .resizable()
                .ignoresSafeArea()//拉升到整个屏幕
            
        }
//        if verticalSizeClass == .compact {  //判断屏幕是否横放
//            HSignUpButtonGroup()//按键整一个取出
//        } else {
//            background{
//                    Image("background")
//                    .resizable()
//                    .ignoresSafeArea()//拉升到整个屏幕
//            }
//        }
 
    }

}


//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group{
//            ContentView()
//                .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
//
//        }
//
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
                .previewDisplayName("iPhone 12 Pro")

            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
                .previewDisplayName("iPhone 12 Pro")
                .previewInterfaceOrientation(.landscapeLeft)//横向模式预览

            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
                .previewDisplayName("iPhone 12 Pro Max")

            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPad Air (4th generation)"))
                .previewDisplayName("iPad Air")
        }
    }
}

struct VSignUpButtonGroup: View {
    var body: some View {
        VStack {
            Button("Sign UP"){
                
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)//字体颜色
            .background(Color.indigo)//背景颜色
            .cornerRadius(10)//圆角
            Button("Log IN"){
                
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)//字体颜色
            .background(Color.gray)//背景颜色
            .cornerRadius(10)//圆角
            
        }
    }
}

struct HSignUpButtonGroup: View {
    var body: some View {
        HStack {
            Button("Sign UP"){
                
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)//字体颜色
            .background(Color.indigo)//背景颜色
            .cornerRadius(10)//圆角
            Button("Log IN"){
                
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)//字体颜色
            .background(Color.gray)//背景颜色
            .cornerRadius(10)//圆角
            
        }
    }
}
