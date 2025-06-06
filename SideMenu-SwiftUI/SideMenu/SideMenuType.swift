//
//  SideMenuType.swift
//  SideMenu-SwiftUI
//
//  Created by Ibrahim Gedami on 06/06/2025.
//

import SwiftUI

enum SideMenuType: String, CaseIterable, Equatable {
    
    case home
    case favorite
    case chat
    case profile
    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .favorite:
            return "Favorite"
        case .chat:
            return "Chat"
        case .profile:
            return "Profile"
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return "home"
        case .favorite:
            return "favorite"
        case .chat:
            return "chat"
        case .profile:
            return "profile"
        }
    }
    
    static func == (lhs: SideMenuType, rhs: SideMenuType) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
    
}
