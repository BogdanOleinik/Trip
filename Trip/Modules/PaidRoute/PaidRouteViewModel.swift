import RxSwift
import RxCocoa
import UIKit

final class PaidRouteViewModel {

    // MARK: - Public Properties

    private(set) var dataItems = PublishRelay<[AnyTableViewCellModelProtocol]>()
    let bag = DisposeBag()

    // MARK: - Initializers

    init() {}

    // MARK: - Public Methods

    func setupItems() {
        let itineraryAudioCellViewModel = ItineraryAudioCellViewModel(
            itineryImage: UIImage(named: "itinerary"),
            audioImage: UIImage(named: "audioGuide"))

        let dataItems: [AnyTableViewCellModelProtocol] = [
            itineraryAudioCellViewModel
        ]

        self.dataItems.accept(dataItems)
    }


}
