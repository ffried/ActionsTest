import Foundation
import Danger

fileprivate extension Danger.File {
    var isDangerfile: Bool {
        self == "Dangerfile.swift"
    }
}

let danger = Danger()
//let git = danger.git

if Bool.random() {
   danger.warn("Random warning")
}

