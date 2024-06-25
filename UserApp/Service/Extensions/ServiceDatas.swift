//
//  ServiceDatas.swift
//  UserApp
//
//  Created by jizan k on 21/06/24.
//

import Foundation

struct ServiceData: Identifiable {
    let id: UUID
    let image: String
    let name: String
}

let taxiList = [
    ServiceData(id: UUID(), image: "delivery", name: "Taxi"),
    ServiceData(id: UUID(), image: "delivery", name: "Hourly Driver")
]

let deliveryList = [
    ServiceData(id: UUID(), image: "delivery", name: "Parcel Delivery"),
    ServiceData(id: UUID(), image: "delivery", name: "Errand Helper"),
    ServiceData(id: UUID(), image: "delivery", name: "Delivery Runner")
]

let proServiceList = [
    ServiceData(id: UUID(), image: "delivery", name: "Car Wash"),
    ServiceData(id: UUID(), image: "delivery", name: "Hair & MUA Service"),
    ServiceData(id: UUID(), image: "delivery", name: "Massage, Wax & Facials"),
    ServiceData(id: UUID(), image: "delivery", name: "Roadside Assistance"),
    ServiceData(id: UUID(), image: "delivery", name: "Home Cleaning"),
    ServiceData(id: UUID(), image: "delivery", name: "Sanitization Services"),
    ServiceData(id: UUID(), image: "delivery", name: "More")
]

let videoConsultingList = [
    ServiceData(id: UUID(), image: "delivery", name: "Tuitors"),
    ServiceData(id: UUID(), image: "delivery", name: "Fitness Coach"),
    ServiceData(id: UUID(), image: "delivery", name: "Consultants"),
    ServiceData(id: UUID(), image: "delivery", name: "Astrology Services")
]

let postTaskList = [
    ServiceData(id: UUID(), image: "delivery", name: "Carpenter"),
    ServiceData(id: UUID(), image: "delivery", name: "Electrician"),
    ServiceData(id: UUID(), image: "delivery", name: "Plumber"),
    ServiceData(id: UUID(), image: "delivery", name: "Painters"),
    ServiceData(id: UUID(), image: "delivery", name: "Handyman"),
    ServiceData(id: UUID(), image: "delivery", name: "More")
]

let moreOptionsList = [
    ServiceData(id: UUID(), image: "delivery", name: "Home Food"),
    ServiceData(id: UUID(), image: "delivery", name: "Care Packages"),
    ServiceData(id: UUID(), image: "delivery", name: "Documents"),
    ServiceData(id: UUID(), image: "delivery", name: "Clothes"),
    ServiceData(id: UUID(), image: "delivery", name: "Items for Repair")
]
