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
    private let loadingView: ResourceLoadingView
    private let errorView: ResourceErrorView
    
    public init(loadingView: ResourceLoadingView, errorView: ResourceErrorView) {
        self.loadingView = loadingView
        self.errorView = errorView
    }
    
    public func didStartLoading() {
        errorView.display(.noError)
        loadingView.display(ResourceLoadingViewModel(isLoading: true))
    }
}
