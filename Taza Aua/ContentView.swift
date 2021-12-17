//
//  ContentView.swift
//  Taza Aua
//
//  Created by Beket Muratbek on 17.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            MainPage()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                        .font(.system(size: 10, weight: .medium, design: .default))
                }
            MapView()
                .tabItem{
                    Image(systemName: "map")
                    Text("Map")
                }
            ShopView()
                .tabItem{
                    Image(systemName: "cart")
                    Text("Shop")
                }
            Text("Profile")
                .tabItem{
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
//            .preferredColorScheme(.light)
    }
}

struct MainPage: View{
    var body: some View{
        ScrollView{
            VStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color("DarkBlue"))
//                    .background(Color.white)
//                    .shadow(color:Color.accentColor, radius: 10, x: 0, y: 0)
                    //.shadow(radius: 10)
//                    .foregroundColor(Color.white)
                    .frame(width: UIScreen.main.bounds.width-10, height: 150)
                    .padding()
                Text("hi")
            }
        }
    }
}
