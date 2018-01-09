//Solution goes in Sources
import Foundation

class Triangle {
    let a: Decimal
    let b: Decimal
    let c: Decimal
    init(_ a: Decimal, _ b: Decimal, _ c: Decimal) {
        self.a = a
        self.b = b
        self.c = c
    }
    var kind: String {
        if a <= 0 || b <= 0 || c <= 0 || a + b < c || a + c < b || b + c < a || a - b > c || a - c > b || b - c > a {
            return "ErrorKind"
        } else if a == b && a == c {
            return "Equilateral"
        } else if a == b || a == c || b == c {
            return "Isosceles"
        }
        return "Scalene"
    }
}
