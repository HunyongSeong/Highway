//
//  ThirdPage.swift
//  academyStory
//
//  Created by David Goggins on 2023/03/30.
//

import SwiftUI

struct ThirdPage: View {
    @Binding var firstNaviLinkActive: Bool
    var body: some View {
        HStack{
            VStack{
                Spacer()
                
                Button(action: {
                    firstNaviLinkActive = false
                }, label: {
                    Text("타일러 뒤로가기")
                        
                        .foregroundColor(Color.white)
                        .frame(width: 100, height: 60, alignment: .center)
                        .background(RoundedRectangle(cornerRadius: 10)
                        .fill(Color.purple))
                        .navigationBarHidden(true)
                })
            }
            Spacer()
        }
    }
}


struct ThirdPage_Previews: PreviewProvider {
    static var previews: some View {
        ThirdPage(firstNaviLinkActive: .constant(true))
    }
}
