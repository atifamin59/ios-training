//
//  CategoryCell.swift
//  GoodEatens
//
//  Created by Atif Amin on 01/08/2022.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImg: UIImageView!
    @IBOutlet weak var categoryTextx: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        categoryImg.layer.cornerRadius = 10
    }
    
    func configureCell(category : FoodCategory){
        categoryImg.image = UIImage(named: category.imageName)
        categoryTextx.text = category.title
    }

}
