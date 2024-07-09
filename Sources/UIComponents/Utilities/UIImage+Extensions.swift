import UIKit

extension UIImage {
    convenience init?(_ color: UIColor) {
        let minimumSize: CGSize = CGSize(width: 1.0, height: 1.0)
        let renderer = UIGraphicsImageRenderer(size: minimumSize)

        let image = renderer.image { context in
            color.setFill()
            context.fill(CGRect(origin: .zero, size: minimumSize))
        }

        if let image = image.cgImage {
            self.init(cgImage: image)
        } else {
            return nil
        }
    }
}
