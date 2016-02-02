//
//  ViewController.m
//  VCHomework
//
//  Created by 2 on 2/2/16.
//  Copyright © 2016 2. All rights reserved.
//

#import "ViewController.h"
#import "SMVViewController.h"
#import "UIColor+Utility.h"

@interface ViewController ()
@property (nonatomic) UINavigationController *navigationController;
@end

@implementation ViewController

- (void)changeBackgroundColorOnViewController {
    UIViewController *visibleViewController = [self.navigationController visibleViewController];    
    visibleViewController.view.backgroundColor = [UIColor randomColor];
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)dropToRootViewController {
    [self.navigationController popToRootViewControllerAnimated:YES];
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)createViewController {
    SMVViewController *viewController = [SMVViewController new];
    viewController.view = [[UIView alloc] initWithFrame:self.view.frame];
    viewController.view.backgroundColor = [UIColor greenColor];
    viewController.title = [NSString stringWithFormat:@"VC - %lu", (unsigned long)self.navigationController.viewControllers.count];
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:[NSString stringWithFormat:@"Create VC - %lu", (unsigned long)self.navigationController.viewControllers.count + 1] style:UIBarButtonItemStylePlain target:self action:@selector(createViewController)];
    
    UIBarButtonItem *dropButton = [[UIBarButtonItem alloc] initWithTitle:@"Drop" style:UIBarButtonItemStylePlain target:self action:@selector(dropToRootViewController)];
    
    UIBarButtonItem *randomColorButton = [[UIBarButtonItem alloc] initWithTitle:@"Change color" style:UIBarButtonItemStylePlain target:self action:@selector(changeBackgroundColorOnViewController)];
    
    viewController.navigationItem.rightBarButtonItem = rightButton;
    [viewController setToolbarItems:@[randomColorButton, dropButton] animated:YES];
    
    [self.navigationController pushViewController:viewController animated:YES];
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)viewDidAppear:(BOOL)animated {
    self.navigationController = [[UINavigationController alloc] init];
    [self.navigationController setToolbarHidden:NO animated:YES];
    [self presentViewController:self.navigationController animated:YES completion:nil];
    [self createViewController];
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

@end
