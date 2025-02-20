import Foundation
import UIKit

extension GOVUKColors {
    public struct Strokes {
        public static let listDivider: UIColor = {
            .init(
                light: .blueLighter50,
                dark: .blueDarker25
            )
        }()

        public static let pageControlInactive: UIColor = {
            .init(
                light: .grey500,
                dark: .grey300
            )
        }()

        public static let cardBlue: UIColor = {
            .init(
                light: .blueLighter50,
                dark: .primaryBlue
            )
        }()

        public static let cardSelected: UIColor = {
            .init(
                light: .primaryGreen,
                dark: .accentGreen
            )
        }()

        public static let buttonCompactHighlight: UIColor = {
            .init(
                light: .blueLighter25,
                dark: .blueDarker25
            )
        }()
    }
}
