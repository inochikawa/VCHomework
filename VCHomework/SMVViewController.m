//
//  SMVViewController.m
//  VCHomework
//
//  Created by 2 on 2/2/16.
//  Copyright © 2016 2. All rights reserved.
//

#import "SMVViewController.h"
#import "UIColor+Utility.h"

@implementation SMVViewController

- (void)createViewController {
    SMVViewController *viewController = [SMVViewController new];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)changeBackgroundColorOnViewController {
    self.view.backgroundColor = [UIColor randomColor];
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)dropToRootViewController {
    if (!self.navigationController) {
        NSLog(@"Error - navigationController = nil");
    }
    else {
        [self.navigationController popToRootViewControllerAnimated:YES];
        NSLog(@"%s", __PRETTY_FUNCTION__);
    }
}


- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (!self.navigationController) {
        NSLog(@"Error - navigationController = nil");
        return;
    }
    
    self.view = [[UIView alloc] initWithFrame:self.view.frame];
    self.view.backgroundColor = [UIColor greenColor];
    self.title = [NSString stringWithFormat:@"VC - %lu", (unsigned long)self.navigationController.viewControllers.count];
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:[NSString stringWithFormat:@"Create VC - %lu", (unsigned long)self.navigationController.viewControllers.count + 1] style:UIBarButtonItemStylePlain target:self action:@selector(createViewController)];
    
    UIBarButtonItem *dropButton = [[UIBarButtonItem alloc] initWithTitle:@"Drop" style:UIBarButtonItemStylePlain target:self action:@selector(dropToRootViewController)];
    
    UIBarButtonItem *randomColorButton = [[UIBarButtonItem alloc] initWithTitle:@"Change color" style:UIBarButtonItemStylePlain target:self action:@selector(changeBackgroundColorOnViewController)];
    
    self.navigationItem.rightBarButtonItem = rightButton;
    [self setToolbarItems:@[randomColorButton, dropButton] animated:YES];
    
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

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)didAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    [super didAnimateFirstHalfOfRotationToInterfaceOrientation:toInterfaceOrientation];
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)willAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    [super willAnimateFirstHalfOfRotationToInterfaceOrientation:toInterfaceOrientation duration:duration];
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    [super didRotateFromInterfaceOrientation:fromInterfaceOrientation];
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)loadView {
    [super loadView];
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end
