//
//  UITableView+Ext.swift
//  GitHub Followers
//
//  Created by Michael Doctor on 2021-06-12.
//

import UIKit

extension UITableView {
    
    // remove empty cells
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
    
    func reloadDataOnMainThread(){ DispatchQueue.main.async { self.reloadData() }}
}
