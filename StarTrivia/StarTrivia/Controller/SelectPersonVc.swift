//
//  ViewController.swift
//  StarTrivia
//
//  Created by Atif Amin on 25/08/2022.
//

import UIKit

class SelectPersonVc: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var massLbl: UILabel!
    @IBOutlet weak var hairLbl: UILabel!
    @IBOutlet weak var birthLbl: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    @IBOutlet weak var movieBtn: UIButton!
    @IBOutlet weak var shipBtn: UIButton!
    @IBOutlet weak var vehicleBtn: UIButton!
    @IBOutlet weak var worldBtn: UIButton!
    
    var personAPi = PersonApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func randomClicked(_ sender: Any) {
        let random = Int.random(in: 1 ... 87)
        personAPi.getRandomPersonAlamoFire(id: random) { [self] (person) in
            if let person = person{
                self.setUpView(person: person)
            }
        }
    }
    
    func setUpView(person : Person){
        nameLbl.text = person.name
        heightLbl.text = person.height
        massLbl.text = person.mass
        hairLbl.text = person.hair
        birthLbl.text = person.birthYear
        genderLbl.text = person.gender
        
        worldBtn.isEnabled = !person.homeWorldUrl.isEmpty
        vehicleBtn.isEnabled = !person.vehicleUrls.isEmpty
        movieBtn.isEnabled = !person.filmsUrls.isEmpty
        shipBtn.isEnabled = !person.starshipUrls.isEmpty
    }
    
    @IBAction func movieClick(_ sender: Any) {
    }
    
    @IBAction func shipClick(_ sender: Any) {
    }
    @IBAction func vehicleClick(_ sender: Any) {
    }
    @IBAction func worldClick(_ sender: Any) {
    }
}

