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
            VStack{
                RoundedRectangle(cornerRadius: 0)
                    .fill(Color("DarkBlue"))
                    .frame(width: UIScreen.main.bounds.width, height: 1)
                    .padding(.top, 60)
                HStack{
                        HStack{
                            Image(systemName: "magnifyingglass")
                            TextField("Search",text: $searchItem)
                            //.textFieldStyle(RoundedBorderTextFieldStyle())
        //                        .frame(width: UIScreen.main.bounds.width-20, height: 50)
                            Image(systemName: "mic")
                        }
                        .padding(.all, 8)
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(lineWidth: 1).foregroundColor(Color.gray))
                        .foregroundColor(Color("IconColor"))
                        .frame(width: UIScreen.main.bounds.width-30, height: 50)
                    Image(systemName: "slider.horizontal.3")
                        .foregroundColor(Color("IconColor"))
                }
//                .frame(width: UIScreen.main.bounds.width-30, height: 50)
                Spacer()
            }
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
