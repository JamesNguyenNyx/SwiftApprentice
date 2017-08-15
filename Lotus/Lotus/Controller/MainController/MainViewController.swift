//
//  MainViewController.swift
//  Lotus
//
//  Created by James Nguyen on 2017/08/15.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController {
    
    @IBOutlet weak var tableView: UITableView?
    fileprivate var mainViewModel = MainViewModel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureTableView()
    }
}


//MARK: Fileprivate extension
fileprivate extension MainViewController {
    
    fileprivate func configureTableView() {
        self.tableView?.delegate = mainViewModel
        self.tableView?.dataSource = mainViewModel
        tableView?.estimatedRowHeight = 100
        tableView?.tableFooterView = UIView()
        tableView?.rowHeight = UITableViewAutomaticDimension
        tableView?.register(MainCell.nib, forCellReuseIdentifier: MainCell.identifier)
    }
}
