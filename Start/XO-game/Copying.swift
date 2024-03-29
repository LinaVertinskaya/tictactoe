//
//  Copying.swift
//  XO-game
//
//  Created by Лина Вертинская on 17.06.22.
//  Copyright © 2022 plasmon. All rights reserved.
//

import Foundation

protocol Copying {
    init (_ prototype: Self)
}

extension Copying {
    func copy() -> Self {
        return type(of: self).init(self)
    }
}
