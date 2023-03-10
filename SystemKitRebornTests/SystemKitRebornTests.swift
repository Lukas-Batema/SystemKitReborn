//
// SystemKitRebornTests.swift
// SystemKitReborn
//
// The MIT License
//
// Copyright (C) 2022 BatemaDevelopment <https://github.com/lukas-batema>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Cocoa
import XCTest
import SystemKitReborn

class SystemKitRebornTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of
        // each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation
        // of each test method in the class.
        super.tearDown()
    }
    
    func testBattery() {
        var battery = Battery()
        
        // Is it a laptop?
        // TODO: pmset may have a better way of doing this
        if battery.open() != kIOReturnSuccess { return }
        
        // testOpenConnectionTwice
        XCTAssertNotEqual(battery.open(), kIOReturnSuccess)
        
        // testCloseConnectionTwice
        XCTAssertEqual(battery.close(), kIOReturnSuccess)
        //XCTAssertNotEqual(battery.close(), kIOReturnSuccess)
        
        // Test that we can reopen and things still work
        //battery.open()
    }
}
