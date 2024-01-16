//
//  carDetailsscreen.swift
//  tesla
//
//  Created by Marvis Ighedosa on 11/10/2023.
//

import SwiftUI

struct carDetailsscreen: View {
    @EnvironmentObject var teslaModel:TeslaViewModel
    let carImage:String
    let carPrice:String
    let carName:String
    
    
    var body: some View {
        VStack{
            ScrollView{
                VStack(spacing: 24){
                    HStack {
                        AsyncImage(url: URL(string: carImage)){
                            image in image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 350, height: 350)
                                .cornerRadius(8)
                                .aspectRatio(contentMode: .fit)
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    HStack{
                        Text(carName)
                            .font(.title2)
                        Spacer()
                        Text(carPrice)
                            .foregroundColor(.gray)
                    }
                    VStack(spacing: 24){
                        Text("Model S Plaid has the quickest acceleration of any vehicle in production. Updated battery architecture for all Model S trims enables back-to-back track runs without performance degradation. Chat with a Tesla Advisor to learn more about Model S or schedule a demo drive today.")
                        Text("Plaid has the quickest acceleration of any vehicle in production.")
                        Text("Updated battery architecture for all Model S trims enables back-to-back track runs without performance degradation. Chat with a Tesla Advisor to learn more about Model S or schedule a demo drive today.")
                    }.foregroundColor(.gray)
                    HStack{
                            Link(destination: URL(string: "https://twitter.com/marvisdosa")! ) {
                                HStack {
                                    Text("Buy Now")
                                        .bold()
                                        .foregroundColor(.black)
                                    
                                }
                                .padding(.vertical, 8)
                                .frame(width: 370)
                                .background(.red)
                                .cornerRadius(16)
                                
                            }
                        }
                    }
                }
            }
        .padding(.horizontal,16)
        .navigationTitle("Tesla")
        }
    }
    
    struct carDetailsscreen_Previews: PreviewProvider {
        static var previews: some View {
            carDetailsscreen(carImage: "", carPrice: "", carName: "")
        }
    }

