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
        let autoRouteImageCellViewModel = ImageAutoRouteViewModel(routeImage: UIImage(named: "autoRoute"))
        let descriptionAutoRouteViewModel = DescriptionAutoRouteViewModel(
            titleRoute: "Title of the auto route",
            pointsImage: UIImage(named: "points"),
            descriptionLabel: "Bali in Indonesia is a fabulous island of the Gods, one of the ten best tropical resorts in the world. It is washed by two oceans at once - Indian and Pacific. On its small territory of 5780 sq. km there are snow-white beaches with a rich underwater world, dense jungles and savannahs, natural parks with exotic flora and fauna, mountain forests with sparkling lakes, dormant volcanoes, noisy waterfalls and healing noisy springs. There are more than 20,000 ancient temples and palaces in Bali, the destruction of religion - Balinese Hinduism, to correct the culture and crafts preserved for centuries. It hides many surprises and discoveries, always gives an unforgettable vacation and a lot of vivid impressions."
        )
        let mapAutoRouteViewModel = MapAutoRouteViewModel(pointsImage: UIImage(named: "mapAutoRoute"))
        let paidFeaturesViewModel = PaidFeaturesViewModel(paidImage: UIImage(named:"block"))

        let dataItems: [AnyTableViewCellModelProtocol] = [
            autoRouteImageCellViewModel,
            descriptionAutoRouteViewModel,
            mapAutoRouteViewModel,
            paidFeaturesViewModel
        ]

        self.dataItems.accept(dataItems)
    }


}
