//
//  GameState.swift
//  XO-game
//
//  Created by Лина Вертинская on 16.06.22.
//  Copyright © 2022 plasmon. All rights reserved.
//

import Foundation

protocol GameState {
    var isCompleted: Bool { get }

    func begin()

    func addMark(at position: GameboardPosition)

}
