//
//  Iconfont.swift
//  AKSwifty
//
//  Created by wangcong on 28/03/2017.
//  Copyright © 2017 ApterKing. All rights reserved.
//

import Foundation

public enum Iconfont: String {
    case 返回 = "\u{e604}"
    case 速 = "\u{e618}"
    case 设置 = "\u{e665}"
    case 分享 = "\u{e619}"
    case 分享微博 = "\u{e610}"
    case 分享微信好友 = "\u{e611}"
    case 分享微信朋友圈 = "\u{e614}"
    case 分享QQ = "\u{e617}"
    case 跑步608 = "\u{e9cc}"
    case 距离 = "\u{e60c}"
    case kg = "\u{e61b}"
    case 设置_nav = "\u{e632}"
    case 资料编辑_nav = "\u{e726}"
    case 行驶总里程 = "\u{e660}"
    case tip = "\u{e6d4}"
    case 统计 = "\u{e679}"
    case 卫星定位 = "\u{e699}"
    case cxm_icon_KM = "\u{e669}"
    case 地图 = "\u{e712}"
    case 返回_关闭 = "\u{e789}"
    case 速1 = "\u{e682}"
    case GPS = "\u{e631}"
    case fitness_kg = "\u{e653}"
    case 运动次数 = "\u{e62d}"
    case 里程 = "\u{e6eb}"
    case 运动 = "\u{e600}"
    case gps = "\u{ee6b9}"
    case 时长 = "\u{e648}"
    case 次 = "\u{e629}"
    
    // MARK: 耐力
    case 顶尖 = "\u{e622}"
    case 非常优秀 = "\u{e6bf}"
    case 优秀 = "\u{e675}"
    case 良好 = "\u{e620}"
    case 一般 = "\u{e623}"
    case 差 = "\u{e621}"
    
    case 卡路里 = "\u{e61f}"
    
    // MARK: 天气
    case 晴多云_白天 = "\u{e601}"
    case 晴天_白天 = "\u{e602}"
    case 晴转多云_昼 = "\u{e603}"
    case 晴天_昼 = "\u{e605}"
    case 多云 = "\u{e606}"
    case 小雨 = "\u{e607}"
    case 中雨 = "\u{e608}"
    case 大雨 = "\u{e609}"
    case 暴雨 = "\u{e60a}"
    case 雷阵雨 = "\u{e60b}"
    case 小雪 = "\u{e60d}"
    case 大雪 = "\u{e60e}"
    case 中雪 = "\u{e60f}"
    case 暴雪 = "\u{e612}"
    case 雨夹雪 = "\u{e613}"
    case 冰雹 = "\u{e615}"
    case 雾 = "\u{e616}"
    case 雾霾 = "\u{e61a}"
    case 大风 = "\u{e61c}"
    case 扬沙 = "\u{e61d}"
    case PM_2_5 = "\u{e624}"
    
    // MARK: 数字
    case langdon0 = "\u{e625}"
    case langdon1 = "\u{e626}"
    case langdon2 = "\u{e627}"
    case langdon3 = "\u{e628}"
    case langdon4 = "\u{e62a}"
    case langdon5 = "\u{e62b}"
    case langdon6 = "\u{e62c}"
    case langdon7 = "\u{e62e}"
    case langdon8 = "\u{e62f}"
    case langdon9 = "\u{e630}"
    case langdon_point = "\u{e633}"
}

// MARK: 数字处理
public extension Iconfont {
    
    public static func format(number: Double) -> String {
        var unicodeString = ""
        for charater in String(number).characters {
            switch charater {
            case "0":
                unicodeString.append(Iconfont.langdon0.rawValue)
            case "1":
                unicodeString.append(Iconfont.langdon1.rawValue)
            case "2":
                unicodeString.append(Iconfont.langdon2.rawValue)
            case "3":
                unicodeString.append(Iconfont.langdon3.rawValue)
            case "4":
                unicodeString.append(Iconfont.langdon4.rawValue)
            case "5":
                unicodeString.append(Iconfont.langdon5.rawValue)
            case "6":
                unicodeString.append(Iconfont.langdon6.rawValue)
            case "7":
                unicodeString.append(Iconfont.langdon7.rawValue)
            case "8":
                unicodeString.append(Iconfont.langdon8.rawValue)
            case "9":
                unicodeString.append(Iconfont.langdon9.rawValue)
            case ".":
                unicodeString.append(Iconfont.langdon_point.rawValue)
            default:
                unicodeString.append(charater)
            }
        }
        return unicodeString
    }
}
