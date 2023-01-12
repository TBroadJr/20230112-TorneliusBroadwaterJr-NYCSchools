//
//  _0230112_TorneliusBroadwaterJr_NYCSchoolsUITestsLaunchTests.swift
//  20230112-TorneliusBroadwaterJr-NYCSchoolsUITests
//
//  Created by Tornelius Broadwater, Jr on 1/12/23.
//

import XCTest

final class _0230112_TorneliusBroadwaterJr_NYCSchoolsUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
