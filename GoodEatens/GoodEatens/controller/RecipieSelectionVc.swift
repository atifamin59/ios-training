//
//  RecipieSelectionVc.swift
//  GoodEatens
//
//  Created by Atif Amin on 01/08/2022.
//

import UIKit

class RecipieSelectionVc: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
  
    
    @IBOutlet weak var recipieCollectionView: UICollectionView!
    var selectedCategory : String!
    var recipe : [Recipe]!
    let data = Data()
    override func viewDidLoad() {
        super.viewDidLoad()
        recipieCollectionView.delegate = self
        recipieCollectionView.dataSource = self
        recipe = data.getRecipes(forCategoryTitle: selectedCategory)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipe.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = recipieCollectionView.dequeueReusableCell(withReuseIdentifier: "recipeCell", for: indexPath) as? RecipeCell{
            let recipe = recipe[indexPath.row]
            cell.configureCell(recipe: recipe)
            return cell
        }
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.bounds.width
        let cellDiementsion = (width / 2) - 15
        return CGSize(width: cellDiementsion, height: cellDiementsion)
        
    }


}
