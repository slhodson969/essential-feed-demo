//
//  CellController.swift
//  EssentialFeediOS
//
//  Created by Scott Hodson on 11/10/2022.
//

import UIKit

public struct CellController {
    let id: AnyHashable
    let dataSource: UITableViewDataSource
}

extension CellController: Equatable {
    public static func == (lhs: CellController, rhs: CellController) -> Bool {
        lhs.id == rhs.id
    }
}

extension CellController: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
