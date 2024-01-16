////
////  uiComponent.swift
////  tesla
////
////  Created by Marvis Ighedosa on 11/10/2023.
////
//
//import SwiftUI
//
//struct IntroText: View {
//    var body: some View {
//        HStack{
//            VStack(alignment: .leading){
//                Text("Hi Marvis")
//                    .font(.largeTitle)
//                    .bold()
//                    .multilineTextAlignment(.leading)
//                Text("The Ultimate Tesla informations")
//                    .foregroundColor(.gray)
//                    .font(.callout)
//                    .multilineTextAlignment(.leading)
//            }
//            Spacer()
//        }
//    }
//}
//
//
//
//
//struct ListView: View {
//    var carName:String
//    var carImage:String
//    var carPrice:String
//
//    var body: some View {
//        HStack {
//            VStack(alignment: .leading, spacing: 4){
//                Text(carName)
//                    .font(.title3)
//                    .fontWeight(.medium)
//                Text(carPrice)
//                    .font(.body)
//                    .foregroundColor(.gray)
//            }
//            Spacer()
//            HStack{
//                AsyncImage(url: URL(string: carImage)){
//                    image in image
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 80, height: 80)
//                        .cornerRadius(8)
//                } placeholder: {
//                    ProgressView()
//                }
//            }
//        }
//    }
//}
//
//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListView(carName: "", carImage: "", carPrice: "")
//    }
//}
//
