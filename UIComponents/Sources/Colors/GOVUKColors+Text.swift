import Foundation
import UIKit

extension GOVUKColors {
    public struct Text {
        public static let primary: UIColor = {
            .init(
                light: .black,
                dark: .white
            )
        }()

        public static let secondary: UIColor = {
            .init(
                light: .grey700,
                dark: .grey300
            )
        }()

        public static let link: UIColor = {
            .init(
                light: .blue1,
                dark: .blue2
            )
        }()

        public static let buttonPrimary: UIColor = {
            .init(
                light: .white,
                dark: .black
            )
        }()

        public static let buttonPrimaryFocussed: UIColor = {
            .init(
                light: .black,
                dark: .black
            )
        }()

        public static let buttonPrimaryDisabled: UIColor = {
            .init(
                light: .grey600,
                dark: .black
            )
        }()

        public static let buttonSecondary: UIColor = {
            .init(
                light: .blue1,
                dark: .blue2
            )
        }()

        public static let buttonSecondaryHighlight: UIColor = {
            .init(
                light: .blue5,
                dark: .blue6
            )
        }()

        public static let buttonSecondaryFocussed: UIColor = {
            .init(
                light: .black,
                dark: .black
            )
        }()

        public static let buttonSecondaryDisabled: UIColor = {
            .init(
                light: .grey700,
                dark: .grey300
            )
        }()

        public static let buttonCompact: UIColor = {
            .init(
                light: .blue1,
                dark: .blue2
            )
        }()

        public static let buttonCompactHighlight: UIColor = {
            .init(
                light: .blue5,
                dark: .blue6
            )
        }()

        public static let buttonCompactFocussed: UIColor = {
            .init(
                light: .black,
                dark: .black
            )
        }()

        public static let buttonCompactDisabled: UIColor = {
            .init(
                light: .grey600,
                dark: .black
            )
        }()

        public static let trailingIcon: UIColor = {
            .init(
                light: .grey300,
                dark: .grey500
            )
        }()
    }
}
