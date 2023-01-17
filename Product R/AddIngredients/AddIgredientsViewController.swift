//
//  AddIgredientsViewController.swift
//  Product R
//
//  Created by user220270 on 1/17/23.
//

import Foundation
import UIKit

class AddIngredientsViewController:UIViewController{
    
    
    
    static let shared = AddIngredientsViewController()
    
    //var delegate:addIngredientsVCDelegate?
    
    lazy var ingredientTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.text = "milho"
        textField.textColor = .systemCyan
        return textField
    }()
    
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        view.backgroundColor =  UIColor(red: 110/255, green: 110/255, blue: 110/255, alpha: 1)
        view.addSubview(ingredientTextField)
        setupConstraints()
       
        AddIngredientsViewModel.shared.saveUserIngredients(item: ingredientTextField.text)
        
        
    }
   
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            ingredientTextField.topAnchor.constraint(equalTo: view.topAnchor,constant: 65),
            ingredientTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 15),
            ingredientTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -15),
           
            
        ])
    }
}
