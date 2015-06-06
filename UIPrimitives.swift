public class UIPrimitives{
    public class func drawOval(#width: CGFloat, height: CGFloat, fillColor: UIColor = UIColor.redColor(), strokeSize: CGFloat = 0, strokeColor: UIColor = UIColor.clearColor(), rotation: CGFloat = 0) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()
        
        //// Oval Drawing
        CGContextSaveGState(context)

        if rotation != 0{
            CGContextRotateCTM(context, -rotation * CGFloat(M_PI) / 180)
        }
        
        var ovalPath = UIBezierPath(ovalInRect: CGRectMake(-width/2, -height/2, width, height))
        fillColor.setFill()
        ovalPath.fill()

        if strokeSize != 0 {
            strokeColor.setStroke()
            ovalPath.lineWidth = strokeSize
            ovalPath.stroke()
        }
        
        CGContextRestoreGState(context)
    }
    
    public class func drawRectangle(#width: CGFloat, height: CGFloat, cornerRadius:CGFloat = 0, fillColor: UIColor = UIColor.redColor(), strokeSize: CGFloat = 0, strokeColor: UIColor = UIColor.clearColor(), rotation: CGFloat = 0) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()
        
        //// Rectangle 2 Drawing
        CGContextSaveGState(context)

        if rotation != 0{
            CGContextRotateCTM(context, -rotation * CGFloat(M_PI) / 180)
        }
        
        let rectangle2Path = UIBezierPath(roundedRect: CGRectMake(-width/2, -height/2, width, height), cornerRadius: cornerRadius)
        fillColor.setFill()
        rectangle2Path.fill()
        
        if strokeSize != 0 {
            strokeColor.setStroke()
            rectangle2Path.lineWidth = strokeSize
            rectangle2Path.stroke()
        }
        
        CGContextRestoreGState(context)
    }
    
    public class func drawTriangle(#width: CGFloat, height: CGFloat, fillColor: UIColor = UIColor.redColor(), strokeSize: CGFloat = 0, strokeColor: UIColor = UIColor.clearColor(), rotation: CGFloat = 0) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()
        
        //// Polygon Drawing
        CGContextSaveGState(context)
        
        if rotation != 0{
            CGContextRotateCTM(context, -rotation * CGFloat(M_PI) / 180)
        }
        
        var trianglePath = UIBezierPath()
        trianglePath.moveToPoint(CGPointMake(-width/2, 0))
        trianglePath.addLineToPoint(CGPointMake(-width, -height))
        trianglePath.addLineToPoint(CGPointMake(0, -height))
        trianglePath.closePath()
        fillColor.setFill()
        trianglePath.fill()
        
        if strokeSize != 0 {
            strokeColor.setStroke()
            trianglePath.lineWidth = strokeSize
            trianglePath.stroke()
        }
        
        CGContextRestoreGState(context)
    }
}
