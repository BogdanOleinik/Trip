import RxSwift
import RxCocoa

final class AutoRouteImageViewModel: TableViewCellModelProtocol {
    
    // MARK: - Private Properties

    private var routeImage: UIImage?
    
    // MARK: - Initializers

    init(routeImage: UIImage?) {
        self.routeImage = routeImage
    }

    // MARK: - Public  Methods

    func configure(_ cell: AutoRouteImageViewCell) {
        cell.configure(image: routeImage)
    }
    
}
