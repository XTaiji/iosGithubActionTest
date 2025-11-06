/*
See the LICENSE.txt file for this sample's licensing information.

Abstract:
Snapshot tests for Donut views
*/

import XCTest
import SwiftUI
import SnapshotTesting
@testable import FoodTruckKit

final class DonutViewSnapshotTests: XCTestCase {

    func testDonutGalleryItemSnapshot() {
        // Test snapshot of DonutGalleryItem view
        let donut = Donut.previewDonut
        let view = DonutGalleryItem(donut: donut)
        let hostingController = UIHostingController(rootView: view)
        hostingController.view.frame = CGRect(x: 0, y: 0, width: 375, height: 200)

        assertSnapshot(matching: hostingController, as: .image, record: false)
    }

    func testDonutEditorSnapshot() {
        // Test snapshot of DonutEditor view
        let donut = Donut.previewDonut
        let view = DonutEditor(donut: .constant(donut))
        let hostingController = UIHostingController(rootView: view)
        hostingController.view.frame = CGRect(x: 0, y: 0, width: 375, height: 667)

        assertSnapshot(matching: hostingController, as: .image, record: false)
    }
}
