//
//  CarDetail.swift
//  NavigationTutorial
//
//  Created by iMan on 4/4/22.
//

import SwiftUI

import SwiftUI
struct CarDetail: View {
    let selectedCar: Car
    var body: some View {
        Form {
            Section(header: Text("Car Details")) {
                Image(selectedCar.imageName)
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Text(selectedCar.name)
                    .font(.headline)
                Text(selectedCar.description)
                    .font(.body)
                HStack {
                    Text("Hybrid").font(.headline)
                    Spacer()
                    Image(systemName: selectedCar.isHybrid ?
                    "checkmark.circle" : "xmark.circle" )
                }
            }
        }
    }
}
struct CarDetail_Previews: PreviewProvider {
    static var previews: some View {
        CarDetail(selectedCar: carData[0])
    }
}

//struct CarDetail: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct CarDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        CarDetail()
//    }
//}
