import UIKit

class SceneDelegate: UIResponder,
                     UIWindowSceneDelegate {
    var window: UIWindow?

    func sceneWillEnterForeground(_ scene: UIScene) {
        postNotification()
    }

    func postNotification() {
        let notificationCenter = NotificationCenter.default
        notificationCenter.post(Notification(name: Notification.Name( "buttonShapesEnabled"), object: nil))
    }
}
