//
//  D_M5_Ass16_iOssUITestsLaunchTests.swift
//  D_M5_Ass16_iOssUITests
//
//  Created by Dharmesh N. Agravat on 20/04/23.
//

import XCTest

final class D_M5_Ass16_iOssUITestsLaunchTests: XCTestCase {

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
