//
//  LoggerInvoker.swift
//  XO-game
//
//  Created by Лина Вертинская on 17.06.22.
//  Copyright © 2022 plasmon. All rights reserved.
//

import Foundation

class LoggerInvoker {

    static let shared = LoggerInvoker()

    private let logger = Logger()
    private let batchSize = 10
    private var commands: [LogCommand] = []

    func addLogCommand(_ command: LogCommand) {
        commands.append(command)
        executeCommandsIfNeeded()
        
    }

    private func executeCommandsIfNeeded() {
        guard commands.count >= batchSize else {
            return
        }

        commands.forEach { logger.writeMessageToLog($0.logMessage) }
        commands = []
    }
}
