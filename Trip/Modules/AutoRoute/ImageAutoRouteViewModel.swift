import RxSwift
import RxCocoa

final class ImageAutoRouteViewModel: TableViewCellModelProtocol {
    
    // MARK: - Private Properties

    private var routeImage: UIImage?
    
    // MARK: - Initializers

    init(routeImage: UIImage?) {
        self.routeImage = routeImage
    }

    // MARK: - Public  Methods

    func configure(_ cell: ImageAutoRouteViewCell) {
        cell.configure(image: routeImage)
    }
    
}
