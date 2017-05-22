//
//  UIImage+Extension.h
//
//  Created by Allan-Dev1 on 2017-05-12.
//  Copyright © 2017 Allan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIImage (Extension)
 
- (UIImage *) resizeImageWithSize: (CGSize) size;
- (UIImage *) avatarImage: (CGSize) size;
- (UIImage *) avatarImage: (CGSize) size backColor: (UIColor *)backColor;
@end
