//
//  UserData.swift
//  landMarks
//
//  Created by kxh on 2020/12/2.
//

import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
