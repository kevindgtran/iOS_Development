//
//  Rectangle.h
//  RectangleClass
//
//  Created by Kevin Tran on 9/8/17.
//  Copyright © 2017 com.example. All rights reserved.
//

@interface Rectangle : NSObject

@property int width, height;

-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;
-(void) setWidth: (int) w setHeight: (int) h;

@end
