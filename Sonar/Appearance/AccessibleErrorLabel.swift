//
//  AccessibleErrorLabel.swift
//  Sonar
//
//  Created by NHSX on 02/05/2020.
//  Copyright © 2020 NHSX. All rights reserved.
//

import UIKit

class AccessibleErrorLabel : UILabel {
    override var isHidden: Bool {
        didSet {
            guard isHidden == false else { return }

            postVoiceOverNotification()
        }
    }

    private func postVoiceOverNotification() {
        UIAccessibility.post(notification: .screenChanged,
                             argument: self)
    }
}
