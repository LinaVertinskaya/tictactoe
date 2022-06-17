//
//  LogCommand.swift
//  XO-game
//
//  Created by Лина Вертинская on 17.06.22.
//  Copyright © 2022 plasmon. All rights reserved.
//

import Foundation

class LogCommand {
    let action: LogAction

    var logMessage: String {
        switch action {
        case .playerInput(let player, let position):
            return "\(player) placed mark at \(position)"
        case .gameFinished(let winner):
            if let winner = winner {
                return "\(winner) win game"
            } else {
                return "game finished with no winner"
            }
        case .restartGame:
            return "game restarted"
        }
    }
    
    init(action: LogAction) {
        self.action = action
    }
}
