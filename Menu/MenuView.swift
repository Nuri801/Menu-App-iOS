//
//  ContentView.swift
//  Menu
//
//  Created by 유티이씨 on 2023/05/03.
//

import SwiftUI

struct MenuView: View {

    @State var menuItems: [MenuItem] = []
    var dataService = DataService()

    var body: some View {
        List(menuItems) { item in

            HStack {
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
                    .cornerRadius(10)

                Text(item.name)
                    .bold()

                Spacer()

                Text("$" + item.price)
            }
            .listRowSeparator(.hidden)
            .listRowBackground(
                Color(.brown)
                    .opacity(0.1)
            )
        }
        .listStyle(.plain)
        .onAppear {
            // Call for the data
            menuItems = dataService.getData()
        }
    }
}

//struct listItem: Identifiable {
//    var id: UUID = UUID()
//    var word:String
//}
//
//struct MenuView: View {
//
//    var randomWords: [String] = ["Apple", "Peach", "Grape", "Banana", "Pineapple"]
//    @State var newList: [listItem] = [];
//
//    func pickWord() {
//        var word: String = randomWords[Int.random(in: 0...4)]
//        newList.append(listItem(word: word))
//    }
//
//    var body: some View {
//        List(newList) {item in
//            Text(item.word)
//        }
//        Spacer()
//        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
//            pickWord()
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
