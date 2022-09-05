//
//  source.swift
//  TruthOrDare
//
//  Created by Kazakov Danil on 05.09.2022.
//

import Foundation

struct Source {
    enum SourceType {
    case word
    case action
    }
    
    private static let trueSource = [
    "Расскажи о себе 5 фактов",
    "Как выглядело твое первое свидание? ",
    "за что тебе до сих пор стыдно?",
    ]
    
    private static let actionSource = [
    "Потанцуй под любимую музыку",
    "Сделай заднее сальто",
    "Отожмись 25 раз",
    ]
    
    static func getInfo(type: SourceType) -> String {
        switch type {
        case .word:
            return trueSource[Int.random(in: 0..<trueSource.count)]
        case .action:
            return actionSource[Int.random(in: 0..<actionSource.count)]
        }
    }
    
    
    
}
