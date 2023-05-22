//
//  carrotDetail.swift
//  carrot_practice
//
//  Created by 이준후 on 2023/05/22.
//

import SwiftUI

struct carrotDetail: View {
    
    var carrot: Carrot
    var body: some View {
        VStack (spacing: 0){
            HStack {
                AsyncImage(url: carrot.product.imageURLs[0]) { Image in
                    Image
                        .resizable()
                    
                } placeholder: {
                    ProgressView()
                }
            }
            .frame(width: 393, height: 393)

            
            HStack {
                HStack {
                    AsyncImage(url: carrot.author.profileImageURL) { Image in
                        Image
                            .resizable()
                            .frame(width: 48, height: 48)
                            .clipShape(Circle())
                        
                    } placeholder: {
                        ProgressView()
                    }
                    VStack (alignment: .leading){
                        Text(carrot.author.nickname)
                            .fontWeight(.bold)
                        Text(carrot.author.location)
                    }
                    Spacer()
                    Text(String(carrot.author.mannerTemperature))
                }
                .padding(.horizontal)
                .frame(width: 393, height: 68)
            }
            Divider()
            
            HStack {
                VStack (alignment: .leading){
                    Text(carrot.post.title)
                        .fontWeight(.bold)
                        .font(.system(size: 19))
                        .padding(.bottom)
                    
                    Text(carrot.product.category)
                        .padding(.bottom)
                    Text(carrot.post.content)
                }
                .padding()
            }
            .frame(width: 393, alignment: .leading)
            Spacer()
            
            
        }
        .ignoresSafeArea()
    }
}

struct carrotDetail_Previews: PreviewProvider {
    static var previews: some View {
        carrotDetail(carrot: carrots[0])
    }
}
