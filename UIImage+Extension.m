//
//  UIImage+Extension.m
//
//  Created by Allan-Dev1 on 2017-05-12.
//  Copyright © 2017 Allan. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

 
/**
 Resize image for better memory performance

 @param size - new size of the image
 @return UIImage
 */
- (UIImage *) resizeImageWithSize: (CGSize) size
{
    CGRect imageRect = CGRectMake(0, 0, size.width , size.height);
    
    // get image contex
    UIGraphicsBeginImageContextWithOptions(size, true, 0);
  
    //draw image
    [self drawInRect:imageRect];
  
    // get result image
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    
    // close image context
    UIGraphicsEndImageContext();
    
    return result;
}



/**
 Resize and circle image with white background

 @param size - new size of the image
 @return UIImage
 */
- (UIImage *) avatarImage: (CGSize) size
{
    // default table cell image size
    if (size.height == 0 || size.width == 0) {
        size = CGSizeMake(48.0, 48.0);
    }
    CGRect imageRect = CGRectMake(0, 0, size.width , size.height);
    
    // get image contex
    UIGraphicsBeginImageContextWithOptions(size, true, 0);
    
    // set white background color
    UIColor *backColor = [UIColor whiteColor];
    [backColor setFill];
    UIRectFill(imageRect);
    
    // set circle
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:imageRect];
    [path addClip];
    
    //draw image
    [self drawInRect:imageRect];
    
    // get result image
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    
    // close image context
    UIGraphicsEndImageContext();
    
    return result;
}

/**
 Resize and circle image with background background
 
 @param size - new size of the image
@param backColor - background color
 @return UIImage
 */
- (UIImage *) avatarImage: (CGSize)size backColor: (UIColor *)backColor
{
    // default table cell image size
    if (size.height == 0 || size.width == 0) {
        size = CGSizeMake(48.0, 48.0);
    }
    
    CGRect imageRect = CGRectMake(0, 0, size.width , size.height);
    
    // get image contex
    UIGraphicsBeginImageContextWithOptions(size, true, 0);
    
    // set  background color
    [backColor setFill];
    UIRectFill(imageRect);
    
    // set circle
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:imageRect];
    [path addClip];
    
    //draw image
    [self drawInRect:imageRect];
    
    // get result image
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    
    // close image context
    UIGraphicsEndImageContext();
    
    return result;
}
@end
