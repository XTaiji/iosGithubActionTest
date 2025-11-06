/*
See the LICENSE.txt file for this sample's licensing information.

Abstract:
Snapshot tests for BrandHeader view
*/

import XCTest
import SwiftUI
import SnapshotTesting
@testable import FoodTruckKit

@MainActor
final class BrandHeaderSnapshotTests: XCTestCase {

    func testBrandHeaderStandardSnapshot() {
        // Test snapshot of BrandHeader view with standard size
        let view = BrandHeader(animated: false, size: .standard)
            .frame(width: 375, height: 200)
        let hostingController = UIHostingController(rootView: view)
        hostingController.view.frame = CGRect(x: 0, y: 0, width: 375, height: 200)

        assertSnapshot(of: hostingController, as: .image, record: false)
    }

    func testBrandHeaderReducedSnapshot() {
        // Test snapshot of BrandHeader with reduced size
        let view = BrandHeader(animated: false, size: .reduced)
            .frame(width: 375, height: 100)
        let hostingController = UIHostingController(rootView: view)
        hostingController.view.frame = CGRect(x: 0, y: 0, width: 375, height: 100)

        assertSnapshot(of: hostingController, as: .image, record: false)
    }
}
