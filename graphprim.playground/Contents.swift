//: Playground - noun: a place where people can play

import UIKit
import Foundation

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
    func lengthline(start: Point, end: Point) -> Double {
        return sqrt((start.x - end.x)*(start.x - end.x) + (start.x - end.x)*(start.x - end.x))
    }
}

var line1 = Line(start: point1, end: point2)
print(line1.lengthline(start: line1.start, end: line1.end))

struct Triangle {
    var points = [Point]()
    func area(a: Point, b: Point, c: Point) -> Double {
        return 1/2 * (abs((a.x-c.x)(b.y-a.y)-(a.x-b.x)(c.y-a.y)))
    }
}

var triangle1 = Triangle()
triangle1.points.append(point1)
triangle1.points.append(point2)
triangle1.points.append(point3)
print(triangle1.points)

print(triangle1.area(a: triangle1.points[0], b: triangle1.points[1], c: triangle1.points[2]))


