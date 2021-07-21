//
//  HomeViewController.swift
//  RoterCoordinator
//
//  Created by Sergey Kharlamov on 21.07.2021.
//

open class BaseCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    let router: Routable
    
    init(router: Routable) {
        self.router = router
    }
    
    open func start(with option: DeepLinkOption?) { }
    open func start(isBanned: Bool?) { }
    
    func addDependency(_ coordinator: Coordinator) {
        guard !childCoordinators.contains(where: { $0 === coordinator })
        else { return }
        childCoordinators.append(coordinator)
    }
    
    func removeDependency(_ coordinator: Coordinator?) {
        guard let indexToRemove = childCoordinators.index(where: { $0 === coordinator })
        else { return }
        childCoordinators.remove(at: indexToRemove)
    }
    
    func removeAllDependencies() {
        childCoordinators.removeAll()
    }
}

