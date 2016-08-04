//
//  SearchViewController.swift
//  SearchController
//
//  Created by Pavan Kataria on 04/08/2016.
//  Copyright © 2016 Pavan Kataria. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    //MARK: - Properties
    let viewModel: SearchViewModel
    
    //MARK: - Lifecycle
    init(viewModel: SearchViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bindToViewModel()
    }
    
    func bindToViewModel(){
        
    }

}