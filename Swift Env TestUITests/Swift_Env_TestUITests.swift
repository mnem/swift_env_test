//
//  Swift_Env_TestUITests.swift
//  Swift Env TestUITests
//
//  Created by David Wagner on 01/02/2017.
//  Copyright © 2017 David Wagner. All rights reserved.
//

import XCTest

class Swift_Env_TestUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        let app = XCUIApplication()
        print(ProcessInfo.processInfo.environment)
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let textField = XCUIApplication().children(matching: .window).element(boundBy: 0).otherElements.children(matching: .textField).element
        textField.tap()
        var text="hello"
        
        // This is passed from the scheme via an expanded env variable called TEST_CLI. This is set in the host machine running environment.
        if let foo = ProcessInfo.processInfo.environment["FROM_CLI"] {
            text=foo
        }
        textField.typeText(text)
        sleep(5)
    }
    
}
