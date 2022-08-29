//
//  PersonApi.swift
//  StarTrivia
//
//  Created by Atif Amin on 25/08/2022.
//

import Foundation
class PersonApi{
    
    func getRandomPersonUrlSession(id : Int,completion : @escaping PersonResponseCompletion){
        
        guard let url =  URL(string: "\(Person_Url)\(id)") else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard error == nil else {
                debugPrint(error.debugDescription)
                completion(nil)
                return
            }
            
            guard let data = data else {return}
            do {
                let json = try JSONSerialization.jsonObject(with: data,options: [])
                guard let json = json as? [String: Any] else {return}
                let person = self.parsePersonManual(json: json)
                DispatchQueue.main.async {
                    completion(person)
                }
                
            }catch{
                debugPrint(error.localizedDescription)
            }
        
        }
        task.resume()
    }
    
    private func parsePersonManual(json : [String:Any]) -> Person {
        let name = json["name"] as? String ?? ""
        let height = json["height"] as? String ?? ""
        let mass = json["mass"] as? String ?? ""
        let hairs = json["hair_color"] as? String ?? ""
        let birthYear = json["birth_year"] as? String ?? ""
        let gender = json["gender"] as? String ?? ""
        let homeWorldUrl = json["homewolrd"] as? String ?? ""
        let filmsUrls = json["films"] as? [String] ?? [String]()
        let vehicleUrls = json["vehicles"] as? [String] ?? [String]()
        let starShipUrls = json["starships"] as? [String] ?? [String]()
        return Person(name: name, height: height, mass: mass, hair: hairs, birthYear: birthYear, gender: gender, homeWorldUrl: homeWorldUrl, filmsUrls: filmsUrls, vehicleUrls: vehicleUrls, starshipUrls: starShipUrls)
        }
}
