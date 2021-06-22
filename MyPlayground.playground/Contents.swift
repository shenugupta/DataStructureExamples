import UIKit

var str = "Hello, playground"

class Circle {
    
    public private(set) var diameter: Double = 0.0
    
    // type property
    static var testStr: String = "static type property"
    
    lazy var testString: String = {
        print("initialize property only one time, not allocate block of code again")
        return "testString"
        
    }()
    
    // radious stored properties
    var radius: Double = 0 {
        willSet {
            print("radius new value \(newValue)")
        }
        
        // observer properties
        didSet {
            if radius < 0 {
                radius = oldValue
            }
        }
    }
// computed property
    var area: Double {
        get {
            return radius * radius
        }
    }
}



let circle = Circle()
circle.radius = 10
print("radius: \(circle.radius)")
print("area: \(circle.area)")

// lazy properties block of code will execute only once, never execute again and again and its allocates memory when its used, ratain cycle not increase
print(circle.testString)
print(circle.testString)

//type property accesble with class only not its instance, and propery should declare with static keyword
print(Circle.testStr)

// error will shown bcz its private stored property and accsible only inside class
//circle.diameter = 20
 
