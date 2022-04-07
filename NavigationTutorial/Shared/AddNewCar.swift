//
//  AddNewCar.swift
//  NavigationTutorial
//
//  Created by iMan on 4/4/22.
//

import SwiftUI

struct AddNewCar: View {
    @StateObject var carStore : CarStore
    @State private var isHybrid = false
    @State private var name: String = ""
    @State private var description: String = ""
    var body: some View {
//        Text ("Hello word!")
        Form {
            Section(header: Text("Car Details")) {
                Image(systemName: "car.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                DataInput(title: "Model", userInput: $name)
                DataInput(title: "Description", userInput: $description)
                Toggle(isOn: $isHybrid) {
                    Text("Hybrid").font(.headline)
                }
                .padding()
            }
            
//            Button(action: AddNewCar) {
//                Text("Add Car")
//            }
            Button(action: addNewCar) {
                Text("Add Car")
            }
        }
    }
    func addNewCar() {
        let newCar = Car(id: UUID().uuidString, name: name, description: description, isHybrid: isHybrid, imageName: "tesla_model_3" )
        carStore.cars.append(newCar)
    }
}

//func addNewCar() {
//    let newCar = Car(id: UUID().uuidString,
//                     name: name, description: description,
//                     isHybrid: isHybrid, imageName: "tesla_model_3" )
//    carStore.cars.append(newCar)
//}

struct DataInput: View {
    var title: String
    @Binding var userInput: String
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            Text(title)
                .font(.headline)
            TextField("Enter \(title)", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }
}
    
struct AddNewCar_Previews: PreviewProvider {
    static var previews: some View {
        AddNewCar(carStore: CarStore(cars: carData))
    }
}

//import SwiftUI
//
//struct AddNewCar: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct AddNewCar_Previews: PreviewProvider {
//    static var previews: some View {
//        AddNewCar()
//    }
//}
