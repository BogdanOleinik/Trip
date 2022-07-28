import UIKit
import SnapKit

final class DescriptionAutoRouteViewCell: UITableViewCell {

    // MARK: - Private Properties
    
    private let titleRoute: UILabel = {
        let label = UILabel()
        label.font = .montserratFontMedium(ofSize: 18)
        return label
    }()

    private let pointsImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    private let descriptionRoute: UILabel = {
        let label = UILabel()
        label.font = .montserratFontRegular(ofSize: 13)
        label.numberOfLines = 0
        return label
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

    func configure(title: String, image: UIImage?, description: String) {
        titleRoute.text = title
        pointsImage.image = image
        descriptionRoute.text = description
    }

    // MARK: - Private Properties

    private func setupCellStyle() {
        backgroundColor = .clear
        selectionStyle = .none
    }

    private func setupConstraints() {
        contentView.addSubviews([titleRoute, pointsImage, descriptionRoute])

        titleRoute.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(30.0)
            make.left.right.equalToSuperview().inset(24.0)
        }

        pointsImage.snp.makeConstraints { make in
            make.top.equalTo(titleRoute.snp.bottom).offset(10.0)
            make.left.equalToSuperview().inset(24.0)
            make.width.equalTo(100.0)
            make.height.equalTo(20.0)
        }

        descriptionRoute.snp.makeConstraints { make in
            make.top.equalTo(pointsImage.snp.bottom).offset(20.0)
            make.left.right.equalToSuperview().inset(24.0)
            make.bottom.equalToSuperview()
        }
    }
}
