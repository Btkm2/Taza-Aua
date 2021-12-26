//
//  PopUpView.swift
//  Taza Aua
//
//  Created by Beket Muratbek on 26.12.2021.
//

import SwiftUI

struct PopUpView: View {
    @State var searchItem: String = ""
    var body: some View {
        VStack {
            Text("HI")
            TextField("Search",text: $searchItem)
            
                .frame(width: UIScreen.main.bounds.width,
                       height: 200)
                .background(Color.white)
                .foregroundColor(Color.black)
            .cornerRadius(20)
        }
    }
}

struct PopUpView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpView()
            .preferredColorScheme(.dark)
    }
}
