import UIKit
import SnapKit

final class PaidFeaturesViewController: UITableViewCell {

    // MARK: - Private Properties
    
    private let container: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.clipsToBounds = true
        view.layer.cornerRadius = 10.0
        return view
    }()

    private let paidImage: UIImageView = {
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
        paidImage.image = image
    }


    // MARK: - Private Properties

    private func setupCellStyle() {
        backgroundColor = .clear
        selectionStyle = .none
    }

    private func setupConstraints() {
        contentView.addSubview(container)

        container.addSubviews([paidImage])

        container.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20.0)
            make.left.right.equalToSuperview().inset(24.0)
            make.bottom.equalToSuperview()
            make.height.equalTo(350.0)
        }

        paidImage.snp.makeConstraints { make in
            make.centerX.equalTo(container.snp.centerX)
            make.centerY.equalTo(container.snp.centerY)
            make.width.equalTo(50.0)
            make.height.equalTo(45.0)
        }
    }
}
