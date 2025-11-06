/*
See the LICENSE.txt file for this sample's licensing information.

Abstract:
Unit tests for Donut model
*/

import XCTest
@testable import FoodTruckKit

final class DonutTests: XCTestCase {

    func testDonutCreation() {
        // Test creating a donut with valid data
        let donut = Donut.previewDonut

        XCTAssertNotNil(donut, "Donut should not be nil")
        XCTAssertFalse(donut.name.isEmpty, "Donut name should not be empty")
    }

    func testDonutFlavors() {
        // Test that donut flavors are available
        let flavors = Donut.Flavor.allCases

        XCTAssertFalse(flavors.isEmpty, "Flavors array should not be empty")
        XCTAssertGreaterThan(flavors.count, 0, "Should have at least one flavor")
    }

    func testDonutGlaze() {
        // Test that donut glazes are available
        let glazes = Donut.Glaze.allCases

        XCTAssertFalse(glazes.isEmpty, "Glazes array should not be empty")
        XCTAssertGreaterThan(glazes.count, 0, "Should have at least one glaze")
    }
}
