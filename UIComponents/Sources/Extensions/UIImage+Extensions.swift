import UIKit

extension UIImage {
    convenience init?(_ color: UIColor) {
        let lightColor = color.resolvedColor(with: .init(userInterfaceStyle: .light))
        let darkColor = color.resolvedColor(with: .init(userInterfaceStyle: .dark))

        let colorImage = UIImage(fixedColor: lightColor)
        guard let image = colorImage?.cgImage else { return nil }

        self.init(cgImage: image)

        if let darkImage = UIImage(fixedColor: darkColor) {
            imageAsset?.register(darkImage, with: .init(userInterfaceStyle: .dark))
        }
    }

    private convenience init?(fixedColor color: UIColor) {
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
