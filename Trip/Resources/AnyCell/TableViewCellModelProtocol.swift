import RxDataSources

protocol AnyTableViewCellModelProtocol: AnyCellViewModelProtocol {

    func configureAny(_ cell: UITableViewCell)
}

protocol TableViewCellModelProtocol: AnyTableViewCellModelProtocol {

    associatedtype CellType: UITableViewCell

    var height: CGFloat { get }

    func configure(_ cell: CellType)
}

extension TableViewCellModelProtocol {
    var height: CGFloat { 0 }
}

extension TableViewCellModelProtocol {

    static var cellClass: UIView.Type {
        return CellType.self
    }

    func configureAny(_ cell: UITableViewCell) {
        guard let cell = cell as? CellType else {
            assertionFailure()
            return
        }
        configure(cell)
    }
}
