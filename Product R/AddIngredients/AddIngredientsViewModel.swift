//
//  AddIngredientsViewModel.swift
//  Product R
//
//  Created by user220270 on 1/17/23.
//

import Foundation

class AddIngredientsViewModel{
    
    static var shared = AddIngredientsViewModel()
    func saveUserIngredients(item:String?) {
        if let item{
            
            UserDefaults.standard.set(item, forKey: "NewIngredient")
        }
            print(UserDefaults.standard.value(forKey: "NewIngredient"),"teste de envio de dados")
        }
        
    }
    
    

