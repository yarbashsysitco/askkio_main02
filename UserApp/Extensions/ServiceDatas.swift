//
//  ServiceDatas.swift
//  UserApp
//
//  Created by jizan k on 18/06/24.
//

import SwiftUI

struct ServiceDatas: Identifiable {
    var id = UUID()
    var imageName: String
    var category: String
}
 var TaxiList = [ServiceDatas(imageName: "ic_postTask", category: "Taxi"),
                 ServiceDatas(imageName: "ic_postTask", category: "Hourly Driver")
                   
 ]
 var DeliveryList = [ServiceDatas(imageName: "ic_postTask", category: "Parcel Delivery"),
                     ServiceDatas(imageName: "ic_postTask", category: "Errand Helper"),
                     ServiceDatas(imageName: "ic_postTask", category: "Delivery Runner")
                   
 ]
var ProServiceList = [ServiceDatas(imageName: "ic_postTask", category: "Car Wash"),
                      ServiceDatas(imageName: "ic_postTask", category: "Hair & MUA Service"),
                      ServiceDatas(imageName: "ic_postTask", category: "Massage, Wax & Facials"),
                      ServiceDatas(imageName: "ic_postTask", category: "Roadside Assistance"),
                      ServiceDatas(imageName: "ic_postTask", category: "Home Cleaning"),
                      ServiceDatas(imageName: "ic_postTask", category: "Sanitization Services"),
                      ServiceDatas(imageName: "ic_postTask", category: "More")
                   
 ]
var VideoConsultingList = [ServiceDatas(imageName: "ic_postTask", category: "Tuitors"),
                           ServiceDatas(imageName: "ic_postTask", category: "Fitness Coach"),
                           ServiceDatas(imageName: "ic_postTask", category: "Consultants"),
                           ServiceDatas(imageName: "ic_postTask", category: "Astrology Services")
                   
 ]
var PostTaskList = [ServiceDatas(imageName: "ic_postTask", category: "Carpenter"),
                    ServiceDatas(imageName: "ic_postTask", category: "Electrician"),
                    ServiceDatas(imageName: "ic_postTask", category: "Plumber"),
                    ServiceDatas(imageName: "ic_postTask", category: "Painters"),
                    ServiceDatas(imageName: "ic_postTask", category: "Handyman"),
                    ServiceDatas(imageName: "ic_postTask", category: "More")
                   
 ]
var MoreOptionsList = [ServiceDatas(imageName: "ic_food", category: "Home Food"),
                       ServiceDatas(imageName: "ic_food", category: "Care Packages"),
                       ServiceDatas(imageName: "ic_food", category: "Documents"),
                       ServiceDatas(imageName: "ic_food", category: "Clothes")
 ]
