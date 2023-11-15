//
//  RestaurantListView.swift
//  FoodPin
//
//  Created by Simon Ng on 14/10/2022.
//
// upDate learn For Xer on 13/11/2023

import SwiftUI

struct RestaurantListView: View {
/*
 
 写法1
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]

    var restaurantImages = ["cafedeadend", "homei", "teakha", "cafeloisl", "petiteoyster", "forkee", "posatelier", "bourkestreetbakery", "haigh", "palomino", "upstate", "traif", "graham", "waffleandwolf", "fiveleaves", "cafelore", "confessional", "barrafina", "donostia", "royaloak", "cask"]

    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]

    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]


    @State var restaurantIsFavorites = Array(repeating: false, count: 21)//宣告Bool值 存放Bool的集合
    */
    
    @State var restaurants = [
        Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "Hong Kong", image: "cafedeadend", isFavorite: false),
        Restaurant(name: "Homei", type: "Cafe", location: "Hong Kong", image: "homei", isFavorite: false),
        Restaurant(name: "Teakha", type: "Tea House", location: "Hong Kong", image: "teakha", isFavorite: false),
        Restaurant(name: "Cafe loisl", type: "Austrian / Causual Drink", location: "Hong Kong", image: "cafeloisl", isFavorite: false),
        Restaurant(name: "Petite Oyster", type: "French", location: "Hong Kong", image: "petiteoyster", isFavorite: false),
        Restaurant(name: "For Kee Restaurant", type: "Bakery", location: "Hong Kong", image: "forkee", isFavorite: false),
        Restaurant(name: "Po's Atelier", type: "Bakery", location: "Hong Kong", image: "posatelier", isFavorite: false),
        Restaurant(name: "Bourke Street Backery", type: "Chocolate", location: "Sydney", image: "bourkestreetbakery", isFavorite: false),
        Restaurant(name: "Haigh's Chocolate", type: "Cafe", location: "Sydney", image: "haigh", isFavorite: false),
        Restaurant(name: "Palomino Espresso", type: "American / Seafood", location: "Sydney", image: "palomino", isFavorite: false),
        Restaurant(name: "Upstate", type: "American", location: "New York", image: "upstate", isFavorite: false),
        Restaurant(name: "Traif", type: "American", location: "New York", image: "traif", isFavorite: false),
        Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch", location: "New York", image: "graham", isFavorite: false),
        Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location: "New York", image: "waffleandwolf", isFavorite: false),
        Restaurant(name: "Five Leaves", type: "Coffee & Tea", location: "New York", image: "fiveleaves", isFavorite: false),
        Restaurant(name: "Cafe Lore", type: "Latin American", location: "New York", image: "cafelore", isFavorite: false),
        Restaurant(name: "Confessional", type: "Spanish", location: "New York", image: "confessional", isFavorite: false),
        Restaurant(name: "Barrafina", type: "Spanish", location: "London", image: "barrafina", isFavorite: false),
        Restaurant(name: "Donostia", type: "Spanish", location: "London", image: "donostia", isFavorite: false),
        Restaurant(name: "Royal Oak", type: "British", location: "London", image: "royaloak", isFavorite: false),
        Restaurant(name: "CASK Pub and Kitchen", type: "Thai", location: "London", image: "cask", isFavorite: false)
        ]
    
    var body: some View {
        List {
            /*
             写法1
            ForEach(restaurantNames.indices, id: \.self) { index in
                BasicTextImageRow(imageName:restaurantImages[index],name: restaurantNames[index],type: restaurantTypes[index],location: restaurantLocations[index],isFavorite:$restaurantIsFavorites[index])
            }
             */
            
            
            ForEach(restaurants.indices, id: \.self) { index in
                BasicTextImageRow(imageName: restaurants[index].image, name: restaurants[index].name, type: restaurants[index].type, location: restaurants[index].location, isFavorite: $restaurants[index].isFavorite)
            }
            
            .listRowSeparator(.hidden)//消除列表分割线
        }
        .listStyle(.plain)
    }
}


/*写法1
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
 */

struct BasicTextImageRow: View {

    @Binding var restaurant: Restaurant

    @State private var showOptions = false
    @State private var showError = false

    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            Image(restaurant.image)
                .resizable()
                .frame(width: 120, height: 118)
                .cornerRadius(20)

            VStack(alignment: .leading) {
                Text(restaurant.name)
                    .font(.system(.title2, design: .rounded))

                Text(restaurant.type)
                    .font(.system(.body, design: .rounded))

                Text(restaurant.location)
                    .font(.system(.subheadline, design: .rounded))
                    .foregroundColor(.gray)
            }

            if restaurant.isFavorite {
                Spacer()

                Image(systemName: "heart.fill")
                    .foregroundColor(.yellow)
            }
        }
        .onTapGesture {
            showOptions.toggle()
        }
        .confirmationDialog("What do you want to do?", isPresented: $showOptions, titleVisibility: .visible) {

            Button("Reserve a table") {
                self.showError.toggle()
            }

            Button(restaurant.isFavorite ? "Remove from favorites" : "Mark as favorite") {
                self.restaurant.isFavorite.toggle()
            }
        }
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
        
//        BasicTextImageRow(restaurant: $restaurants[index])
        
        FullImageRow(imageName: "cafedeadend", name: "Cafe Deadend", type: "Cafe", location: "Hong Kong")
            .previewLayout(.sizeThatFits)
            .previewDisplayName("FullImageRow")
    }
}
