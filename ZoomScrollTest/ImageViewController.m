//
//  ImageViewController.m
//  ZoomScrollTest
//
//  Created by Thomas Kincaid on 2/23/14.
//  Copyright (c) 2014 Tom's Apps, LLC. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

@end

@implementation ImageViewController

@synthesize imageView;
@synthesize filename;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
	
    // scroll view for pinch zooming
    CGRect frame = CGRectMake(0,0,self.view.bounds.size.width,self.view.bounds.size.height);
    UIScrollView *zoomScroller = [[UIScrollView alloc] initWithFrame:frame];
    zoomScroller.minimumZoomScale = 1.0;
    zoomScroller.maximumZoomScale = 5.0;
    zoomScroller.userInteractionEnabled = YES;
    zoomScroller.delegate = self;
    
    imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.userInteractionEnabled = YES;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.image = [UIImage imageNamed:filename];
    
    [zoomScroller addSubview:imageView];
    
    NSLog(@"%@ %f %f",filename,self.view.bounds.size.width,self.view.bounds.size.height);
    
    self.view = zoomScroller;
}

- (void) setImage:(NSString *)filename {
 
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return imageView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
