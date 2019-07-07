//
//  DMSettings.swift
//  Tweaker
//
//  Created by Lakr Aream on 2019/5/29.
//  Copyright © 2019 Lakr Aream. All rights reserved.
//

// MARK: RAM
// 不要啊啊啊啊啊啊啊

// MARK: DATABASE


class DBMSettings: WCDBSwift.TableCodable {
    
    var fake_UDID: String?
    var real_UDID: String?
    
    var network_timeout: Int?
    var card_radius: Int = 8
    
    var manage_tab_news_repo_is_collapsed = true
    
    enum CodingKeys: String, CodingTableKey { // swiftlint:disable:next nesting
        typealias Root = DBMSettings
        
        // swiftlint:disable:next redundant_string_enum_value
        case fake_UDID = "fake_UDID"
        // swiftlint:disable:next redundant_string_enum_value
        case real_UDID = "real_UDID"
        // swiftlint:disable:next redundant_string_enum_value
        case network_timeout = "network_timeout"
        // swiftlint:disable:next redundant_string_enum_value
        case card_radius = "card_radius"
        // swiftlint:disable:next redundant_string_enum_value
        case manage_tab_news_repo_is_collapsed = "manage_tab_news_repo_is_collapsed"
        
        static let objectRelationalMapping = TableBinding(CodingKeys.self)
        
    }
    
}
