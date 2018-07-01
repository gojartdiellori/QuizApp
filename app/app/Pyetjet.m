//
//  Pyetjet.m
//  app
//
//  Created by Besart Veliu on 24.06.18.
//  Copyright © 2018 Besart Veliu. All rights reserved.
//

#import "Pyetjet.h"
#import "TableViewController.h"

@interface Pyetjet ()

@end

@implementation Pyetjet

@synthesize rez;
- (void)viewDidLoad {
    
    
    [super viewDidLoad];
    
    rez=[[NSMutableArray alloc]init];
    
    pozita=1;
    
    btnRez.hidden=YES;
    piket=0;
   
    [self pyetjet];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)b1:(id)sender {
    
    if(ans1==YES)
    {
      
        [rez addObject:@"Sakte"];
       
        lblSakte.text=@"Sakte!";
       
        piket++;
        
    }
        else
        {
            [rez addObject:@"Gabim"];
            lblSakte.text=@"Gabim!";
            
            
        }
    btnTjetra.enabled=YES;
    btnPer1.enabled=NO;
    btnPer2.enabled=NO;
    btnPer3.enabled=NO;
    btnPer4.enabled=NO;
   
}

- (IBAction)b2:(id)sender {
    
   if(ans2==YES)
    {
        
        [rez addObject:@"Sakte"];
        lblSakte.text=@"Sakte!";
       
        
     piket++;
        
    }
    else
    {
        [rez addObject:@"Gabim"];
        lblSakte.text=@"Gabim!";
       
    }
    btnTjetra.enabled=YES;
    btnPer1.enabled=NO;
    btnPer2.enabled=NO;
    btnPer3.enabled=NO;
    btnPer4.enabled=NO;
   
}

- (IBAction)b3:(id)sender {
    
    if(ans3==YES)
    {
        [rez addObject:@"Sakte"];
        lblSakte.text=@"Sakte!";
        
        
        piket++;
        
        
    }
        else
        {
             [rez addObject:@"Gabim"];
        lblSakte.text=@"Gabim!";
            
        
        }
    btnTjetra.enabled=YES;
    btnPer1.enabled=NO;
    btnPer2.enabled=NO;
    btnPer3.enabled=NO;
    btnPer4.enabled=NO;
    
}

- (IBAction)b4:(id)sender {
    
    if(ans4==YES){
        
        [rez addObject:@"Sakte"];
        lblSakte.text=@"Sakte!";
        
       
        piket++;
        
      
    }else
    {
        [rez addObject:@"Gabim"];
        lblSakte.text=@"Gabim!";
        
       
    
    }
    btnTjetra.enabled=YES;
    btnPer1.enabled=NO;
    btnPer2.enabled=NO;
    btnPer3.enabled=NO;
    btnPer4.enabled=NO;
    
}

- (IBAction)bNext:(id)sender {
    if(pozita==10)
    {
        [btnTjetra setTitle:@"Perfundo" forState:(UIControlStateNormal)];
         
    }
    if(pozita>10)
    {
        NSString *title=@"Mesazhi";
        NSString *message=[NSString stringWithFormat:@"Ju keni fituar %d pike !",piket];
        
        NSString *okText=@"Ok";
        UIAlertController *alert=[UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okButton =[UIAlertAction actionWithTitle:okText style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:okButton];
        [self presentViewController:alert animated:YES completion:nil];
        btnRez.hidden=NO;
        
        
    }
    [self pyetjet];
   
}
-(void)pyetjet {
    btnTjetra.enabled=NO;
    lblSakte.text=@"";
    btnPer1.enabled=YES;
    btnPer2.enabled=YES;
    btnPer3.enabled=YES;
    btnPer4.enabled=YES;
    ans1=NO;
    ans2=NO;
    ans3=NO;
    ans4=NO;
    switch(pozita){
case 1 :
            lblInfo.text=@"Pyetja 1";
    Pyetja.text=@"Flamuri ne foto ?";
    Foto.image=[UIImage imageNamed:@"northkorea.gif"];
    [btnPer1 setTitle:@"Koreja Jugore" forState:(UIControlStateNormal)];
    [btnPer2 setTitle:@"Korea Veriore" forState:(UIControlStateNormal)];
    [btnPer3 setTitle:@"Singapori" forState:(UIControlStateNormal)];
    [btnPer4 setTitle:@"Japonia" forState:(UIControlStateNormal)];
            ans2=YES;
            pozita+=1;
            break;
    
case 2 :
            lblInfo.text=@"Pyetja 2";
    Pyetja.text=@"Flamuri ne foto ?";
    Foto.image=[UIImage imageNamed:@"colombia.png"];
    [btnPer1 setTitle:@"Venezuela" forState:(UIControlStateNormal)];
    [btnPer2 setTitle:@"Bolivia" forState:(UIControlStateNormal)];
    [btnPer3 setTitle:@"Peru" forState:(UIControlStateNormal)];
    [btnPer4 setTitle:@"Kolumbia" forState:(UIControlStateNormal)];
            ans4=YES;
            pozita+=1;
            break;
case 3 :
            lblInfo.text=@"Pyetja 3";
            Pyetja.text=@"Flamuri ne foto ?";
            Foto.image=[UIImage imageNamed:@"australia.GIF"];
            [btnPer1 setTitle:@"Zelanda e Re" forState:(UIControlStateNormal)];
            [btnPer2 setTitle:@"Maldive" forState:(UIControlStateNormal)];
            [btnPer3 setTitle:@"Australia" forState:(UIControlStateNormal)];
            [btnPer4 setTitle:@"Islanda" forState:(UIControlStateNormal)];
            ans3=YES;
            pozita+=1;
            break;
        case 4:
            lblInfo.text=@"Pyetja 4";
            Pyetja.text=@"Flamuri ne foto ?";
            Foto.image=[UIImage imageNamed:@"bolivia.png"];
            [btnPer1 setTitle:@"Bolivia" forState:(UIControlStateNormal)];
            [btnPer2 setTitle:@"Kolumbia" forState:(UIControlStateNormal)];
            [btnPer3 setTitle:@"Argjentina" forState:(UIControlStateNormal)];
            [btnPer4 setTitle:@"Brazili" forState:(UIControlStateNormal)];
            ans1=YES;
            pozita+=1;
            break;
        case 5:
            lblInfo.text=@"Pyetja 5";
            Pyetja.text=@"Flamuri ne foto ?";
            Foto.image=[UIImage imageNamed:@"iraq.png"];
            [btnPer1 setTitle:@"Iran" forState:(UIControlStateNormal)];
            [btnPer2 setTitle:@"Egjipt" forState:(UIControlStateNormal)];
            [btnPer3 setTitle:@"Irak" forState:(UIControlStateNormal)];
            [btnPer4 setTitle:@"Siri" forState:(UIControlStateNormal)];
            ans3=YES;
            pozita+=1;
            break;
        case 6:
            lblInfo.text=@"Pyetja 6";
            Pyetja.text=@"Flamuri ne foto ?";
            Foto.image=[UIImage imageNamed:@"ireland.png"];
            [btnPer1 setTitle:@"Irlanda" forState:(UIControlStateNormal)];
            [btnPer2 setTitle:@"Skocia" forState:(UIControlStateNormal)];
            [btnPer3 setTitle:@"Uellsi" forState:(UIControlStateNormal)];
            [btnPer4 setTitle:@"Belgjika" forState:(UIControlStateNormal)];
            ans1=YES;
            pozita+=1;
            break;
        case 7:
            lblInfo.text=@"Pyetja 7";
            Pyetja.text=@"Flamuri ne foto ?";
            Foto.image=[UIImage imageNamed:@"kanada.gif"];
            [btnPer1 setTitle:@"Meksisa" forState:(UIControlStateNormal)];
            [btnPer2 setTitle:@"SHBA" forState:(UIControlStateNormal)];
            [btnPer3 setTitle:@"Kanada" forState:(UIControlStateNormal)];
            [btnPer4 setTitle:@"Kuba" forState:(UIControlStateNormal)];
            ans3=YES;
            pozita+=1;
            break;
        case 8:
            lblInfo.text=@"Pyetja 8";
            Pyetja.text=@"Flamuri ne foto ?";
            Foto.image=[UIImage imageNamed:@"nigeria.jpg"];
            [btnPer1 setTitle:@"Senegal" forState:(UIControlStateNormal)];
            [btnPer2 setTitle:@"Nigeri" forState:(UIControlStateNormal)];
            [btnPer3 setTitle:@"Kameruni" forState:(UIControlStateNormal)];
            [btnPer4 setTitle:@"Nigeria" forState:(UIControlStateNormal)];
            ans4=YES;
            pozita+=1;
            break;
        case 9:
            lblInfo.text=@"Pyetja 9";
            Pyetja.text=@"Flamuri ne foto ?";
            Foto.image=[UIImage imageNamed:@"norway.png"];
            [btnPer1 setTitle:@"Finlanda" forState:(UIControlStateNormal)];
            [btnPer2 setTitle:@"Suedia" forState:(UIControlStateNormal)];
            [btnPer3 setTitle:@"Norvegjia" forState:(UIControlStateNormal)];
            [btnPer4 setTitle:@"Danimarka" forState:(UIControlStateNormal)];
            ans3=YES;
            pozita+=1;
            break;
        case 10:
            lblInfo.text=@"Pyetja 10";
            Pyetja.text=@"Flamuri ne foto ?";
            Foto.image=[UIImage imageNamed:@"srilanka.jpg"];
            [btnPer1 setTitle:@"Sri Lanka" forState:(UIControlStateNormal)];
            [btnPer2 setTitle:@"Japonia" forState:(UIControlStateNormal)];
            [btnPer3 setTitle:@"Jordania" forState:(UIControlStateNormal)];
            [btnPer4 setTitle:@"Tunizia" forState:(UIControlStateNormal)];
            ans1=YES;
            pozita+=1;
            break;
            default:
            btnPer1.enabled=NO;
            btnPer2.enabled=NO;
            btnPer3.enabled=NO;
            btnPer4.enabled=NO;
            break;
            
    }
    
  
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"passSegue"])
    {
        
        TableViewController *tvc;
         tvc=[segue destinationViewController];
        
        tvc.array=rez;
       
        
        
        
        
    }
}

@end
