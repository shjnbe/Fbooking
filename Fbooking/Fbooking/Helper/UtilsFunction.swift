import UIKit

struct Log {
    static func debug(message: String, function: String = #function) {
        #if !NDEBUG
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        let date = formatter.string(from: NSDate() as Date)
        print("\(date) Func: \(function) : \(message)")
        #endif
    }
}
