//
//  LoadResourcePresenter.swift
//  EssentialFeed
//
//  Created by Scott Hodson on 11/10/2022.
//

import Foundation

public protocol ResourceView {
    associatedtype ResourceViewModel
    
    func display(_ viewModel: ResourceViewModel)
}

public final class LoadResourcePresenter<Resource, View: ResourceView> {
    public init() {}
}
