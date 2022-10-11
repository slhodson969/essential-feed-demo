//
//  ListViewController.swift
//  EssentialFeediOS
//
//  Created by Scott Hodson on 11/10/2022.
//

import UIKit
import EssentialFeed

public final class ListViewController: UITableViewController, ResourceLoadingView, ResourceErrorView {
    private(set) public var errorView = ErrorView()
    
    private lazy var dataSource: UITableViewDiffableDataSource<Int, CellController> = {
        .init(tableView: tableView) { (tableView, index, controller) in
            controller.dataSource.tableView(tableView, cellForRowAt: index)
        }
    }()
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        configureTableView()
    }
    
    private func configureTableView() {
        tableView.tableHeaderView = errorView.makeContainer()
    }
    
    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        tableView.sizeTableHeaderToFit()
    }
    
    public func display(_ sections: [CellController]...) {
        
    }
    
    public func display(_ viewModel: ResourceLoadingViewModel) {
        refreshControl?.update(isRefreshing: viewModel.isLoading)
    }
    
    public func display(_ viewModel: ResourceErrorViewModel) {
        errorView.message = viewModel.message
    }
}
