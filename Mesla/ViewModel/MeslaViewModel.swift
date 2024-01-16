//
//  MeslaViewModel.swift
//  Mesla
//
//  Created by Marvis Ighedosa on 30/11/2023.
//

import Foundation

class TeslaViewModel: ObservableObject {
    @Published var tesla:[TeslaModel] = []
    
    init(){
        carModels()
    }
    
    func carModels() {
        let models = [
            TeslaModel(carName: "Model Y slim", carPrice: "$79,990", carImage: "https://cdn.motor1.com/images/mgl/VPBlK/s1/1x1/tesla-model-s.webp"),
            TeslaModel(carName: "Model Y ", carPrice: "$71,090", carImage: "https://tsportline.com/cdn/shop/articles/black-tesla-model-s-carbon-fiber-front-apron-wm-1_1280x.jpg?v=1525213412"),
            TeslaModel(carName: "Model Y Ultra-Slim ", carPrice: "$71,090", carImage: "https://tsportline.com/cdn/shop/articles/black-tesla-model-s-carbon-fiber-front-apron-wm-1_1280x.jpg?v=1525213412")
        ]
        tesla.append(contentsOf: models)
    }
    
    func deleteItem(){
        
    }
}
