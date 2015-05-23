import UIKit

extension String {
    static func fromDouble(doubleValue: Double) -> String {
        var temp = String(format: "%.2f", doubleValue)
        return temp as String
    }
}


String.fromDouble(24.50)