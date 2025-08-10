import Foundation
import UIKit

struct CellModel: Hashable, Decodable, Encodable {
    var id:  String
    var first_name: String
    var patronymic: String
    var last_name: String
    var seniority: Int
    var text_chat_price: Int
    var video_chat_price: Int
    var home_price: Int
    var hospital_price: Int
    var avatar: String
    var higher_education: [HigherEducation]?
    var scientific_degree_label: String

    var isFree: Bool
    var imgStart = ["Stars-2", "Stars"]
    
    
    static var mockData: [CellModel] = [
        .init(id: "1",
              first_name: "Иван",
              patronymic: "Ivanovich",
              last_name: "Bdfy",
              seniority: 1,
              text_chat_price: 10,
              video_chat_price: 100,
              home_price: 1000,
              hospital_price: 10000,
              avatar: "person.circle",
              scientific_degree_label: "Pediatr first category",
              isFree: true),
        .init(id: "1",
              first_name: "Иван",
              patronymic: "Ivanovich",
              last_name: "Bdfy",
              seniority: 2,
              text_chat_price: 20,
              video_chat_price: 200,
              home_price: 2000,
              hospital_price: 20000,
              avatar: "person.circle",
              scientific_degree_label: "Pediatr first category",
              isFree: false),
        .init(id: "1",
              first_name: "Иван",
              patronymic: "Ivanovich",
              last_name: "Bdfy",
              seniority: 3,
              text_chat_price: 30,
              video_chat_price: 300,
              home_price: 3000,
              hospital_price: 30000,
              avatar: "person.circle",
              scientific_degree_label: "Pediatr first category",
              isFree: true),
        .init(id: "1",
              first_name: "Иван",
              patronymic: "Ivanovich",
              last_name: "Bdfy",
              seniority: 4,
              text_chat_price: 40,
              video_chat_price: 400,
              home_price: 4000,
              hospital_price: 40000,
              avatar: "person.circle",
              scientific_degree_label: "Pediatr first category",
              isFree: false)
    ]
    
}

struct HigherEducation: Hashable, Decodable, Encodable {
    var id: Int
    var university: String
}

