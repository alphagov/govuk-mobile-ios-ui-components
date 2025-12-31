import UIKit

class SceneDelegate: UIResponder,
                     UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: windowScene)

        guard let window else { return }

        let viewController = TestSelectionViewController()
        let navController = UINavigationController(rootViewController: viewController)

        window.rootViewController = navController

        window.makeKeyAndVisible()
        self.window = window
    }
}
