
import Foundation

extension NSObjectProtocol {
    
    func cast<T, U>(_ view: T) -> U {
        let message = "Couldn't cast object '\(String(describing: view))' to '\(U.self)' file: \(#file), line: \(#line)"
        return self.cast(view, message: message)
    }
    
    func cast<T, U>(_ view: T, file: String = #file) -> U {
        let message = "Couldn't cast object '\(String(describing: view))' to '\(U.self)' file: \(file), line: \(#line)"
        return self.cast(view, message: message)
    }
    
    func cast<T, U>(_ view: T, file: String = #file, line: Int = #line) -> U {
        let message = "Couldn't cast object '\(String(describing: view))' to '\(U.self)' file: \(file), line: \(line)"
        return self.cast(view, message: message)
    }
    
    private func cast<T, U>(_ view: T, message: @autoclosure () -> String) -> U {
        guard let castedview = view as? U else {
            fatalError(message)
        }
        return castedview
    }
}

extension NSObjectProtocol {
    
    func cast<T, U>(_ view: T?) -> U? {
        let message = "Couldn't cast object '\(String(describing: view))' to '\(U.self)' file: \(#file), line: \(#line)"
        return self.cast(view, message: message)
    }
    
    func cast<T, U>(_ view: T?, file: String = #file) -> U? {
        let message = "Couldn't cast object '\(String(describing: view))' to '\(U.self)' file: \(file), line: \(#line)"
        return self.cast(view, message: message)
    }
    
    func cast<T, U>(_ view: T?, file: String = #file, line: Int = #line) -> U? {
        let message = "Couldn't cast object '\(String(describing: view))' to '\(U.self)' file: \(file), line: \(line)"
        return self.cast(view, message: message)
    }
    
    private func cast<T, U>(_ view: T?, message: @autoclosure () -> String) -> U? {
        guard let nonOptional = view else {
            return nil
        }
        
        guard let castedview = nonOptional as? U else {
            fatalError(message)
        }
        return castedview
    }
}
