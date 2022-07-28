import RxCocoa
import SnapKit

final class ItineraryAudioCellViewController: UITableViewCell {

    // MARK: - Public Properties

    private(set) lazy var itineraryTap = itineraryImage.rx.tap

    // MARK: - Private Properties

    private let itineraryImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        return imageView
    }()

    private let audioImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        return imageView
    }()

    private let itineraryContainer: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.clipsToBounds = true
        view.layer.cornerRadius = 10.0
        return view
    }()

    private let audioContainer: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.clipsToBounds = true
        view.layer.cornerRadius = 10.0
        return view
    }()

    private let itineraryLabel: UILabel = {
        let label = UILabel()
        label.font = .montserratFontMedium(ofSize: 14)
        label.text = "Save itinerary"
        return label
    }()

    private let audioLabel: UILabel = {
        let label = UILabel()
        label.font = .montserratFontMedium(ofSize: 14)
        label.text = "Audio Guide"
        return label
    }()

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        itineraryImage.layer.cornerRadius = 10.0
        audioImage.layer.cornerRadius = 10.0
        itineraryContainer.layer.cornerRadius = 15.0
        audioContainer.layer.cornerRadius = 15.0

        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Public Properties

    func configure(itineraryPhoto: UIImage?, audioPhoto: UIImage?) {
        itineraryImage.image = itineraryPhoto
        audioImage.image = audioPhoto

    }

    // MARK: - Private Properties

    private func setupCellStyle() {
        backgroundColor = .clear
        selectionStyle = .none
    }

    private func setupConstraints() {
        contentView.addSubviews([itineraryImage, audioImage])
        itineraryImage.addSubviews(itineraryContainer)
        audioImage.addSubviews(audioContainer)
        itineraryContainer.addSubviews(itineraryLabel)
        audioContainer.addSubviews(audioLabel)

        itineraryImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview().offset(24.0)
            make.size.equalTo(170.0)
            make.bottom.equalToSuperview()
        }

        audioImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.right.equalToSuperview().offset(-24.0)
            make.size.equalTo(170.0)
            make.bottom.equalToSuperview()
        }

        itineraryContainer.snp.makeConstraints { make in
            make.right.left.equalToSuperview().inset(30.0)
            make.bottom.equalToSuperview().offset(-15.0)
            make.height.equalTo(30.0)
        }

        audioContainer.snp.makeConstraints { make in
            make.right.left.equalToSuperview().inset(30.0)
            make.bottom.equalToSuperview().offset(-15.0)
            make.height.equalTo(30.0)
        }

        itineraryLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        audioLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
