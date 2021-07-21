//
//  HomeViewController.swift
//  RoterCoordinator
//
//  Created by Sergey Kharlamov on 21.07.2021.
//

final class LoginCoordinator: BaseCoordinator {
    override func start(with option: DeepLinkOption?) {
        showLogin()
    }
    
    private func showLogin() {
        let vc = HomeViewController()
        router.setRootModule(vc, animated: true)
    }
}
