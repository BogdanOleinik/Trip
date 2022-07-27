import UIKit

extension UIFont {

    private static func customFont(name: String, size: CGFloat) -> UIFont {
        let font = UIFont(name: name, size: size)
        assert(font != nil, "Can't load font: \(name)")
        return font ?? UIFont.systemFont(ofSize: size)
    }

    static func montserratFontRegular(ofSize size: CGFloat) -> UIFont {
        return customFont(name: "Montserrat-Regular", size: size)
    }

    static func montserratFontMedium(ofSize size: CGFloat) -> UIFont {
        return customFont(name: "Montserrat-Medium", size: size)
    }

    static func montserratBold(ofSize size: CGFloat) -> UIFont {
        return customFont(name: "Montserrat-Bold", size: size)
    }

    static func montserratSemiBold(ofSize size: CGFloat) -> UIFont {
        return customFont(name: "Montserrat-SemiBold", size: size)
    }

    static func montserratExtraBold(ofSize size: CGFloat) -> UIFont {
        return customFont(name: "Montserrat-ExtraBold", size: size)
    }

    static func montserratFontBlack(ofSize size: CGFloat) -> UIFont {
        return customFont(name: "Montserrat-Black", size: size)
    }
}
