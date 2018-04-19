//
//  InterfaceController.swift
//  ExampleWatch Extension
//
//  Created by Takehito Koshimizu on 2018/04/22.
//

import WatchKit
import Foundation
import Prefectures

final class InterfaceController: WKInterfaceController {

    @IBOutlet private(set) weak var table: WKInterfaceTable!
    
    override func willActivate() {
        super.willActivate()

        let numberOfRows = Prefecture.allCases.count
        table.setNumberOfRows(numberOfRows, withRowType: "\(RowController.self)")
        for index in (0..<numberOfRows) {
            let row = table.rowController(at: index) as! RowController
            row.label.setText(Prefecture.allCases[index].description)
        }
    }
}

final class RowController: NSObject {
    @IBOutlet private(set) weak var label: WKInterfaceLabel!
}
