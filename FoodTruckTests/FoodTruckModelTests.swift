/*
See the LICENSE.txt file for this sample's licensing information.

Abstract:
Unit tests for FoodTruckModel
*/

import XCTest
@testable import FoodTruckKit

@MainActor
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
            XCTAssertGreaterThanOrEqual(donut.id, 0, "Donut ID should be valid (>= 0)")
        }
    }

    func testTruckExists() {
        // Test that the truck is initialized
        XCTAssertNotNil(model.truck, "Truck should exist")
    }

    func testOrdersExist() {
        // Test that orders are generated
        XCTAssertFalse(model.orders.isEmpty, "Orders should be generated on initialization")
    }
}
