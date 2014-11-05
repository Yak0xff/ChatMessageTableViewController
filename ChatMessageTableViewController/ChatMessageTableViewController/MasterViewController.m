 

#import "MasterViewController.h"
#import "ViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"ChatMessageTableViewController";
    
    UIButton *chatBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    chatBtn.frame = CGRectMake(0, 0, 100, 50);
    chatBtn.center = CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds));
    [chatBtn setTitle:@"Push to Chat" forState:UIControlStateNormal];
    [chatBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [chatBtn addTarget:self action:@selector(beginChat:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:chatBtn];
}

- (void)beginChat:(id)sender{
    ViewController *chatViewController = [[ViewController alloc] init];
    [self.navigationController pushViewController:chatViewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
} 

@end
