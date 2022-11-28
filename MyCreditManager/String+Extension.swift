//
//  String+Extension.swift
//  MyCreditManager
//
//  Created by JihoMac on 2022/11/15.
//

import Cocoa
import Foundation

extension String {
    
    // 영문 인지
    func checkEnglish() -> Bool {
        if self.isEmpty { return false }
        let set = CharacterSet.letters
        for us in self.unicodeScalars where !set.contains(us) { return false }
        return true
    }
    
    // 성적(A+, A, B+, B, C+, C, D+, D, F) 인지
    func checkGrade() -> Bool {
        if self.isEmpty { return false }
        if self == "F" { return true }
        do {
            var regex: NSRegularExpression
            if self.count == 1 {
                regex = try NSRegularExpression(pattern: "([A-D])",
                                                    options: .caseInsensitive)
            } else {
                regex = try NSRegularExpression(pattern: "([A-D])+\\+",
                                                    options: .caseInsensitive)
            }
            if let _ = regex.firstMatch(in: self,
                                        options: .reportCompletion,
                                        range: NSMakeRange(0, self.count)) {
                return true
            }
        } catch {
            return false
        }
        return false
    }
    
}
