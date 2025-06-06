//
//  MainTabbedView.swift
//  SideMenu-SwiftUI
//
//  Created by Ibrahim Gedami on 06/06/2025.
//

import SwiftUI

struct MainTabbedView: View {
    
    @State var presentSideMenu = false
    @State var selectedSideMenuTab: SideMenuType = .home
    
    var body: some View {
        ZStack{
            TabView(selection: $selectedSideMenuTab) {
                switch selectedSideMenuTab {
                case .home:
                    HomeView(presentSideMenu: $presentSideMenu)
                case .favorite:
                    FavoriteView(presentSideMenu: $presentSideMenu)
                case .chat:
                    ChatView(presentSideMenu: $presentSideMenu)
                case .profile:
                    ProfileView(presentSideMenu: $presentSideMenu)
                }
            }
            
            SideMenu(isShowing: $presentSideMenu,
                     content: AnyView(
                        SideMenuView(selectedSideMenuTab: $selectedSideMenuTab, presentSideMenu: $presentSideMenu)
                     )
            )
        }
    }
    
}

#Preview {
    MainTabbedView()
}
