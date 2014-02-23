//
//  ImageViewController.h
//  ZoomScrollTest
//
//  Created by Thomas Kincaid on 2/23/14.
//  Copyright (c) 2014 Tom's Apps, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageViewController : UIViewController <UIScrollViewDelegate>

@property (strong, atomic) IBOutlet UIImageView *imageView;

@property (strong, atomic) IBOutlet NSString *filename;

@end
