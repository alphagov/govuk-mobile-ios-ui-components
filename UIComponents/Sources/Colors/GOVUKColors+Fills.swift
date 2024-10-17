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

        public static let surfaceButtonCompactFocussed: UIColor = {
            .yellow
        }()

        public static let surfaceButtonCompactHighlight: UIColor = {
            .init(
                light: .blue7,
                dark: .blue8
            )
        }()

        public static let surfaceButtonCompactDisabled: UIColor = {
            .init(
                light: .grey100,
                dark: .grey400
            )
        }()

        public static let surfaceModal: UIColor = {
            .init(
                light: .white,
                dark: .grey850
            )
        }()

        public static let surfaceSearchBox: UIColor = {
            .init(
                light: .grey550.withAlphaComponent(0.12),
                dark: .grey550.withAlphaComponent(0.24)
            )
        }()
    }
}
