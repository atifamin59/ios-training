//
//  Constants.swift
//  StarTrivia
//
//  Created by Atif Amin on 25/08/2022.
//

import UIKit

let BLACK_BG = UIColor.black.withAlphaComponent(0.6).cgColor
let Base_Url = "https://swapi.dev/api/"
let Person_Url = Base_Url + "people/"

typealias PersonResponseCompletion = (Person?) -> Void
