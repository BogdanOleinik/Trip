import RxSwift
import RxCocoa

final class ItineraryAudioCellViewModel: TableViewCellModelProtocol {

    // MARK: - Private Properties

    private var itineraryImage: UIImage?
    private var audioImage: UIImage?

    // MARK: - Initializers

    init(itineryImage: UIImage?, audioImage: UIImage?) {
        self.itineraryImage = itineryImage
        self.audioImage = audioImage
    }

    // MARK: - Public  Methods

    func configure(_ cell: ItineraryAudioCellViewController) {
        cell.configure(itineraryPhoto: itineraryImage, audioPhoto: audioImage)
    }

}
