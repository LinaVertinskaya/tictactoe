//
//  LogAction.swift
//  XO-game
//
//  Created by Лина Вертинская on 17.06.22.
//  Copyright © 2022 plasmon. All rights reserved.
//

import Foundation

enum LogAction {
    case playerInput(player: Player, position: GameboardPosition)
    case gameFinished(winner: Player?)
    case restartGame
}

func log(_ action: LogAction) {
    let command = LogCommand(action: action)
    LoggerInvoker.shared.addLogCommand(command)
}
