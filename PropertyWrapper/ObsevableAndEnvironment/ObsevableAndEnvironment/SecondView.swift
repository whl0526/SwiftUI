//
//  SecondView.swift
//  ObsevableAndEnvironment
//
//  Created by 이원형 on 2022/10/24.
//

import SwiftUI

struct SecondView: View {
    @ObservedObject var timerData : TimerData

    var body: some View {
        VStack{
            Text("Second View")
                .font(.largeTitle)
            Text("TimerCount = \(timerData.timeCount)")
                .font(.headline)
            
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(timerData: TimerData())
    }
}
