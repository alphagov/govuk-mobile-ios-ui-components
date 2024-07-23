import Foundation
import UIKit

extension GOVUKColors {
    public struct Fills {
        public static var surfaceFixedContainer: UIColor {
            .init(
                light: .white.withAlphaComponent(0.75),
                dark: .black.withAlphaComponent(0.75)
            )
        }

        public static var surfaceBackground: UIColor {
            .init(
                light: .grey50,
                dark: .black
            )
        }

        public static var surfaceCard: UIColor {
            .init(
                light: .white,
                dark: .grey800
            )
        }

        public static var surfaceButtonPrimary: UIColor {
            .init(
                light: .blue1,
                dark: .blue2
            )
        }
    }
}
