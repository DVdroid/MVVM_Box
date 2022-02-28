//
//  UserCoordinator.swift
//  MVVM+Coordinator
//
//  Created by VA on 26/02/22.
//

import Foundation
import UIKit

class UserCoordinator: UIViewController {
    
    var userListViewController: UserListViewController!
    var userDetailViewController: UserDetailViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
        
        add(userListViewController)
    }
    
    private func configureViewControllers() {
        userListViewController = UserListViewController()
        userListViewController.delegate = self
        
        userDetailViewController = UserDetailViewController()
    }
}

extension UserCoordinator: UserListViewControllerProtocol {
    
    func didSelectRow(at indexPath: IndexPath) {
        show(userDetailViewController, sender: self)
    }
}
