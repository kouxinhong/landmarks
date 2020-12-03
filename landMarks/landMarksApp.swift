//
//  landMarksApp.swift
//  landMarks
//
//  Created by kxh on 2020/11/4.
//
//
import SwiftUI

@main
struct landMarksApp: App {
    var body: some Scene {
        WindowGroup {
            LandmarkList()
                .environmentObject(UserData())
        }
    }
}
