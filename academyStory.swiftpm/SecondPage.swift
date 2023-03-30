//
//  SecondPage.swift
//  academyStory
//
//  Created by David Goggins on 2023/03/30.
//

import SwiftUI

struct SecondPage: View {
        @Binding var firstNaviLinkActive: Bool
    var body: some View {
        VStack{
            //Text("This is Second Page.")
            NavigationLink(destination: ThirdPage(firstNaviLinkActive: $firstNaviLinkActive)) {
                Text("타일러 확인하기")
                    .foregroundColor(Color.white)
                    .frame(width: 100, height: 60, alignment: .center)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .fill(Color.green))
            }
            .navigationBarHidden(true)
        }
    }
}

struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage(firstNaviLinkActive: .constant(true))
    }
}

