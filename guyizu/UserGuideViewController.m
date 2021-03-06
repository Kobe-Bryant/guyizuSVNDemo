//
//  UserGuideViewController.m
//  guyizu
//
//  Created by 蓝叶软件 on 11/21/13.
//  Copyright (c) 2013 蓝叶软件. All rights reserved.
//

#import "UserGuideViewController.h"
#import "HomePageViewController.h"
#import "AppDelegate.h"



@interface UserGuideViewController ()

@end

@implementation UserGuideViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
    AppDelegate *thisApp = (AppDelegate *)[UIApplication sharedApplication].delegate;
    if (thisApp.isIphone4) {
        _height = 480;
        _buttonHeight = 410;
    }else{
        _height = 568;
        _buttonHeight = 485;
    }
    
    
    UIScrollView *fitstView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 320, _height)];
    fitstView.pagingEnabled = YES;
    fitstView.showsHorizontalScrollIndicator = NO;
    fitstView.showsVerticalScrollIndicator = NO;
    fitstView.bounces = NO;
    fitstView.contentSize = CGSizeMake(320 * 4, _height);
    for (NSUInteger i = 0; i<4; ++i) {
        NSString *imageName = [NSString stringWithFormat:@"bootpage0%d.png",i+1];
        UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imageName]];
        imageView.frame = CGRectMake(320 * i, 0, 320, _height);
        
        [fitstView addSubview:imageView];
    }
    [self.view addSubview:fitstView];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(80, _buttonHeight, 160, 40);
    button.backgroundColor = [UIColor colorWithRed:231/255.0 green:63/255.0 blue:37/255.0 alpha:1.0];
    [button setTitle:@"立即体验" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(returnToView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}



-(void)returnToView{
    AppDelegate *this = (AppDelegate *)[UIApplication sharedApplication].delegate;
    
//    HomePageViewController *homeCtl = [[HomePageViewController alloc]init];
    [self presentViewController:this.nav animated:NO completion:nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
