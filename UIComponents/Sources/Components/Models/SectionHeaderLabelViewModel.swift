import Foundation

public struct SectionHeaderLabelViewModel {
    let title: String
    let button: GOVUKButton.ButtonViewModel?

    public init(title: String,
                button: GOVUKButton.ButtonViewModel? = nil) {
        self.title = title
        self.button = button
    }
}
