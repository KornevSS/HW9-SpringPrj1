//
//  SpringBall.swift
//  SpringPrj1
//
//  Created by Сергей Корнев on 26.02.2021.
//

import Spring

struct SpringBall {
    
    var animation: String
    var curve: String
    
    var force: CGFloat
    var duration: CGFloat
    var delay: CGFloat
    var rotate: CGFloat
    
}

extension SpringBall {
    
    static func getRandomSettings() -> SpringBall {
        let springBallSettings = DataManager()
        return SpringBall(
            animation: springBallSettings.animation,
            curve: springBallSettings.curve,
            force: springBallSettings.force,
            duration: springBallSettings.duration,
            delay: springBallSettings.delay,
            rotate: springBallSettings.rotate)
    }
    
}


