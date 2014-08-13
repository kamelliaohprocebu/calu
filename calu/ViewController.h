//
//  ViewController.h
//  calu
//
//  Created by 安倍裕貴 on 2014/07/28.
//  Copyright (c) 2014年 Yuki Abe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, assign) NSInteger buttonNumber;
@property (nonatomic, assign) NSInteger countNumber;
@property (nonatomic, assign) NSInteger calcFlug;
@property (nonatomic, assign) NSInteger subtotal;

- (IBAction)inputNumber1:(id)sender;
- (IBAction)inputNumber2:(id)sender;
- (IBAction)inputNumber3:(id)sender;
- (IBAction)inputNumber4:(id)sender;
- (IBAction)inputNumber5:(id)sender;
- (IBAction)inputNumber6:(id)sender;
- (IBAction)inputNumber7:(id)sender;
- (IBAction)inputNumber8:(id)sender;
- (IBAction)inputNumber9:(id)sender;
- (IBAction)inputNumber0:(id)sender;

- (IBAction)addButton:(id)sender;
- (IBAction)sunbButton:(id)sender;
- (IBAction)mulButton:(id)sender;
- (IBAction)divButton:(id)sender;

- (IBAction)clearButton:(id)sender;
- (IBAction)equallButton:(id)sender;


@property (weak, nonatomic) IBOutlet UILabel *numberOutput;
@end
