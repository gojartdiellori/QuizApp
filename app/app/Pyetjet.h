//
//  Pyetjet.h
//  app
//
//  Created by Besart Veliu on 24.06.18.
//  Copyright © 2018 Besart Veliu. All rights reserved.
//

#import <UIKit/UIKit.h>

NSInteger pozita ;
BOOL ans1;
BOOL ans2;
BOOL ans3;
BOOL ans4;
NSInteger piket;


NSString *array1;


@interface Pyetjet : UIViewController
{
    
    __weak IBOutlet UIButton *btnRez;
    __weak IBOutlet UILabel *lblInfo;
    __weak IBOutlet UILabel *Pyetja;
    
    __weak IBOutlet UIButton *btnPer1;
    
    __weak IBOutlet UIButton *btnTjetra;
    __weak IBOutlet UIButton *btnPer4;
    __weak IBOutlet UILabel *lblSakte;
    __weak IBOutlet UIButton *btnPer3;
    __weak IBOutlet UIButton *btnPer2;
    __weak IBOutlet UIImageView *Foto;
}
- (IBAction)b1:(id)sender;
- (IBAction)b2:(id)sender;
- (IBAction)b3:(id)sender;
- (IBAction)b4:(id)sender;
- (IBAction)bNext:(id)sender;

@property(nonatomic,strong)NSMutableArray *rez;
-(void)pyetjet;




@end
