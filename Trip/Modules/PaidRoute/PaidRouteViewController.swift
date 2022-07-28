import SnapKit
import RxSwift
import RxCocoa

class PaidRouteViewController: UIViewController {

    // MARK: - Private Properties

    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.bounces = true
        tableView.keyboardDismissMode = .onDrag
        tableView.delaysContentTouches = false
        tableView.registerCells(withModels: ItineraryAudioCellViewModel.self)
        return tableView
    }()

    private let viewModel: PaidRouteViewModel

    // MARK: - Initializers

    init(viewModel: PaidRouteViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = TripColors.white
        bindVM()
        setupConstraints()
        viewModel.setupItems()
    }

    // MARK: - Private Methods

    private func bindVM() {
        viewModel
            .dataItems
            .bind(to: tableView.rx.items) { tableView, row, data in
                let indexPath = IndexPath(row: row, section: 0)
                let cell = tableView.dequeueReusableCell(withModel: data, for: indexPath)
                data.configureAny(cell)
                return cell
            }
            .disposed(by: viewModel.bag)
    }

    private func setupConstraints() {
        view.addSubview(tableView)

        tableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaInsets.top)
            make.left.bottom.trailing.equalToSuperview()
        }
    }
}
