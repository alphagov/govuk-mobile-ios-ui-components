import UIComponents
import SwiftUI

protocol HostableView: View {
    associatedtype ViewModel
    init(viewModel: ViewModel)
}

extension SwiftUIComponentsScreen: HostableView { }

final class HostingViewController<HostedView: HostableView>: UIViewController {
    let viewModel: HostedView.ViewModel
    let hideNavbar: Bool?

    init(viewModel: HostedView.ViewModel, showNavbar: Bool? = nil) {
        self.viewModel = viewModel
        self.hideNavbar = showNavbar

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let hostedView = HostedView(viewModel: viewModel)
        let controller = UIHostingController(rootView: hostedView)
        addChild(controller)
        controller.view.translatesAutoresizingMaskIntoConstraints = false
        setNavBar(hideNavbar ?? false, animated: false)
        view.addSubview(controller.view)
        controller.didMove(toParent: self)

        NSLayoutConstraint.activate([
            controller.view.widthAnchor.constraint(equalTo: view.widthAnchor),
            controller.view.heightAnchor.constraint(equalTo: view.heightAnchor),
            controller.view.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            controller.view.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    private func setNavBar(_ isHidden: Bool, animated: Bool) {
        navigationController?.setNavigationBarHidden(isHidden, animated: animated)
    }
}
