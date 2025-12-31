import Foundation
import UIKit

extension GOVUKColors {
    public struct Fills {
        public static let surfaceFixedContainer: UIColor = {
            .init(
                light: .white.withAlphaComponent(0.75),
                dark: .blueDarker80.withAlphaComponent(0.75)
            )
        }()

        public static let surfaceBackground: UIColor = {
            .init(
                light: .blueLighter90,
                dark: .blueDarker80
            )
        }()

        public static let surfaceFullscreen: UIColor = {
            .init(
                light: .white,
                dark: .blueDarker80
            )
        }()

        public static let surfaceCardDefault: UIColor = {
            .init(
                light: .white,
                dark: .blueDarker65
            )
        }()

        public static let surfaceCardBlue: UIColor = {
            .init(
                light: .blueLighter95,
                dark: .blueDarker50
            )
        }()

        public static let surfaceCardSelected: UIColor = {
            .init(
                light: .greenLighter95,
                dark: .greenDarker50
            )
        }()

        public static let surfaceCardNonTappable: UIColor = {
            .init(
                light: .blueLighter80,
                dark: .blueDarker75
            )
        }()

        public static let surfaceButtonPrimary: UIColor = {
            .init(
                light: .primaryGreen,
                dark: .accentGreen
            )
        }()

        public static let surfaceButtonPrimaryHighlight: UIColor = {
            .init(
                light: .greenDarker25,
                dark: .greenLighter25
            )
        }()

        public static let surfaceButtonPrimaryFocussed: UIColor = {
            .primaryYellow
        }()

        public static let surfaceButtonPrimaryDisabled: UIColor = {
            .init(
                light: .grey100,
                dark: .grey400
            )
        }()

        public static let surfaceButtonSecondary: UIColor = {
            .clear
        }()

        public static let surfaceButtonSecondaryHighlight: UIColor = {
            .clear
        }()

        public static let surfaceButtonSecondaryFocussed: UIColor = {
            .primaryYellow
        }()

        public static let surfaceButtonCompact: UIColor = {
            .init(
                light: .blueLighter95,
                dark: .blueDarker80
            )
        }()

        public static let surfaceButtonCompactHighlight: UIColor = {
            .init(
                light: .blueLighter95,
                dark: .blueDarker80
            )
        }()

        public static let surfaceButtonCompactFocussed: UIColor = {
            .primaryYellow
        }()

        public static let surfaceButtonCompactDisabled: UIColor = {
            .init(
                light: .grey100,
                dark: .grey400
            )
        }()

        public static let surfaceButtonDestructive: UIColor = {
            .init(
                light: .primaryRed,
                dark: .accentRed
            )
        }()

        public static let surfaceButtonDestructiveHighlight: UIColor = {
            .init(
                light: .redDarker25,
                dark: .primaryRed
            )
        }()

        public static let surfaceModal: UIColor = {
            .init(
                light: .white,
                dark: .blueDarker80
            )
        }()

        public static let surfaceSearch: UIColor = {
            .init(
                light: .white,
                dark: .blueDarkMode
            )
        }()

        public static let surfaceHomeHeaderBackground: UIColor = {
            .init(
                light: .primaryBlue,
                dark: .blueDarker65
            )
        }()

        public static let surfaceToggleSelected: UIColor = {
            .init(
                light: .primaryGreen,
                dark: .primaryGreen
            )
        }()

        public static let surfaceList: UIColor = {
            .init(
                light: .white,
                dark: .blueDarker70
            )
        }()

        public static let surfaceListHeading: UIColor = {
            .init(
                light: .blueLighter95,
                dark: .blueDarker50
            )
        }()

        public static let surfaceListSelected: UIColor = {
            .init(
                light: .primaryBlue,
                dark: .blueDarker25
            )
        }()

        public static let surfaceListUnselected: UIColor = {
            .init(
                light: .blueLighter90,
                dark: .blueDarker75
            )
        }()

        public static let surfaceChatBlue: UIColor = {
            .init(
                light: .white,
                dark: .blueDarker80
            )
        }()

        public static let surfaceChatAction: UIColor = {
            .init(
                light: .white,
                dark: .blueDarker50
            )
        }()

        public static let surfaceChatQuestion: UIColor = {
            .init(
                light: .white.withAlphaComponent(0.5),
                dark: .blueDarker80.withAlphaComponent(0.5)
            )
        }()

        public static let surfaceChatBackground: UIColor = {
            .init(
                light: .blueLighter90,
                dark: .blueDarker80
            )
        }()

        public static let surfaceChatOnboardingListBackground: UIColor = {
            .init(
                light: .blueLighter90,
                dark: .blueDarker70
            )
        }()

        public static let surfaceCardEmergencyNotableDeath: UIColor = {
            .init(
                light: .black,
                dark: .black
            )
        }()

        public static let surfaceCardEmergencyNational: UIColor = {
            .init(
                light: .primaryRed,
                dark: .primaryRed
            )
        }()

        public static let surfaceCardEmergencyLocal: UIColor = {
            .init(
                light: .primaryTeal,
                dark: .primaryTeal
            )
        }()

        public static let surfaceCardEmergencyInfo: UIColor = {
            .init(
                light: .white,
                dark: .blueDarkMode
            )
        }()
    }
}
