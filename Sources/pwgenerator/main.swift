import ArgumentParser
import Foundation

struct PWGenerator: ParsableCommand {
    static let configuration = CommandConfiguration(abstract: "Generates a random Password", version: "0.0.1")
    
    @Argument(help: "Specified length") var length: Int = 8
    @Flag(name: .short, help: "Include uppercase letters") var upperCase = false
    @Flag(name: .short, help: "Include special characters") var specialCharacters = false
    @Flag(name: .short, help: "Include numbers") var numbers = false

    mutating func run() throws {
        let uppercaseLettersAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let digits = "0123456789"
        let lowercaseLettersAlphabet = uppercaseLettersAlphabet.lowercased()
        let symbols = "@#$%^&*()_[].,;:€!"
        var pw = ""
        
        for _ in 0...10 {
            for _ in 0...length - 1 {
                if upperCase {
                    if Bool.random() {
                        pw += String(uppercaseLettersAlphabet.randomElement()!)
                        continue
                    }
                }
                
                if specialCharacters {
                    if Bool.random() {
                        pw += String(symbols.randomElement()!)
                        continue
                    }
                }
                
                if numbers {
                    if Bool.random() {
                        pw += String(digits.randomElement()!)
                        continue
                    }
                }
                pw += String(lowercaseLettersAlphabet.randomElement()!)
            }
            print(pw)
            pw = ""
        }
    }
}

PWGenerator.main()
