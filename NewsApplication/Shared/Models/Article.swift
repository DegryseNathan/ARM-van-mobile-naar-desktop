//
//  Article.swift
//  NewsApplication-iOS
//
//  Created by Nathan Degryse on 11/05/2022.
//

import Foundation

enum Subject: String {
    case all = "All"
    case sport = "Sport"
    case internationaal = "Internationaal"
    case regionaal = "Regionaal"
    case politiek = "Politiek"
}

extension Subject {
    
    var title: String {
        switch self {
            case .all:
                return "All"
            case .sport:
                return "Sport"
            case .internationaal:
                return "Internationaal"
            case .regionaal:
                return "Regionaal"
            case .politiek:
                return "Politiek"
        }
    }
    
}

struct Article: Identifiable{
    let id = UUID()
    let name: String
    let photo: String
    let description: String
    let rating: Int?
    let subject: Subject
}

extension Article {
    
    static func all() -> [Article] {
        return [Article(name: "Formule 1 sprintraces", photo: "verstappen", description: "Formula One wil het aantal sprintraces volgend seizoen van drie naar zes opkrikken. Dat voorstel werd tijdens een bijeenkomst van de Formula 1 Commission in Londen unaniem goedgekeurd door het management en de tien renstallen van de koningsklasse,  maar er is een kink in de kabel. De Internationale Automobielfederatie FIA stelt voorlopig zijn veto.", rating: 4, subject: .sport),
                Article(name: "Russisch trollenleger", photo: "russen", description: "Rusland heeft een oude fabriek in de stad Sint-Petersburg ingericht als een zogenaamde ‘trollenfabriek’, van waaruit desinformatie wordt verspreid en critici van het Kremlin, onder wie wereldleiders, worden lastiggevallen. Dat beweert het Britse ministerie van Buitenlandse Zaken op basis van onderzoek dat gefinancierd is door de overheid.", rating: 5, subject: .internationaal),
                Article(name: "Roeselare shoppingstad", photo: "kris", description: "De voorbije 12 maanden mocht het Roeselaarse stadscentrum ondanks corona 42 nieuwe winkels en horecazaken, waarvan 11 pop-ups, verwelkomen. Daarnaast is het leegstandscijfer met 11,8% lager dan in de gemiddelde centrumstad. “Maar het is belangrijk om goed naar het bord te blijven kijken”, aldus burgemeester Kris Declercq (CD&V). Om ook het komende jaar dé winkelstad te zijn en blijven, komt het stadsbestuur op de proppen met 10 actiepunten die ze de komende 12 maanden zullen uitrollen.", rating: 5, subject: .regionaal),
                Article(name: "Rijkentaks PS", photo: "bouchez", description: "Als het van de MR afhangt, moeten de lasten op arbeid omlaag om de werkzaamheidsgraad op te krikken tot 80 procent in 2030. Dat heeft de voorzitter van de partij, Georges-Louis Bouchez, gezegd. Bouchez verzet zich tegen hogere lasten op de grote vermogens. PS-voorzitter Paul Magnette haalde in zijn 1 mei-toespraak dan weer fel uit naar MR en noemde het een van de “hardste en meest agressieve” rechtse partijen in Europa. Magnette herhaalde daarentegen zijn pleidooi voor een rijkentaks. ", rating: 4, subject: .politiek)
        ]
    }
    
}
