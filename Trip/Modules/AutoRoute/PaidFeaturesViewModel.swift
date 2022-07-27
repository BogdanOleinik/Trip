import RxSwift
import RxCocoa

final class PaidFeaturesViewModel: TableViewCellModelProtocol {

    // MARK: - Private Properties

    private let paidImage: UIImage?

    // MARK: - Initializers

    init(paidImage: UIImage?) {
        self.paidImage = paidImage
    }

    // MARK: - Public  Methods

    func configure(_ cell: PaidFeaturesViewController) {
        cell.configure(image: paidImage)
    }

}
