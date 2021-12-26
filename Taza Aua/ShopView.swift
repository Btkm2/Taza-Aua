//
//  ShopView.swift
//  Taza Aua
//
//  Created by Beket Muratbek on 17.12.2021.
//

import SwiftUI

struct ShopView: View {
    @State var searchItem: String = ""
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "location")
//                        .renderingMode(.original)
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame()
                        .foregroundColor(Color.blue)
                    Text("Алматы")
                        .padding(.trailing,265)
                }
                HStack{
                    Text("Магазин")
                        .padding(.trailing, 200)
                    Image(systemName: "bell")
                    Image(systemName: "heart")
                    Image(systemName: "cart")
                }
                Spacer()
            }
//            Spacer()
            VStack(alignment: .leading){
                RoundedRectangle(cornerRadius: 0)
                    .fill(Color("DarkBlue"))
                    .frame(width: UIScreen.main.bounds.width, height: 1)
                    .padding(.top, 60)
                HStack{
                        HStack{
                            Image(systemName: "magnifyingglass")
                            TextField("Search",text: $searchItem)
//                                .background(Color("DarkBlue"))
                            //.textFieldStyle(RoundedBorderTextFieldStyle())
        //                        .frame(width: UIScreen.main.bounds.width-20, height: 50)
                            Image(systemName: "mic")
                        }
                        .padding(.all, 8)
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(lineWidth: 1).foregroundColor(Color("DarkBlue")).background(Color("arkBlue")))
                        .foregroundColor(Color("IconColor"))
                        .frame(width: UIScreen.main.bounds.width-50, height: 50)
//                    Image(systemName: "slider.horizontal.3")
////                        .renderingMode(.original)
////                        .resizable()
////                        .aspectRatio(contentMode: .fit)
//                        .foregroundColor(Color.blue)
//                        //.padding(.all,0)
//                        .frame(width: 40, height: 40)
//                        .background(Color("DarkBlue"))
//                        .cornerRadius(10)
                    Button(action: {}){
                        Image(systemName: "slider.horizontal.3")
                    }
                    .foregroundColor(Color.blue)
                    //.padding(.all,0)
                    .frame(width: 40, height: 40)
                    .background(Color("DarkBlue"))
                    .cornerRadius(10)
                }
                ScrollView(.horizontal){
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color("DarkBlue"))
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.2)
                        .padding(.top, 20)
                }
//                .frame(width: UIScreen.main.bounds.width-30, height: 50)
                Spacer()
            }
            VStack(alignment: .leading){
                HStack{
                    Text("Католог товаров")
                        .padding(.trailing, 160)
                    Button(action: {}){
                        HStack{
                            Text("Все")
                            Image(systemName: "arrow.right")
                        }
                        .frame(width: 80, height: 35)
                        .background(Color("DarkBlue"))
                        .foregroundColor(Color.blue)
                        .cornerRadius(12)
                    }
                    .padding(.trailing, -10)
                }
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(0..<8){ index in
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color("DarkBlue"))
                                .frame(width: 100, height: 40)
                        }
                    }
                }
            }
            .padding(.top, 30)
            VStack(alignment: .leading){
                HStack{
                    Text("Защитные маски для лица")
                        .padding(.trailing, 160)
                    Button(action: {
                        
                    }){
                        HStack{
                            Text("Все")
                            Image(systemName: "arrow.right")
                        }
                        .frame(width: 80, height: 35)
                        .background(Color("DarkBlue"))
                        .foregroundColor(Color.blue)
                        .cornerRadius(12)
                    }
                    .padding(.trailing, -10)
                }
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(0..<6){ index in
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color("DarkBlue"))
                                .frame(width: 150, height: 150)
                        }
                    }
                }
            }
            .padding(.top, 350)
           // Spacer()
//            ScrollView(.horizontal){
//                HStack{
//                    RoundedRectangle(cornerRadius: 5)
//                        .fill(Color("DarkBlue"))
//                        .frame(width: 150, height: 50)
//                        .shadow(radius: 10)
//                        .padding()
//                }
//            }
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
            .preferredColorScheme(.dark)
    }
}
