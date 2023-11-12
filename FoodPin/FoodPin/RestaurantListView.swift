//
//  ContentView.swift
//  FoodPin
//
//  Created by Xer on 2023/11/12.
//

import SwiftUI

struct RestaurantListView: View {
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var restaurantImages = ["cafedeadend", "homei", "teakha", "cafeloisl", "petiteoyster", "forkee", "posatelier", "bourkestreetbakery", "haigh", "palomino", "upstate", "traif", "graham", "waffleandwolf", "fiveleaves", "cafelore", "confessional", "barrafina", "donostia", "royaloak", "cask"]
    
    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]
    
    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    
    var body: some View {
//        List {
//            ForEach(restaurantNames.indices,id: \.self) { index in
//                HStack(alignment: .top,spacing: 20){
//                    Image(restaurantImages[index])
//                        .resizable()
//                        .frame(width: 120,height: 118)
//                        .cornerRadius(20)
//                        //.clipShape(RoundedRectangle(cornerRadius: 20)) clipShape修饰器
//                    VStack(alignment:.leading) { //alignment:.leading盒子内元素全左对齐
//                        Text(restaurantNames[index])
//                            .font(.system(.title2,design: .rounded))
//
//                        Text(restaurantLocations[index])
//
//                            .font(.system(.body,design: .rounded)) //design设计rounded圆形
//                        Text(restaurantTypes[index])
//                            .font(.system(.subheadline,design: .rounded))//subheadline副标题
//                            .foregroundColor(.gray)//字体颜色.银色
//                    }
//
//
//                }
//
//            }
//
//            .listRowSeparator(.hidden) //listRowSeparator列表分割符
//        }
//        .listStyle(.plain)
        
        List {
            ForEach(restaurantNames.indices,id: \.self) { index in
                VStack(alignment: .leading,spacing: 20){
                    Image(restaurantImages[index])
//                        .resizable()
                        .frame(width: 350,height: 218)
                        .cornerRadius(20)
                        //.clipShape(RoundedRectangle(cornerRadius: 20)) clipShape修饰器
                    VStack(alignment:.leading) { //alignment:.leading盒子内元素全左对齐
                        Text(restaurantNames[index])
                            .font(.system(.title2,design: .rounded))
                            
                        Text(restaurantLocations[index])
                            
                            .font(.system(.body,design: .rounded)) //design设计rounded圆形
                        Text(restaurantTypes[index])
                            .font(.system(.subheadline,design: .rounded))//subheadline副标题
                            .foregroundColor(.gray)//字体颜色.银色
                    }
//                    .background(Color.red)
                    
                    
                }
                
            }
            
            .listRowSeparator(.hidden) //listRowSeparator列表分割符
        }
        .listStyle(.plain)
    }
}

struct RestaurantListView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantListView()
        
        RestaurantListView()
            .preferredColorScheme(.dark) //深色模式调试
            .previewDisplayName("Restaurant List View(Dark)")

    }
}
