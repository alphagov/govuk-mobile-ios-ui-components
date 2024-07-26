import Foundation
import UIKit

extension GOVUKColors {
    public struct Fills {
        public static let surfaceFixedContainer: UIColor = {
            .init(
                light: .white.withAlphaComponent(0.75),
                dark: .black.withAlphaComponent(0.75)
            )
        }()

        public static let surfaceBackground: UIColor = {
            .init(
                light: .grey50,
                dark: .black
            )
        }()

        public static let surfaceCard: UIColor = {
            .init(
                light: .white,
                dark: .grey800
            )
        }()

        public static let surfaceButtonPrimary: UIColor = {
            .init(
                light: .blue1,
                dark: .blue2
            )
        }()

        public static let surfaceButtonPrimaryHighlight: UIColor = {
            .init(
                light: .blue5,
                dark: .blue6
            )
        }()

        public static let surfaceButtonPrimaryFocussed: UIColor = {
            .yellow
        }()

        public static let surfaceButtonSecondary: UIColor = {
            .clear
        }()

        public static let surfaceButtonSecondaryHighlight: UIColor = {
            .clear
        }()

        public static let surfaceButtonSecondaryFocussed: UIColor = {
            .yellow
        }()
    }
}
