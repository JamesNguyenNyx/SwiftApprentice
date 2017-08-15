//
//  DefineString.swift
//  SampleApp
//
//  Created by James Nguyen on 2017/07/28.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit


let kStringRestaurant = "Restaurant"
let kStringDismiss = "Dismiss"
let kTitleLogin = "ログイン"
let kTitleNaviLogin = "アルバム一覧"
let kTitleForgotPassword = "パスワード再設定"
let kTitlePrivacy = "利用規約"
let kTitleAlbum = "ほげほげ結婚式"
let kCreateAlbum = "新規アルバム作成"
let kLibrayImage = "写真を追加"
let kURL = "アルバムの参加"
let kImportImage = "ほげほげ結婚式"

struct AlertVC {
    enum AlertButtonTitle: String {
        case ok = "OK"
        case cancel = "Cancel"
    }
    
    enum AlertTitle: String {
        case error = "Error"
    }
    
    enum AlertMessage: String {
        case authenFail = "Authenticate failed"
    }
}
