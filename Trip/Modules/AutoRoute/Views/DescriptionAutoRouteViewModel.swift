import RxSwift
import RxCocoa

final class DescriptionAutoRouteViewModel: TableViewCellModelProtocol {

    // MARK: - Private Properties

    private let titleRoute: String
    private let descriptionLabel: String
    private let pointsImage: UIImage?

    // MARK: - Initializers

    init(titleRoute: String, pointsImage: UIImage?, descriptionLabel: String) {
        self.titleRoute = titleRoute
        self.descriptionLabel = descriptionLabel
        self.pointsImage = pointsImage
    }

    // MARK: - Public  Methods

    func configure(_ cell: DescriptionAutoRouteViewCell) {
        cell.configure(title: titleRoute, image: pointsImage, description: descriptionLabel)
    }

}
