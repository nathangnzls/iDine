//
//  ItemDetail.swift
//  iDine
//
//  Created by Nathan on 2/21/20.
//  Copyright © 2020 Nathan. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    var item: MenuItem
    var body: some View {
        List{
                ZStack(alignment: .bottomTrailing, content: {
                     Image(item.mainImage)
                    .resizable()
                        .aspectRatio(contentMode: .fill)
                            Text("Photo: \(item.photoCredit)")
                                            .background(Color.black)
                                            .font(.caption)
                                            .foregroundColor(.white)
                    .offset(x: -5, y: -5)
                                
                })
            .listRowInsets(EdgeIsets())
                VStack(alignment: .leading){
                    Text(item.description)
                    .lineLimit(nil)
                    .lineSpacing(5)
                }
            .padding(.top)
            .padding(.bottom)
        }
        .navigationBarTitle(Text(item.name), displayMode: .inline)
    
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ItemDetail(item: MenuItem.example)
        }
    }
}
