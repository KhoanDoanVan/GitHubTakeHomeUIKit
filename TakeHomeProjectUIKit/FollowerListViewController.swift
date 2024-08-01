//
//  FollowerListViewController.swift
//  TakeHomeProjectUIKit
//
//  Created by Đoàn Văn Khoan on 1/8/24.
//

import UIKit

class FollowerListViewController: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }

}
