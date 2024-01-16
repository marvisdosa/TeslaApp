//
//  HomeView.swift
//  Mesla
//
//  Created by Marvis Ighedosa on 30/11/2023.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var tesla:TeslaViewModel
    var body: some View {
            VStack{
                CustomNav()
                List {
                    ForEach(tesla.tesla , id: \.self) { x in
                        NavigationLink {
                            carDetailsscreen(carImage: x.carImage, carPrice: x.carPrice, carName: x.carName)
                        } label: {
                            ListView(name: x.carName, price: x.carPrice, image: x.carImage)
                        }
                    }
                }
            }
            .ignoresSafeArea()
            .padding(.horizontal, 24)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
