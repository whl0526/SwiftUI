//
//  TimerData.swift
//  ObsevableAndEnvironment
//
//  Created by 이원형 on 2022/10/24.
//

import Foundation
import Combine

class TimerData : ObservableObject{
    @Published var timeCount = 0
    var timer : Timer?
    
    init(){
        timer = Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector: #selector(timerDidFire),
                                     userInfo: nil,
                                     repeats: true)
                                     
    }
    @objc func timerDidFire(){
        timeCount += 1
    }
    func resetCount(){
        timeCount = 0
    }
}

