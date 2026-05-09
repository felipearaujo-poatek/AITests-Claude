import SwiftUI
import UIKit

// MARK: - DSTypography

public enum DSTypography {

    // MARK: - Display

    public static var displayXL: Font {
        Font(UIFontMetrics(forTextStyle: .largeTitle).scaledFont(for: .systemFont(ofSize: 40, weight: .bold)))
    }

    public static var displayLG: Font {
        Font(UIFontMetrics(forTextStyle: .largeTitle).scaledFont(for: .systemFont(ofSize: 34, weight: .bold)))
    }

    // MARK: - Title

    public static var title1: Font {
        Font(UIFontMetrics(forTextStyle: .title1).scaledFont(for: .systemFont(ofSize: 28, weight: .bold)))
    }

    public static var title2: Font {
        Font(UIFontMetrics(forTextStyle: .title2).scaledFont(for: .systemFont(ofSize: 22, weight: .semibold)))
    }

    public static var title3: Font {
        Font(UIFontMetrics(forTextStyle: .title3).scaledFont(for: .systemFont(ofSize: 20, weight: .semibold)))
    }

    // MARK: - Body & Supporting

    public static var headline: Font {
        Font(UIFontMetrics(forTextStyle: .headline).scaledFont(for: .systemFont(ofSize: 17, weight: .semibold)))
    }

    public static var body: Font {
        Font(UIFontMetrics(forTextStyle: .body).scaledFont(for: .systemFont(ofSize: 17, weight: .regular)))
    }

    public static var callout: Font {
        Font(UIFontMetrics(forTextStyle: .callout).scaledFont(for: .systemFont(ofSize: 16, weight: .regular)))
    }

    public static var subheadline: Font {
        Font(UIFontMetrics(forTextStyle: .subheadline).scaledFont(for: .systemFont(ofSize: 15, weight: .regular)))
    }

    // MARK: - Small

    public static var footnote: Font {
        Font(UIFontMetrics(forTextStyle: .footnote).scaledFont(for: .systemFont(ofSize: 13, weight: .regular)))
    }

    public static var caption1: Font {
        Font(UIFontMetrics(forTextStyle: .caption1).scaledFont(for: .systemFont(ofSize: 12, weight: .regular)))
    }

    public static var caption2: Font {
        Font(UIFontMetrics(forTextStyle: .caption2).scaledFont(for: .systemFont(ofSize: 11, weight: .regular)))
    }
}
