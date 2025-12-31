import Foundation

public struct CentreCard {
    let primaryText: String?
    let secondaryText: String?

    public init(primaryText: String? = nil,
                secondaryText: String? = nil) {
        self.primaryText = primaryText
        self.secondaryText = secondaryText
    }
}
