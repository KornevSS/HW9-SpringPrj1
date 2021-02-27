//
//  ViewController.swift
//  SpringPrj1
//
//  Created by Сергей Корнев on 24.02.2021.
//

import UIKit
import Spring


class SpringBallViewController: UIViewController {
        
    private var currentBall: SpringBall!
    private var nextBall: SpringBall!
    
    @IBOutlet var ballSpringImage: SpringImageView!
    
    @IBOutlet var animationCurrentLabel: UILabel!
    @IBOutlet var curveCurrentLabel: UILabel!
    @IBOutlet var forceCurrentLabel: UILabel!
    @IBOutlet var durationCurrentLabel: UILabel!
    @IBOutlet var delayCurrentLabel: UILabel!
    @IBOutlet var rotateCurrentLabel: UILabel!
    
    @IBOutlet var animationNextLabel: UILabel!
    @IBOutlet var curveNextLabel: UILabel!
    @IBOutlet var forceNextLabel: UILabel!
    @IBOutlet var durationNextLabel: UILabel!
    @IBOutlet var delayNextLabel: UILabel!
    @IBOutlet var rotateNextLabel: UILabel!
    
    
    @IBAction func runAnimationButtonClick() {
        nextBall = SpringBall.getRandomSettings()
        updateLabels()
        animateBall()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentBall = SpringBall.getRandomSettings()
        nextBall = SpringBall.getRandomSettings()
        updateLabels()
        animateBall()
    }

    private func updateLabels() {
        animationCurrentLabel.text = currentBall.animation
        curveCurrentLabel.text = currentBall.curve
        forceCurrentLabel.text = cgFloatToString(currentBall.force)
        durationCurrentLabel.text = cgFloatToString(currentBall.duration)
        delayCurrentLabel.text = cgFloatToString(currentBall.delay)
        rotateCurrentLabel.text = cgFloatToString(currentBall.rotate)
        
        animationNextLabel.text = nextBall.animation
        curveNextLabel.text = nextBall.curve
        forceNextLabel.text = cgFloatToString(nextBall.force)
        durationNextLabel.text = cgFloatToString(nextBall.duration)
        delayNextLabel.text = cgFloatToString(nextBall.delay)
        rotateNextLabel.text = cgFloatToString(nextBall.rotate)
        
        animationNextLabel.text = nextBall.animation
    }
    
    private func cgFloatToString(_ value: CGFloat) -> String {
        String(format: "%.2f", Float(value))
    }
    
    private func animateBall() {
        ballSpringImage.animation = currentBall.animation
        ballSpringImage.curve = currentBall.curve
        ballSpringImage.force = currentBall.force
        ballSpringImage.duration = currentBall.duration
        ballSpringImage.delay = currentBall.delay
        ballSpringImage.rotate = currentBall.rotate
        
        ballSpringImage.animate()
        
        currentBall = nextBall
    }

}

