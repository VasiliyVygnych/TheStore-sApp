//
//  Extensions.swift
//  TheStore'sApp
//
//  Created by Vasiliy Vygnych on 02.02.2024.
//

import UIKit

//MARK: - extension String
extension String {
    func strikethroughText() -> NSAttributedString {
        let attributedText = NSAttributedString(
            string: self,
            attributes: [.strikethroughStyle: NSUnderlineStyle.single.rawValue]
        )
        return attributedText
    }
}
