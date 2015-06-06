# UIPrimitives
Basic shapes ● ◼ ▲  drawn in Swift with configurable properties.

**Draw an oval**

    UIPrimitives.drawOval(width: 100, height: 100, fillColor: UIColor.redColor(), strokeSize: 12, strokeColor: UIColor.greenColor(), rotation: 20)

**Draw a rectangle**

    UIPrimitives.drawRectangle(width: 100, height: 100, cornerRadius: 10, fillColor: UIColor.redColor(), strokeSize: 12, strokeColor: UIColor.greenColor(), rotation: 50)

**Draw a triangle**

    UIPrimitives.drawTriangle(width: 100, height: 100, fillColor: UIColor.redColor(), strokeSize: 1, strokeColor: UIColor.greenColor(), rotation: 10)

**only width and height parameters are required to draw the shapes - default values for the other parameters are implied.* 

Default parameter values:

 - `cornerRadius` has the default value of `0` 
 - `fillColor` has the default value of `UIColor.redColor()` 
 - `strokeSize` has the default value of `0`
 - `strokeColor` has the default value of `UIColor.clearColor()`
 - `rotation` has the default value of `0`

----------


