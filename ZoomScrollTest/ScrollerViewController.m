//
//  ScrollerViewController.m
//  ZoomScrollTest
//
//  Created by Thomas Kincaid on 2/23/14.
//  Copyright (c) 2014 Tom's Apps, LLC. All rights reserved.
//

#import "ScrollerViewController.h"
#import "ImageViewController.h"

@interface ScrollerViewController ()

@end

@implementation ScrollerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
	
    // outer scroll view for paging with two pages
    CGRect frame = CGRectMake(0,0,self.view.bounds.size.width,self.view.bounds.size.height);
    UIScrollView *pagingScroller = [[UIScrollView alloc] initWithFrame:frame];
    pagingScroller.pagingEnabled = YES;
    pagingScroller.scrollsToTop = NO;
    pagingScroller.userInteractionEnabled = YES;
    pagingScroller.contentSize = CGSizeMake(self.view.bounds.size.width*2,self.view.bounds.size.height);
   
    // first page
    ImageViewController *page1 = [[ImageViewController alloc] init];
    page1.filename = @"cat.jpg";
    page1.view.frame = CGRectMake(0,0,self.view.bounds.size.width,self.view.bounds.size.height);
    [pagingScroller addSubview:page1.view];
    
    // second page
    ImageViewController *page2 = [[ImageViewController alloc] init];
    page2.filename = @"dog.jpg";
    page2.view.frame = CGRectMake(self.view.bounds.size.width,0,self.view.bounds.size.width,self.view.bounds.size.height);
    [pagingScroller addSubview:page2.view];

    self.view = pagingScroller;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
