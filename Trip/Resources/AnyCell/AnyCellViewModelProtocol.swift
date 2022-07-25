import UIKit

protocol AnyCellViewModelProtocol: AnyObject {

    static var cellClass: UIView.Type { get }
    static var reuseIdentifier: String { get }
}

extension AnyCellViewModelProtocol {

    private static var cellClassName: String {
        return String(describing: cellClass)
    }

    static var reuseIdentifier: String {
        return cellClassName
    }
}
