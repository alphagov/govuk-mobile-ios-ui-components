import Foundation

public protocol ButtonViewModel {
    var localisedTitle: String { get }
    var action: () async throws -> Void { get }
}

public struct GOVUKButtonViewModel: ButtonViewModel {
    public let localisedTitle: String
    public let action: () async throws -> Void

    public init(localisedTitle: String,
                action: @escaping () -> Void) {
        self.localisedTitle = localisedTitle
        self.action = action
    }
}
