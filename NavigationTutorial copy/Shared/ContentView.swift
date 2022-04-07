//
//  ContentView.swift
//  Shared
//
//  Created by iMan on 3/31/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var carStore : CarStore = CarStore(cars: carData)
    var body: some View {
//        List {
//            ForEach (carStore.cars) { car in
////                ExtractedView()
//                ListCell(car: car)
//            }
//        }
//        NavigationView {
//            List {
//                ForEach (carStore.cars) { car in
//                    ListCell(car: car)
//                }
//            }
//        }
        NavigationView {
            List {
                ForEach (carStore.cars) { car in
                    ListCell(car: car)
                }
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
            .navigationBarTitle(Text("EV Cars"))
            .navigationBarItems(leading: NavigationLink(destination: AddNewCar(carStore: self.carStore)) {
                Text("Add")
                    .foregroundColor(.blue)
            }, trailing: EditButton())
        }
    }
    
//    func addNewCar() {
//        let newCar = Car(id: UUID().uuidString, name: name, description: description, isHybrid: isHybrid, imageName: "tesla_model_3" )
//        carStore.cars.append(newCar)
//    }
    
    func deleteItems(at offsets: IndexSet) {
        carStore.cars.remove(atOffsets: offsets)
    }
    
    func moveItems(from source: IndexSet, to destination: Int) {
        carStore.cars.move(fromOffsets: source, toOffset: destination)
    }
}

struct ListCell: View {
    var car: Car
    var body: some View {
//        HStack {
//            Image(car.imageName)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 100, height: 60)
//            Text(car.name)
//        }
        NavigationLink(destination: CarDetail(selectedCar: car)) {
            HStack {
                Image(car.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 60)
                Text(car.name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct ExtractedView: View {
//    var body: some View {
//        HStack {
//            Image(car.imageName)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 100, height: 60)
//            Text(car.name)
//        }
//    }
//}


