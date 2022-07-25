//import RxSwift
//import RxCocoa
import SnapKit

final class AutoRouteImageViewCell: UITableViewCell {

    private let routeImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        return imageView
    }()

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Public Properties

    func configure(image: UIImage?) {
        routeImage.image = image
    }

    // MARK: - Private Properties

    private func setupCellStyle() {
        backgroundColor = .clear
        selectionStyle = .none
    }

    private func setupConstraints() {
        contentView.addSubview(routeImage)

        routeImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
