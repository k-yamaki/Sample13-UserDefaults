//
//  Setting.swift
//  Sample13-UserDefaults
//
//  Created by keiji yamaki on 2021/01/22.
//
// 設定情報の読み出し、保存

import Foundation

struct Setting {
    // デフォルト値の設定
    static var string:String = ""
    static var float: Float = 0
    static var int: Int = 0

    // 読み込み：設定情報より構造体に設定
    static func read(){
        Setting.string = UserDefaults.standard.string(forKey: "string")!
        Setting.float = UserDefaults.standard.float(forKey: "float")
        Setting.int = UserDefaults.standard.integer(forKey: "int")
    }
    // 構造体より設定情報に保存
    static func save(){
        UserDefaults.standard.set(Setting.string, forKey: "string")
        UserDefaults.standard.set(Setting.float, forKey: "float")
        UserDefaults.standard.set(Setting.int, forKey: "int")
    }
}
