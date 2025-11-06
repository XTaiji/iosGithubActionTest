/*
See the LICENSE.txt file for this sample's licensing information.

Abstract:
Snapshot tests for Donut views
*/

import XCTest
import SwiftUI
import SnapshotTesting
@testable import FoodTruckKit

@MainActor
final class DonutViewSnapshotTests: XCTestCase {

    func testDonutViewSnapshot() {
        // Test snapshot of DonutView
        let donut = Donut.preview
        let view = DonutView(donut: donut)
            .frame(width: 200, height: 200)
        let hostingController = UIHostingController(rootView: view)
        hostingController.view.frame = CGRect(x: 0, y: 0, width: 200, height: 200)

        assertSnapshot(of: hostingController, as: .image, record: true)
    }

    func testDonutStackViewSnapshot() {
        // Test snapshot of DonutStackView with multiple donuts
        let donuts = [Donut.classic, Donut.strawberryDrizzle, Donut.cosmos]
        let view = DonutStackView(donuts: donuts)
            .frame(width: 300, height: 300)
        let hostingController = UIHostingController(rootView: view)
        hostingController.view.frame = CGRect(x: 0, y: 0, width: 300, height: 300)

        assertSnapshot(of: hostingController, as: .image, record: true)
    }

    func testSingleDonutSnapshot() {
        // Test snapshot of a single classic donut
        let view = DonutView(donut: Donut.classic)
            .frame(width: 150, height: 150)
        let hostingController = UIHostingController(rootView: view)
        hostingController.view.frame = CGRect(x: 0, y: 0, width: 150, height: 150)

        assertSnapshot(of: hostingController, as: .image, record: true)
    }
}
