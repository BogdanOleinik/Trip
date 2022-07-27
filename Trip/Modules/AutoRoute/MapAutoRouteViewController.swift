import UIKit
import SnapKit

final class MapAutoRouteViewController: UITableViewCell {

    private let mapImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10.0
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
        mapImage.image = image
    }


    // MARK: - Private Properties

    private func setupCellStyle() {
        backgroundColor = .clear
        selectionStyle = .none
    }

    private func setupConstraints() {
        contentView.addSubviews([mapImage])

        mapImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20.0)
            make.left.right.equalToSuperview().inset(24.0)
            make.bottom.equalToSuperview()
            make.height.equalTo(200.0)
        }
    }
}
