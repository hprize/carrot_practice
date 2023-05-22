//
//  carrotList.swift
//  carrot_practice
//
//  Created by 이준후 on 2023/05/19.
//

import SwiftUI

struct carrotList: View {
    var body: some View {
        List (carrots){ carrot in
            carrotRow()
        }
    }
}

struct carrotList_Previews: PreviewProvider {
    static var previews: some View {
        carrotList()
    }
}
