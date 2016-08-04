//
//  Navigation.swift
//  NonReactiveMVVM
//
//  Created by Ian Keen on 20/04/2016.
//  Copyright © 2016 Mustard. All rights reserved.
//

import UIKit

class Navigation {
    //MARK: - Private
    private let navigationController: UINavigationController
    private let application: Application
    
    //MARK: - Lifecycle
    init(window: UIWindow, navigationController: UINavigationController, application: Application) {
        self.application = application
        self.navigationController = navigationController
        window.rootViewController = self.navigationController
        window.makeKeyAndVisible()
    }
    
    //MARK: - Public
    func start() {
        self.showFeedView()
    }
    
    //MARK: - Private
    private func showFeedView() {
        let viewModel = FeedViewModel(
            api: self.application.api
        )
        
        let instance = FeedViewController(viewModel: viewModel)
        
        instance.didPressSearchBar = { [weak self] in
            self?.showSearchView()
        }
        
        self.navigationController.pushViewController(instance, animated: false)
    }
    
    private func showSearchView(){
        print("tapped on search view")
//        let viewModel = SearchViewModel(/*current search configuration*/)
//        
//        let instance = SearchViewController(viewModel: viewModel)
//        
//        
//        self.navigationController.pushViewController(instance, animated: false)

    }
}