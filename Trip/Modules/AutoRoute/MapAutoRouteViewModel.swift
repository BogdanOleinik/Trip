import RxSwift
import RxCocoa

final class MapAutoRouteViewModel: TableViewCellModelProtocol {

    // MARK: - Private Properties

    private let pointsImage: UIImage?

    // MARK: - Initializers

    init(pointsImage: UIImage?) {
        self.pointsImage = pointsImage
    }

    // MARK: - Public  Methods

    func configure(_ cell: MapAutoRouteViewController) {
        cell.configure(image: pointsImage)
    }

}
