//
//  AppDefine.swift
//  SampleApp
//
//  Created by James Nguyen on 2017/07/13.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit

struct AppDefine {
    
}

//MARK: Shared instance
let kMainQueue          = OperationQueue.main
let kFileManager        = FileManager.default
let kUserDefault        = UserDefaults.standard
let kNotificationCenter = NotificationCenter.default
let kAppDelegate        = UIApplication.shared.delegate as! AppDelegate
let kAuthentication     = "kAuthentication"

//MARK: Global function
func m_string(key: String) -> String {
    return NSLocalizedString(key, tableName: nil, bundle: Bundle.main, value: "", comment: "")
}

func paragraphStyle() -> NSParagraphStyle {
    let style = NSMutableParagraphStyle()
    style.paragraphSpacingBefore = 8 * ScreenRatio
    return style
}

//MARK: Default 
let kDefaultRoundRadius: CGFloat = 2 * ScreenRatio


//MARK: API Define
enum AuthenKey: String {
    case accessToken = "access_token"
    case tokenType = "token_type"
    case expiresIn = "expires_in"
}

class AppUserDefaults {
    class var authentication: Authentication {
        set (newValue) {
            let data = NSKeyedArchiver.archivedData(withRootObject: newValue)
            kUserDefault.setValue(data, forKey: kAuthentication)
            kUserDefault.synchronize()
        }
        
        get {
            if let authenData = kUserDefault.object(forKey: kAuthentication) as? Data {
                if let authentication = NSKeyedUnarchiver.unarchiveObject(with: authenData) as? Authentication {
                    return authentication
                }
            }
            return Authentication()
        }
    }
}
