//
//  FeedViewController.swift
//  SearchController
//
//  Created by Pavan Kataria on 04/08/2016.
//  Copyright © 2016 Pavan Kataria. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    //MARK: - Properties
    @IBOutlet var searchTextField: UITextField!
    private let viewModel: FeedViewModel
    
    //MARK: - Events
    var didPressSearchBar: (()-> Void)? = nil
    
    //MARK: - Lifecycle
    init(viewModel: FeedViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupSearchBar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupSearchBar(){
        self.searchTextField.delegate = self
    }
}
extension FeedViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        self.didPressSearchBar?()
        return false
    }
}
