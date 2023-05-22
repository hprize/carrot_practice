//
//  carrotRow.swift
//  carrot_practice
//
//  Created by 이준후 on 2023/05/19.
//

import SwiftUI

struct carrotRow: View {
    var carrot: Carrot
    
    
    var body: some View {
        HStack{
            AsyncImage(url: carrot.product.imageURLs[0]) { image in
                image
                    .resizable()
                    .frame(width: 108, height: 108)
                    .cornerRadius(6)
            } placeholder: {
                ProgressView()
                    .frame(width: 108, height: 108)
            }
            
            Spacer ()
            
            VStack {
                VStack (alignment: .leading){
                    Text(carrot.post.title)
                    Text("\(carrot.author.location), \(carrot.createdTime)")
                    Text(String(carrot.product.price))
                }
                .frame(width: 221, alignment: .leading)
                
                Spacer()
                
                HStack {
                    HStack {
                        Image(systemName: "message")
                        Text(String(carrot.post.reaction.commentsCount))
                    }
                    HStack {
                        Image(systemName: "heart")
                        Text(String(carrot.post.reaction.heartsCount))
                    }
                }
                .frame(width: 221, alignment: .trailing)
            }
            .frame(height: 108)
        }
        .frame(width: 343, alignment: .leading)
    }
}

struct carrotRow_Previews: PreviewProvider {
    static var previews: some View {
        carrotRow(carrot: carrots[0])
    }
}
