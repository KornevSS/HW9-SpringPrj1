//
//  SpringBall.swift
//  SpringPrj1
//
//  Created by Сергей Корнев on 26.02.2021.
//

import UIKit

struct SpringBall {
    
    let animation: String
    let curve: String
    
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    let rotate: CGFloat
    
    
    
}

extension SpringBall {
    
    static func getRandomSettings() -> SpringBall {
        let springBallSettings = AnimationManager()
        return SpringBall(
            animation: springBallSettings.animation,
            curve: springBallSettings.curve,
            force: springBallSettings.force,
            duration: springBallSettings.duration,
            delay: springBallSettings.delay,
            rotate: springBallSettings.rotate)
    }
    
}


