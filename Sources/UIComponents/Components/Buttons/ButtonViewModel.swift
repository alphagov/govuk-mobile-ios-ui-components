import Foundation

public protocol ButtonViewModel {
    var localisedTitle: String { get }
    var action: () async throws -> Void { get }

    var buttonConfiguration: GOVUKButton.ButtonConfiguration? { get }
}

public struct PrimaryButtonViewModel: ButtonViewModel {
    public let localisedTitle: String
    public let action: () async throws -> Void
    public let buttonConfiguration: GOVUKButton.ButtonConfiguration? = .primary

    public init(localisedTitle: String, action: @escaping () -> Void) {
        self.localisedTitle = localisedTitle
        self.action = action
    }
}

public struct PlainButtonViewModel: ButtonViewModel {
    public let localisedTitle: String
    public let action: () async throws -> Void
    public let buttonConfiguration: GOVUKButton.ButtonConfiguration? = .plain

    public init(localisedTitle: String, action: @escaping () -> Void) {
        self.localisedTitle = localisedTitle
        self.action = action
    }
}
