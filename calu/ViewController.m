//
//  ViewController.m
//  calu
//
//  Created by 安倍裕貴 on 2014/07/28.
//  Copyright (c) 2014年 Yuki Abe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    BOOL flag;
    
}

@end

@implementation ViewController
@synthesize buttonNumber;
@synthesize countNumber;
@synthesize calcFlug;
@synthesize subtotal;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    flag = false;
	// Do any additional setup after loading the view, typically from a nib.
    
}
    
- (IBAction)inputNumber1:(id)sender {
    
    self.buttonNumber = 1;
    [self labelOutput];
    
}

- (IBAction)inputNumber2:(id)sender {
    
    self.buttonNumber = 2;
    [self labelOutput];
    
}

- (IBAction)inputNumber3:(id)sender {
    
    self.buttonNumber = 3;
    [self labelOutput];

}

- (IBAction)inputNumber4:(id)sender{
    
    self.buttonNumber = 4;
    [self labelOutput];

}

- (IBAction)inputNumber5:(id)sender {
    
    self.buttonNumber = 5;
    [self labelOutput];

}

- (IBAction)inputNumber6:(id)sender {
    
    self.buttonNumber = 6;
    [self labelOutput];

}

- (IBAction)inputNumber7:(id)sender {
    
    self.buttonNumber = 7;
    [self labelOutput];

}

- (IBAction)inputNumber8:(id)sender {
    
    self.buttonNumber = 8;
    [self labelOutput];

}

- (IBAction)inputNumber9:(id)sender {
    
    self.buttonNumber = 9;
    [self labelOutput];

}

- (IBAction)inputNumber0:(id)sender {
    
    self.buttonNumber = 0;
    [self labelOutput];
    
}

- (void) labelOutput{
    
    self.countNumber = (self.countNumber *10)+self.buttonNumber;
    NSString *print = [[NSString alloc] initWithFormat:@"%d",countNumber];

    self.numberOutput.text = print;
    
}

- (IBAction)addButton:(id)sender {
    
    if(flag == true){
        switch (calcFlug) {
            case 1:
                self.subtotal += self.countNumber;
                break;
            case 2:
                self.subtotal -= self.countNumber;
                break;
            case 3:
                self.subtotal *= self.countNumber;
                break;
            case 4:
                self.subtotal /= self.countNumber;
                break;
            default:
                break;
        }
        
        
    }else{
        flag =true;
        self.subtotal = self.countNumber;
    }

    self.calcFlug = 1;
    [self calc];
    
}

- (IBAction)sunbButton:(id)sender {
    
    if(flag == true){
        switch (calcFlug) {
            case 1:
                self.subtotal += self.countNumber;
                break;
            case 2:
                self.subtotal -= self.countNumber;
                break;
            case 3:
                self.subtotal *= self.countNumber;
                break;
            case 4:
                self.subtotal /= self.countNumber;
                break;
            default:
                break;
        }
        
        
    }else{
        flag =true;
        self.subtotal = self.countNumber;
    }
    
    self.calcFlug = 2;
    [self calc];
}

- (IBAction)mulButton:(id)sender {
    
    if(flag == true){
        switch (calcFlug) {
            case 1:
                self.subtotal += self.countNumber;
                break;
            case 2:
                self.subtotal -= self.countNumber;
                break;
            case 3:
                self.subtotal *= self.countNumber;
                break;
            case 4:
                self.subtotal /= self.countNumber;
                break;
            default:
                break;
        }
        
        
    }else{
        flag =true;
        self.subtotal = self.countNumber;
    }

    self.calcFlug = 3;
    [self calc];
}

- (IBAction)divButton:(id)sender {
    
    if(flag == true){
        switch (calcFlug) {
            case 1:
                self.subtotal += self.countNumber;
                break;
            case 2:
                self.subtotal -= self.countNumber;
                break;
            case 3:
                self.subtotal *= self.countNumber;
                break;
            case 4:
                self.subtotal /= self.countNumber;
                break;
            default:
                break;
        }
        
        
    }else{
        flag =true;
        self.subtotal = self.countNumber;
    }

    self.calcFlug = 4;
    [self calc];
}

- (IBAction)clearButton:(id)sender {
    
    self.buttonNumber = 0;
    self.subtotal = 0;
    self.calcFlug = 0;
    self.countNumber = 0;
    [self labelOutput];
    flag = false;
    }

- (IBAction)equallButton:(id)sender {
    
    switch (calcFlug) {
        case 1:
            self.subtotal += self.countNumber;
            break;
        case 2:
            self.subtotal -= self.countNumber;
            break;
        case 3:
            self.subtotal *= self.countNumber;
            break;
        case 4:
            self.subtotal /= self.countNumber;
            break;
        default:
            break;
    }
    
    
    
    countNumber = subtotal;
    NSString *print = [[NSString alloc] initWithFormat:@"%d",countNumber];
    self.numberOutput.text = print;
    flag = false;
}

- (void)calc{
    
    //画面の入力された数値をクリアする。
    self.countNumber = 0;
    NSString *print = [[NSString alloc] initWithFormat:@"%d",subtotal];
    self.numberOutput.text = print;
    NSLog(@"%d",self.countNumber);
    NSLog(@"%d",self.subtotal);
    
    }
    
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
