//
//  LandmarkRow.swift
//  landMarks
//
//  Created by kxh on 2020/12/2.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height:50)
            VStack{
                Text(landmark.name)
                Text("description")
            }
            Spacer()
            
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[0])
//        Group{
//            LandmarkRow(landmark: landmarkData[0])
//            LandmarkRow(landmark: landmarkData[1])
//        }
//        .previewLayout(.fixed(width: 300, height: 70))
    }
}
