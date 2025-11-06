/*
See the LICENSE.txt file for this sample's licensing information.

Abstract:
Snapshot tests for BrandHeader view
*/

import XCTest
import SwiftUI
import SnapshotTesting
@testable import FoodTruckKit

final class BrandHeaderSnapshotTests: XCTestCase {

    func testBrandHeaderSnapshot() {
        // Test snapshot of BrandHeader view
        let view = BrandHeader(animated: false, size: .normal)
        let hostingController = UIHostingController(rootView: view)
        hostingController.view.frame = CGRect(x: 0, y: 0, width: 375, height: 200)

        assertSnapshot(matching: hostingController, as: .image, record: false)
    }

    func testBrandHeaderReducedSnapshot() {
        // Test snapshot of BrandHeader with reduced size
        let view = BrandHeader(animated: false, size: .reduced)
        let hostingController = UIHostingController(rootView: view)
        hostingController.view.frame = CGRect(x: 0, y: 0, width: 375, height: 150)

        assertSnapshot(matching: hostingController, as: .image, record: false)
    }
}
