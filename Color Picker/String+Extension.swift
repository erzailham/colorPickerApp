//
//  String+Extension.swift
//  Color Picker
//
//  Created by Reza Ilham on 02/11/22.
//

import Foundation

extension String {
    
    func getFormattedDate(fromFormat: String ,toFormat:String) -> String{
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = fromFormat
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = toFormat
        
        let date: Date? = dateFormatterGet.date(from: self)

        return dateFormatterPrint.string(from: date!);
    }
}

extension Int {
    
    func convertToString() -> String {
        return "\(self)"
    }
    
}
