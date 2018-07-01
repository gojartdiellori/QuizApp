//
//  TableViewController.h
//  app
//
//  Created by Besart Veliu on 24.06.18.
//  Copyright © 2018 Besart Veliu. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface TableViewController : UITableViewController <UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong)NSMutableArray *array;





@end
