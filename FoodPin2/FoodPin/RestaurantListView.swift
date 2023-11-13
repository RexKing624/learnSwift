//
//  RestaurantListView.swift
//  FoodPin
//
//  Created by Simon Ng on 14/10/2022.
//
// upDate learn For Xer on 13/11/2023

import SwiftUI

struct RestaurantListView: View {
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var restaurantImages = ["cafedeadend", "homei", "teakha", "cafeloisl", "petiteoyster", "forkee", "posatelier", "bourkestreetbakery", "haigh", "palomino", "upstate", "traif", "graham", "waffleandwolf", "fiveleaves", "cafelore", "confessional", "barrafina", "donostia", "royaloak", "cask"]
    
    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]
        
    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    
    
    @State var restaurantIsFavorites = Array(repeating: false, count: 21)//宣告Bool值 存放Bool的集合
    
    var body: some View {
        List {
            ForEach(restaurantNames.indices, id: \.self) { index in
                BasicTextImageRow(imageName:restaurantImages[index],name: restaurantNames[index],type: restaurantTypes[index],location: restaurantLocations[index],isFavorite:$restaurantIsFavorites[index])
            }
            
            

            
            .listRowSeparator(.hidden)//消除列表分割线
        }
        .listStyle(.plain)
    }
}



struct BasicTextImageRow: View {
    
    //从RestaurantListView提取出,⬇️重新建档
    var imageName: String
    var name: String
    var type: String
    var location: String
    
    @State private var showOptions = false /*State XXX 设定@事件的状态,默认boole值为关*/
    
    @State private var showError = false //Reserve按钮弹窗
    
    @Binding var isFavorite: Bool //Binding表示呼叫者必须提供状态变数的绑定
    
    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            Image(imageName)
                .resizable()
                .frame(width: 120, height: 118)
                .cornerRadius(20)
           
            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(.title2, design: .rounded))
                
                Text(type)
                    .font(.system(.body, design: .rounded))
                
                Text(location)
                    .font(.system(.subheadline, design: .rounded))
                    .foregroundColor(.gray)
            }
//             .padding(.horizontal)
             .padding(.bottom)

            if isFavorite {
                Spacer()//将心性图标推到右边缘
                
                Image(systemName: "heart.fill")
                    .foregroundColor(.yellow)
            }
            
        }
        .onTapGesture {
            showOptions.toggle()
        }
        //confirmationDialog点击选单修饰器
        .confirmationDialog("What do you want to do?", isPresented: $showOptions, titleVisibility: .visible ){
            Button("Reserve a table") {
                self.showError.toggle()
                }
            if isFavorite == true{
                Button("Remove from favorite") {
                    self.isFavorite.toggle()
                    }
            } else {
                Button("Mark as favorite") {
                    self.isFavorite.toggle()
                    }
            }
            
        }
        //.alert修饰器,可以用来显示提示讯息
        .alert("Not yet available", isPresented: $showError) {
            Button("OK") {}
        } message: {
            Text("Sorry, this feature is not available yet. Please retry later.")
        }
        
    }
}

struct FullImageRow: View {

    var imageName: String
    var name: String
    var type: String
    var location: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(imageName)
                .resizable()
                .scaledToFit()//保持元素的长宽比
                .frame(height: 200)
                .cornerRadius(20)

            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(.title2, design: .rounded))

                Text(type)
                    .font(.system(.body, design: .rounded))

                Text(location)
                    .font(.system(.subheadline, design: .rounded))
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            .padding(.bottom)
        }
    }
}

struct RestaurantListView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantListView()
        
        RestaurantListView()
            .preferredColorScheme(.dark)
            .previewDisplayName("Restaurant List View (Dark)")
        BasicTextImageRow(imageName: "cafedeadend", name: "Cafe Deadend", type: "Cafe", location: "Hong Kong", isFavorite: .constant(true))
            .previewLayout(.sizeThatFits)
            .previewDisplayName("BasicTextImageRow")
        
        FullImageRow(imageName: "cafedeadend", name: "Cafe Deadend", type: "Cafe", location: "Hong Kong")
            .previewLayout(.sizeThatFits)
            .previewDisplayName("FullImageRow")
    }
}
