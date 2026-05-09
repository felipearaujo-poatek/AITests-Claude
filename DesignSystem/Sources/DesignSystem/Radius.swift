import SwiftUI

// MARK: - DSRadius

public enum DSRadius {

    // MARK: - Tokens

    public static let none: CGFloat = 0
    public static let xs: CGFloat   = 4
    public static let sm: CGFloat   = 8
    public static let md: CGFloat   = 12
    public static let lg: CGFloat   = 16
    public static let xl: CGFloat   = 24
    public static let x2l: CGFloat  = 32
    // Prefer Capsule() shape in SwiftUI; this constant misbehaves when frame height exceeds 9999
    public static let full: CGFloat = 9999
}
