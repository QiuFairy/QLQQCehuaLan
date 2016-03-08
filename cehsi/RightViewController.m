//
//  RightViewController.m
//  cehsi
//
//  Created by QiuFairy on 15/7/19.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "RightViewController.h"
#import "OtherViewController.h"

@interface RightViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *msgLabel;
@end

@implementation RightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeLabel:(id)sender {
    if (![self.textField.text isEqual:@""]) {
        self.msgLabel.text = self.textField.text;
    }else{
        OtherViewController *otherVC = [self.storyboard instantiateViewControllerWithIdentifier:@"otherVC"];
        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:otherVC];
        
        [self presentViewController:nav animated:YES completion:nil];

    }
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.textField resignFirstResponder];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
