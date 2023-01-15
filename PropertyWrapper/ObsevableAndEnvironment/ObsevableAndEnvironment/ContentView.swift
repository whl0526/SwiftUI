//
//  ContentView.swift
//  ObsevableAndEnvironment
//
//  Created by 이원형 on 2022/10/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var timerData : TimerData = TimerData()
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Timer Count =\(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button(action: resetCount){
                    Text("reset counter")
                }
                NavigationLink(destination:
                                SecondView(timerData: timerData)){
                    Text("Next Screen")
                }
                                .padding()
    
            }
        }
    }
    func resetCount(){
        timerData.resetCount()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
