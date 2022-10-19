//
//  UnitTestUITests.swift
//  UnitTestUITests
//
//  Created by Sümeyye Kılıçoğlu on 18.10.2022.
//

import XCTest

class UnitTestUITests: XCTestCase {
    
    
    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        
        let addButton = app.navigationBars["UnitTest.View"].buttons["Add"]
        let elementsQuery = app.alerts["Add İtem"].scrollViews.otherElements
        let textField = elementsQuery.collectionViews/*@START_MENU_TOKEN@*/.textFields["Enter İtem"]/*[[".cells.textFields[\"Enter İtem\"]",".textFields[\"Enter İtem\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let okButton = elementsQuery.buttons["OK"]
        let addedCell = app.tables.cells.containing(.staticText, identifier:"my to do").element
        
        addButton.tap()
        textField.tap()
        textField.typeText("my to do")
        okButton.tap()
        
        XCTAssertTrue(addedCell.exists)
    }
    
    func testDeleteItem() throws {
        let app = XCUIApplication()
        app.launch()
        
        let addButton = app.navigationBars["UnitTest.View"].buttons["Add"]
        let elementsQuery = app.alerts["Add İtem"].scrollViews.otherElements
        let textField = elementsQuery.collectionViews/*@START_MENU_TOKEN@*/.textFields["Enter İtem"]/*[[".cells.textFields[\"Enter İtem\"]",".textFields[\"Enter İtem\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let okButton = elementsQuery.buttons["OK"]
        let addedCell = app.tables.cells.containing(.staticText, identifier:"my to do").element
        
        
        let tablesQuery = app.tables
        let deleteButton = tablesQuery/*@START_MENU_TOKEN@*/.buttons["Delete"]/*[[".cells.buttons[\"Delete\"]",".buttons[\"Delete\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        addButton.tap()
        textField.tap()
        textField.typeText("my to do")
        okButton.tap()

        addedCell.swipeLeft()
        deleteButton.tap()
        
        XCTAssertFalse(addedCell.exists)
        
        
        
    }
}

