//
//  ViewController.m
//  VCHomework
//
//  Created by 2 on 2/2/16.
//  Copyright © 2016 2. All rights reserved.
//

#import "ViewController.h"
#import "SMVViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
    SMVViewController *viewController = [SMVViewController new];    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    [navigationController setToolbarHidden:NO animated:YES];
    [self presentViewController:navigationController animated:YES completion:nil];
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)loadView {
    [super loadView];
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end
