//
//  ContentView.swift
//  SimpleTable
//
//  Created by Xer on 2023/11/12.
//

import SwiftUI

struct ContentView: View {
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var body: some View {
//        List {   //传统列表形式
//            Text("Itme 1")
//            Text("Itme 2")
//            Text("Itme 3")
//            Text("Itme 4")
//        }
//        List {
//            ForEach(1...5, id: \.self){ index in //数据相近可使用ForEach回圈方法
//                Text("Item \(index)")
//
//            }
//        }
//        List {
//            ForEach(1...6,id: \.self){
//                Text("Item \($0)")
//            }
//        }
//
        List{
            ForEach(0...restaurantNames.count-1,id: \.self){
                index in
                HStack{
                    Image("restaurant")
                        .resizable()
                        .frame(width: 40,height: 40)
                    Text(restaurantNames[index])
                }
               
            }
            //👇取消index的写法
            ForEach(restaurantNames,id: \.self){
                restaurantNames in
                HStack{
                    Image("restaurant")
                        .resizable()
                        .frame(width: 40,height: 40)
                    Text(restaurantNames)
                }
               
            }
        }
        .listStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
