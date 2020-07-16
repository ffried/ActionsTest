import Foundation
import Danger

let danger = Danger()
let git = danger.git
let changedFiles = git.modifiedFiles + git.createdFiles

if Bool.random(), let randomFile = changedFiles.randomElement() {
   let lines = danger.utils.readFile(randomFile).split(separator: "\n")
   if let randomLine = lines.indices.randomElement() {
      markdown(message: "Random remark", file: randomFile, line: randomLine + 1)
   }
}

if Bool.random() {
   warn("Random warning")
}
