//
//  DataManager.swift
//  SpringPrj1
//
//  Created by Сергей Корнев on 26.02.2021.
//

import Spring

class DataManager {

    let animation: String
    let curve: String
    
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    let rotate: CGFloat
    
    init () {
        animation = animations.randomElement() ?? "shake"
        curve = animationCurves.randomElement() ?? "spring"
        force = CGFloat.random(in: 1...2)
        duration = CGFloat.random(in: 0.5...3)
        delay = CGFloat.random(in: 0.5...1.5)
        rotate = CGFloat.random(in: 0...5)
    }
    
    init (animation: String,
          curve: String,
          forceRange: ClosedRange<CGFloat>,
          durationRange: ClosedRange<CGFloat>,
          delayRange: ClosedRange<CGFloat>,
          rotateRange: ClosedRange<CGFloat>) {
        
        self.animation = animation
        self.curve = curve
        
        force = CGFloat.random(in: forceRange)
        duration = CGFloat.random(in: durationRange)
        delay = CGFloat.random(in: delayRange)
        rotate = CGFloat.random(in: rotateRange)
    }
    
    private let animations: [String] = [
        "shake",
        "pop",
        "morph",
        "squeeze",
        "wobble",
        "swing",
        "flipX",
        "flipY",
        "fall",
        "squeezeLeft",
        "squeezeRight",
        "squeezeDown",
        "squeezeUp",
        "slideLeft",
        "slideRight",
        "slideDown",
        "slideUp",
        "fadeIn",
        "fadeOut",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "zoomIn",
        "zoomOut",
        "flash"
    ]

    private let animationCurves: [String] = [
        "easeIn",
        "easeOut",
        "easeInOut",
        "linear",
        "spring",
        "easeInSine",
        "easeOutSine",
        "easeInOutSine",
        "easeInQuad",
        "easeOutQuad",
        "easeInOutQuad",
        "easeInCubic",
        "easeOutCubic",
        "easeInOutCubic",
        "easeInQuart",
        "easeOutQuart",
        "easeInOutQuart",
        "easeInQuint",
        "easeOutQuint",
        "easeInOutQuint",
        "easeInExpo",
        "easeOutExpo",
        "easeInOutExpo",
        "easeInCirc",
        "easeOutCirc",
        "easeInOutCirc",
        "easeInBack",
        "easeOutBack",
        "easeInOutBack"
    ]
    
}

