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
        let donut = Donut.preview

        XCTAssertNotNil(donut, "Donut should not be nil")
        XCTAssertFalse(donut.name.isEmpty, "Donut name should not be empty")
    }

    func testDonutAllCollection() {
        // Test that the all donuts collection is available
        let allDonuts = Donut.all

        XCTAssertFalse(allDonuts.isEmpty, "All donuts array should not be empty")
        XCTAssertGreaterThan(allDonuts.count, 0, "Should have at least one donut")
    }

    func testDonutFlavors() {
        // Test that flavor profiles are available
        let flavors = Flavor.allCases

        XCTAssertFalse(flavors.isEmpty, "Flavors array should not be empty")
        XCTAssertEqual(flavors.count, 6, "Should have 6 flavors (salty, sweet, bitter, sour, savory, spicy)")
    }

    func testDonutGlaze() {
        // Test that donut glazes are available
        let glazes = Donut.Glaze.all

        XCTAssertFalse(glazes.isEmpty, "Glazes array should not be empty")
        XCTAssertGreaterThan(glazes.count, 0, "Should have at least one glaze")
    }

    func testDonutDough() {
        // Test that donut doughs are available
        let doughs = Donut.Dough.all

        XCTAssertFalse(doughs.isEmpty, "Doughs array should not be empty")
        XCTAssertGreaterThan(doughs.count, 0, "Should have at least one dough type")
    }

    func testDonutHasIngredients() {
        // Test that a donut has ingredients
        let donut = Donut.classic

        XCTAssertFalse(donut.ingredients.isEmpty, "Donut should have ingredients")
        XCTAssertNotNil(donut.dough, "Donut should have dough")
    }

    func testDonutFlavorProfile() {
        // Test that a donut has a flavor profile
        let donut = Donut.classic
        let flavorProfile = donut.flavors

        XCTAssertNotNil(flavorProfile, "Donut should have a flavor profile")
    }
}
