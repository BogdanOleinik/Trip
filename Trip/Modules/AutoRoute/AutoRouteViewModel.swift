import RxSwift
import RxCocoa

final class AutoRouteViewModel {

    // MARK: - Public Properties

    private(set) var dataItems = PublishRelay<[AnyTableViewCellModelProtocol]>()
    let bag = DisposeBag()

    // MARK: - Initializers

    init() {}

    // MARK: - Public Methods

    func setupItems() {
        let autoRouteImageCellViewModel = AutoRouteImageViewModel(routeImage: UIImage(named: "autoRoute"))

        let dataItems: [AnyTableViewCellModelProtocol] = [
            autoRouteImageCellViewModel
        ]

        self.dataItems.accept(dataItems)
    }


}
