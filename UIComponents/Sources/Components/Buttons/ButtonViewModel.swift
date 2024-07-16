import Foundation

public protocol ButtonViewModel {
    var localisedTitle: String { get }
    var action: () async throws -> Void { get }

    var buttonConfiguration: GOVUKButton.ButtonConfiguration? { get }
}

public struct GOVUKButtonViewModel: ButtonViewModel {
    public let localisedTitle: String
    public let action: () async throws -> Void
    public let buttonConfiguration: GOVUKButton.ButtonConfiguration?

    public init(localisedTitle: String,
                action: @escaping () -> Void,
                configuration: GOVUKButton.ButtonConfiguration = .primary) {
        self.localisedTitle = localisedTitle
        self.action = action
        self.buttonConfiguration = configuration
    }
}
