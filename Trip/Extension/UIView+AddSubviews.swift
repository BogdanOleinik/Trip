import UIKit

public extension UIView {
    func addSubviewsWithoutAutoresizing(_ subviews: UIView...) {
        subviews.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            addSubview($0)
        }
    }

    func addSubviewsWithoutAutoresizing(_ subviews: [UIView]) {
        subviews.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            addSubview($0)
        }
    }

    func addSubviews(_ subviews: [UIView]) {
        subviews.forEach {
            addSubview($0)
        }
    }

    func addSubviews(_ subviews: UIView...) {
        subviews.forEach {
            addSubview($0)
        }
    }
}

public extension NSLayoutConstraint {
    func with(_ priority: UILayoutPriority) -> NSLayoutConstraint {
        self.priority = priority
        return self
    }

    func identified(_ id: String) -> NSLayoutConstraint {
        self.identifier = id
        return self
    }

    @discardableResult
    func activated() -> NSLayoutConstraint {
        self.isActive = true
        return self
    }
}
