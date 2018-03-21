//
//  UserTest2.swift
//  UnitTestDemoTests
//
//  Created by Rajeshkumar maddi on 21/03/18.
//  Copyright © 2018 SaiRajesh. All rights reserved.
//

import Foundation
import XCTest
@testable import UnitTestDemo

class UserTests: XCTestCase {
    func testisValid() {
        let user = ViewController()
        XCTAssertTrue(user.isvalidEmail(email: "m.rajeshkumar@gmail.com"))
        XCTAssertTrue(user.isvalidPhoneNumber(phoneNo: "9090909090"))
    }
    func testmeasurePerformance(){
        
        self.measure {
            let user = ViewController()
            XCTAssertTrue(user.isvalidEmail(email: "m.rajeshkumar@gmail.com"))
            XCTAssertTrue(user.isvalidPhoneNumber(phoneNo: "9090909090"))
        }
    }
}
