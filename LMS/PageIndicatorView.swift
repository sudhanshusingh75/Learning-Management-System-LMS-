//
//  PageIndicatorView.swift
//  LMS
//
//  Created by Sudhanshu Singh Rajput on 11/12/24.
//

import SwiftUI

struct PageIndicatorView: View {
    var totalDots : Int
    var currentIndex : Int
    
    var body: some View {
        HStack(spacing:8){
            ForEach (0..<totalDots,id:\.self){ index in
                Circle()
                    .fill(index == currentIndex ? Color(red: 0.0, green: 0.184, blue: 0.588) : Color(.systemGray4))
                    .frame(width:10,height:10)
                    .animation(.easeInOut,value: currentIndex)
            }
        }
    }
}

#Preview {
    PageIndicatorView(totalDots: 4, currentIndex: 0)
}
