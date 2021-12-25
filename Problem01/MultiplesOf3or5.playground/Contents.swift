import Foundation

// If If we list all the natural numbers below 10 that are multiples of 3 or 5,
// we get 3, 5, 6 and 9. The sum of these multiples is 23.
// Find the sum of all the multiples of 3 or 5 below 1000.

func solution(p: Int) -> Int {
    let three: Double = (Double(p) / 3.0).rounded(.down)
    let five: Double = (Double(p) / 5.0).rounded(.down)
    let mcm: Double = (Double(p) / 15.0).rounded(.down)
    let result3:Int = Int(3 * three * (three + 1.0) * 0.5)
    let result5:Int = Int(5 * five * (five + 1.0) * 0.5)
    let result15:Int = Int(15 * mcm * (mcm + 1.0) * 0.5)
    
    let result: Double =  Double(result3  + result5  - result15)
    
    return Int(result)
}


 print(solution(p: 999))

