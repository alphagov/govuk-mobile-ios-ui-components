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

        let viewController = ViewController()
        let navController = UINavigationController(rootViewController: viewController)

        window.rootViewController = viewController

        window.makeKeyAndVisible()
        self.window = window
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        postNotification()
    }

    func postNotification() {
        let notificationCenter = NotificationCenter.default
        notificationCenter.post(Notification(name: Notification.Name( "buttonShapesEnabled"), object: nil))
    }
}
