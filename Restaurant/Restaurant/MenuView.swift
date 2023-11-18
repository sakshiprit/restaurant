//
//  MenuView.swift
//  Restaurant
//
//  Created by Sakshi Patil on 13/11/2023.
//

import SwiftUI

struct MenuView: View {
	
	@State var menuItems: [MenuItem] = [MenuItem]()
	var dataService = DataService()
	
	var body: some View {
		List(menuItems) { item in
			MenuListRow(item: item)
		}
		.listStyle(.plain)
		.onAppear {
			// Call for the data
			menuItems = dataService.getData()
		}
	}
}

#Preview {
    MenuView()
}
