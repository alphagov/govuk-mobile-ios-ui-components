import Foundation

protocol ButtonViewModel {
    var localisedTitle: String { get }
    var action: () async throws -> Void { get }

    var buttonConfiguration: GOVUKButton.ButtonConfiguration { get }
}
