//
//  DeviceType.swift
//  SampleApp
//
//  Created by James Nguyen on 2017/07/13.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit


enum DeviceScreenType: String {
    case iPhone5s, iPhone7, iPhone7Plus, other
}

let ScreenSize = UIScreen.main.bounds.size
let ScreenWidth = UIScreen.main.bounds.size.width
let ScreenHeight = UIScreen.main.bounds.size.height
let ScreenRatio: CGFloat = min(ScreenWidth, ScreenHeight)/375.0


