//: Playground - noun: a place where people can play

import UIKit

struct Point {
    var x: Double
    var y: Double
}

var point1 = Point(x: 2, y: 3)
var point2 = Point(x: 5, y: 5)
var point3 = Point(x: 6, y: 9)

struct Line {
    var start: Point
    var end: Point
    func lengthline() -> Double {
        return sqrt((start.x - end.x)*(start.x - end.x) + (start.x - end.x)*(start.x - end.x))
    }
}

var line1 = Line(start: point1, end: point2)
print(line1.lengthline())


//now try for triangle
struct Triangle {
    var points = [Point]()
    func area() -> Double {
        let area1 = ((points[0].x-points[2].x)*(points[1].y-points[0].y)-(points[0].x-points[1].x)*(points[2].y-points[0].y))
        return 1/2 * abs(area1)
    }
}

var triangle1 = Triangle()
triangle1.points.append(point1)
triangle1.points.append(point2)
triangle1.points.append(point3)
print(triangle1.points)

print(triangle1.area())


