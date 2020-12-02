//
//  LandmarkList.swift
//  landMarks
//
//  Created by kxh on 2020/12/2.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData){ Landmark in
                NavigationLink(destination: LandmarkDetail(landmark: Landmark)){
                    LandmarkRow(landmark: Landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
                   .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
