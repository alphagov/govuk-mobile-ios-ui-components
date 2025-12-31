import Foundation
import UIKit

extension GOVUKColors {
    public struct Strokes {
        public static let listDivider: UIColor = {
            .init(
                light: .blueLighter80,
                dark: .blueDarkMode
            )
        }()

        public static let pageControlInactive: UIColor = {
            .init(
                light: .grey500,
                dark: .grey300
            )
        }()

        public static let buttonPrimaryFocused: UIColor = {
            .init(
                light: .black,
                dark: .yellowDarker50
            )
        }()

        public static let buttonDestructiveDefault: UIColor = {
            .init(
                light: .redDarker50,
                dark: .primaryRed
            )
        }()

        public static let buttonFocused: UIColor = {
            .init(
                light: .black,
                dark: .yellowDarker50
            )
        }()

        public static let buttonDestructiveHighlight: UIColor = {
            .init(
                light: .redDarker80,
                dark: .redDarker50
            )
        }()

        public static let buttonPrimaryDefault: UIColor = {
            .init(
                light: .greenDarker50,
                dark: .primaryGreen
            )
        }()

        public static let buttonPrimaryHighlight: UIColor = {
            .init(
                light: .greenDarker80,
                dark: .greenDarker50
            )
        }()

        public static let cardBlue: UIColor = {
            .init(
                light: .blueLighter50,
                dark: .primaryBlue
            )
        }()

        public static let cardDefault: UIColor = {
            .init(light: .blueLighter80,
                  dark: .blueDarkMode
            )
        }()

        public static let cardGreen: UIColor = {
            .init(
                light: .greenLighter50,
                dark: .greenLighter25
            )
        }()

        public static let error: UIColor = {
            .init(
                light: .primaryRed,
                dark: .accentRed
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

        public static let focusedChatTextBox: UIColor = {
            .init(
                light: .primaryBlue,
                dark: .accentBlue
            )
        }()

        public static let fixedContainer: UIColor = {
            .init(
                light: .black.withAlphaComponent(0.3),
                dark: .white.withAlphaComponent(0.3)
            )
        }()

        public static let chatAnswer: UIColor = {
            .init(
                light: .clear,
                dark: .blueDarker25
            )
        }()

        public static let chatDivider: UIColor = {
            .init(
                light: .blueLighter80,
                dark: .blueDarker25
            )
        }()

        public static let chatAction: UIColor = {
            .init(
                light: .grey300,
                dark: .blueLighter25
            )
        }()

        public static let chatOnboardingListDivider: UIColor = {
            .init(
                light: .blueLighter80,
                dark: .blueDarker50
            )
        }()

        public static let surfaceCardEmergencyNotableDeath: UIColor = {
            .init(
                light: .clear,
                dark: .white
            )
        }()

        public static let surfaceCardEmergencyInfo: UIColor = {
            .init(
                light: .blueLighter25,
                dark: .blueLighter25
            )
        }()
    }
}
