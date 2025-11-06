/*
See the LICENSE.txt file for this sample's licensing information.

Abstract:
Unit tests for FoodTruckModel
*/

import XCTest
@testable import FoodTruckKit

final class FoodTruckModelTests: XCTestCase {

    var model: FoodTruckModel!

    override func setUp() {
        super.setUp()
        model = FoodTruckModel()
    }

    override func tearDown() {
        model = nil
        super.tearDown()
    }

    func testModelInitialization() {
        // Test that the model initializes correctly
        XCTAssertNotNil(model, "Model should not be nil")
    }

    func testDonutsAreAvailable() {
        // Test that donuts are available in the model
        XCTAssertFalse(model.donuts.isEmpty, "Donuts array should not be empty")
    }

    func testDonutsHaveValidProperties() {
        // Test that each donut has valid properties
        for donut in model.donuts {
            XCTAssertFalse(donut.name.isEmpty, "Donut name should not be empty")
            XCTAssertFalse(donut.id.uuidString.isEmpty, "Donut ID should be valid")
        }
    }
}
