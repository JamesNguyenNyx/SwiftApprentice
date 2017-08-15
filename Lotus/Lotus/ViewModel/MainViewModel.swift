//
//  MainViewModel.swift
//  Lotus
//
//  Created by James Nguyen on 2017/08/15.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit


class MainViewModel: NSObject {
    
    override init() {
        super.init()
    }
}


//MARK: UITableViewDataSource
extension MainViewModel: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: MainCell.identifier, for: indexPath) as? MainCell {
            return cell
        }
        return UITableViewCell()
    }
}


//MARK: UITableViewDelegate
extension MainViewModel: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
