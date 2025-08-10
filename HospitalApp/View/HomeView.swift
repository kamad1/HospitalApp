//
//  HomeView.swift
//  HospitalApp
//
//  Created by Jedi on 07.08.2025.
//


import SwiftUI

struct HomeView: View {
    @State private var favoriteColor = 0
    @State private var textField: String = ""
    
    var vm: HomeViewModel?
    
    var body: some View {
        VStack {
//            NavigationView {
                //        ZStack {
                HStack {
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.secondary)
                        .padding(.leading, 26)
                    TextField("Поиск",
                              text: $textField)
                    
                }.frame(maxWidth: UIScreen.main.bounds.width - 14, maxHeight: 52)
                    .background(.white)
                    .cornerRadius(14)
                    .frame(maxWidth: UIScreen.main.bounds.width - 30)
                    .padding(.bottom, 8)
                
                
                
                
                //        }
                
                Picker("What is your favorite color?", selection: $favoriteColor) {
                    Text("По цене").tag(0)
                    Text("По стажу").tag(1)
                    Text("По рейтингу").tag(2)
                }
                .pickerStyle(.segmented)
                .frame(maxWidth: UIScreen.main.bounds.width - 30)
                .padding(.bottom, 24)
                
                ScrollView {
                    ForEach(vm?.data ?? CellModel.mockData, id: \.self) { item in
                        CardView(card: item)
                    }
                }
                .onAppear {
                    vm?.fetchData()
                    print("11111")
                }
                
                
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
//                .background(Color.gray.opacity(0.5))
            .background(.bgApp)
        }
    }
//}

//#Preview {
//    HomeView(vm: vm)
//}
