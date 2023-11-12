import UIKit
////var userId = "25"
////var messageInfo = "Your ID is No." + String(userId)
////print(messageInfo)
////
////var price: Int?
//////var price = 50.00
////
////let bookPrice = [
////    "book1":50.00,
////    "book2":60.00,
////    "book3":70.00
////]
////price = 1
//////var bookMean = bookPrice
//////print(bookMean)
//////for (key,value) in bookPrice {
//////    print("book:\(key)")
//////    print("price:\(value)")
//////}
//////var article = "book"
//////var priceMessage1 = "The price of the"+article+"is $"+String(price)
//////var priceMessage2 = "The price of the"+article+"is $ \(price)"
////var electWallet = 5.05
////if price == nil{
////    print("Please select product")
////} else {
////    price = 0
//////    if let price = price{
////    var ptintPrice:String = "123"+String(price)
////        print(ptintPrice)
//////            if electWallet > price {
////                if electWallet > 0 {
////                print("Sufficient balance!!!")
////            } else {
////                print("Not sufficient funds")
////                print("Your wallet is now available $"+String(electWallet) + " !!")
////            }
////    }
//////}
//
//var emojiDict:[String:String] = ["😭":"Sad",
//                                 "🤬":"Shiht",
//                                 "🥶":"cod",
//                                 "🥳":"Happy"
//                                ]
//
//var wordTolookup = "🥶"
//var meaning = emojiDict[wordTolookup]
//
//print(meaning)
//
//wordTolookup = "🤬"
//meaning = emojiDict[wordTolookup]
//
//print(meaning)
//
//var jobTitle : String?
//jobTitle = "IOS Developer"
//
//if jobTitle != nil {
//    var message = "Yor job title is " + jobTitle!
//    print(message)
//}
//
////if let 寻找「」是否有值,不需要加!
//if let jobTitleWithvalue = jobTitle {
//    var message = "Yor job title is " + jobTitleWithvalue
//}

import SwiftUI
import PlaygroundSupport

//swift属性分为两大类 stored property(存储属性) computed property(计算属性)
//stored property:属性放在该对象内部,占用该对象内存,所以只有struct和class才有存储属性,枚举就不可以有存储属性,因为关联值和原始值都放在枚举类里面,而不是枚举实例化对象
//computed property: 只用作计算,没有真正存储到实例化对象的内存中

struct ContentView: View {
    var body: some View {
        VStack {
            Text("🤪")
                .font(.system(size: 100))
            Text("Hppy")
                .font(.system(size: 30))
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 300)
        .background(Color.blue)
    }

}
PlaygroundPage.current.setLiveView(ContentView())
