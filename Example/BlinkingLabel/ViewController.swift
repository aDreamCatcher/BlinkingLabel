//
//  ViewController.swift
//  BlinkingLabel
//
//  Created by aDreamCatcher on 01/13/2019.
//  Copyright (c) 2019 aDreamCatcher. All rights reserved.
//

import UIKit
import BlinkingLabel // This Module was unrecognized many time. (solution: clear Xcode cache)
                     // modify BlinkingLabel module's code need clear cache.(may need set buildSetting)

class ViewController: UIViewController {

    // MARK: properties

    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRect(x: 10,
                                                 y: 120,
                                                 width: 200,
                                                 height: 30))

    // MARK: life cycle methods

    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup the BlinkingLabel
        blinkingLabel.text = "I Blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)

        view.addSubview(blinkingLabel)
        isBlinking = true

        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(type: .custom)
        toggleButton.frame = CGRect(x: 10,
                                    y: 160,
                                    width: 125,
                                    height: 30)
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.addTarget(self, action: #selector(toggleBlinking), for: .touchUpInside)

        view.addSubview(toggleButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MAKR: actions

    @objc func toggleBlinking() {
        if isBlinking {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }

        isBlinking = !isBlinking
    }

}

