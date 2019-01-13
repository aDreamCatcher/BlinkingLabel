//
//  BlinkingLabel.swift
//  BlinkingLabel
//
//  Created by lgy on 2019/1/13.
//

import UIKit

public class BlinkingLabel: UILabel {
    public func startBlinking() {
        let options: UIView.AnimationOptions = UIView.AnimationOptions(rawValue: UIView.AnimationOptions.repeat.rawValue | UIView.AnimationOptions.autoreverse.rawValue)
        UIView.animate(withDuration: 0.25,
                       delay: 0.0,
                       options: options,
                       animations: {
                        self.alpha = 0
        },
                       completion: nil)
    }

    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
