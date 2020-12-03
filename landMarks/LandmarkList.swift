//
//  LandmarkList.swift
//  landMarks
//
//  Created by kxh on 2020/12/2.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $userData.showFavoritesOnly, label: {
                    Text("Favorites only")
                })
                ForEach(userData.landmarks){ Landmark in
                    if !self.userData.showFavoritesOnly || Landmark.isFavorite{
                        NavigationLink(destination: LandmarkDetail(landmark: Landmark)){
                            LandmarkRow(landmark: Landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(UserData())
    }
}
