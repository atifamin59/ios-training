//
//  RecipeCell.swift
//  GoodEatens
//
//  Created by Atif Amin on 01/08/2022.
//

import UIKit

class RecipeCell: UICollectionViewCell {
    
    @IBOutlet weak var recipeImage: UIImageView!
    
//    override class func awakeFromNib() {
//        super.awakeFromNib()
//        recipeImage.layer.cornerRadius = 10
//    }
    
    func configureCell(recipe : Recipe){
        recipeImage.image = UIImage(named: recipe.imageName)
    }
}
