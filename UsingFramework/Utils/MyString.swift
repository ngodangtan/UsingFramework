//
//  MyString.swift
//  UsingFramework
//
//  Created by Ngo Dang tan on 9/12/20.
//  Copyright © 2020 Ngo Dang tan. All rights reserved.
//

import Foundation
public class MyString {
    // MARK: - Convert Currency
    class func convertCurrencyInt(value:Int)->String{
        let fmt = NumberFormatter()
        fmt.numberStyle = NumberFormatter.Style.decimal
        return "\(fmt.string(for: value)!)"
    }
    class func convertCurrencyFloat(value:Float)->String{
        let fmt = NumberFormatter()
        fmt.numberStyle = NumberFormatter.Style.decimal
        return "\(fmt.string(for: value)!)"
    }
    class func convertCurrencyDouble(value:Double)->String{
        let fmt = NumberFormatter()
        fmt.numberStyle = NumberFormatter.Style.decimal
        return "\(fmt.string(for: value)!)"
    }
    // MARK: - Version APP
    class func versionApp() ->String{
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            let appBuild = Bundle.main.infoDictionary?["CFBundleVersion"] as? String
            #if DEBUG
         
            return "\(version).\(appBuild ?? "0")"
            #else
            return "\(version).\(appBuild)"
            #endif
        }else{
            return "Version Error"
        }
    }
}

