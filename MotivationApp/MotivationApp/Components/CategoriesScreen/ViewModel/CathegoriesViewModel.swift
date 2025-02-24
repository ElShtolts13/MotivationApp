//
//  CathegoriesViewModel.swift
//  MotivationApp
//
//  Created by Надежда Капацина on 24.02.2025.
//

import Foundation

class CathegoriesViewModel {
    
    // Все доступные категории
    let allCategories = [
        "age", "alone", "amazing", "anger",
        "architecture", "art", "attitude", "beauty",
        "best", "birthday"
    ]
    
    // Выбранная категория (nil = все категории)
    private(set) var selectedCathegory: String?
    
    // Обработка выбора категории
    
    func selectedCathegory(at index: Int) {
        if index == 0 {
            selectedCathegory = nil
        }
        else {
            selectedCathegory = allCategories[index - 1]
        }
    }
    // Получение названия категории для ячейки
    
    func cathegoryName(for index: Int) -> String {
        if index == 0 {
            return "All Cathegories"
        }
        return allCategories[index - 1].capitalized
    }
    
    // Проверка, выбрана ли категория
    
    func isCathegorySelected(at index: Int) -> Bool {
        if index == 0 {
            selectedCathegory == nil
        }
        else {
            selectedCathegory == allCategories[index - 1]
        }
    }
}
