import SwiftUI
import UIKit

// MARK: - Color + Helpers

private extension Color {
    init(light lightHex: String, dark darkHex: String) {
        self.init(UIColor(dynamicProvider: { traits in
            traits.userInterfaceStyle == .dark
                ? UIColor(hex: darkHex)
                : UIColor(hex: lightHex)
        }))
    }

    init(hex: String) {
        self.init(UIColor(hex: hex))
    }
}

private extension UIColor {

    convenience init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r = CGFloat((int >> 16) & 0xFF) / 255
        let g = CGFloat((int >> 8) & 0xFF) / 255
        let b = CGFloat(int & 0xFF) / 255
        self.init(red: r, green: g, blue: b, alpha: 1)
    }
}

// MARK: - DS Namespace

public extension Color {

    enum DS {

        // MARK: - Background

        public enum Background {
            public static let primary   = Color(light: "#FFFFFF", dark: "#111827")
            public static let secondary = Color(light: "#F9FAFB", dark: "#1F2937")
            public static let tertiary  = Color(light: "#F3F4F6", dark: "#374151")
            public static let elevated  = Color(light: "#FFFFFF", dark: "#1F2937")
        }

        // MARK: - Text

        public enum Text {
            public static let primary    = Color(light: "#111827", dark: "#F9FAFB")
            public static let secondary  = Color(light: "#4B5563", dark: "#9CA3AF")
            // Decorative only — does not meet WCAG AA contrast ratio requirements
            public static let tertiary   = Color(light: "#6B7280", dark: "#6B7280")
            public static let disabled   = Color(light: "#9CA3AF", dark: "#4B5563")
            public static let inverse    = Color(light: "#FFFFFF", dark: "#111827")
            public static let onAccent   = Color(hex: "#FFFFFF")
        }

        // MARK: - Brand

        public enum Brand {
            public static let primary          = Color(light: "#2563EB", dark: "#60A5FA")
            public static let primaryHover     = Color(light: "#1D4ED8", dark: "#93C5FD")
            public static let primarySubtle    = Color(light: "#EFF6FF", dark: "#1E3A8A")
            public static let secondary        = Color(light: "#7C3AED", dark: "#A78BFA")
            public static let secondaryHover   = Color(light: "#6D28D9", dark: "#C4B5FD")
            public static let secondarySubtle  = Color(light: "#F5F3FF", dark: "#4C1D95")
        }

        // MARK: - Border

        public enum Border {
            public static let `default` = Color(light: "#E5E7EB", dark: "#374151")
            public static let strong    = Color(light: "#D1D5DB", dark: "#4B5563")
            public static let focus     = Color(light: "#2563EB", dark: "#60A5FA")
        }

        // MARK: - Status

        public enum Status {
            public static let success        = Color(light: "#15803D", dark: "#22C55E")
            public static let successSubtle  = Color(light: "#F0FDF4", dark: "#052E16")
            public static let warning        = Color(light: "#A16207", dark: "#EAB308")
            public static let warningSubtle  = Color(light: "#FEFCE8", dark: "#422006")
            public static let error          = Color(light: "#B91C1C", dark: "#EF4444")
            public static let errorSubtle    = Color(light: "#FEF2F2", dark: "#450A0A")
        }
    }
}
