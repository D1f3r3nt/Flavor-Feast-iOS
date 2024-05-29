import SwiftUI

extension Font {
    static func epilogue(
        size: CGFloat = 17,
        type: FontEpilgueType = .Regular
    ) -> Font{
        self.custom(type.rawValue, size: size)
    }
}
enum FontEpilgueType: String {
    case Bold="Epilogue-Bold"
    case Thin="Epilogue-Thin"
    case Medium="Epilogue-Medium"
    case Regular="Epilogue-Regular"
    case Black="Epilogue-Black"
}
