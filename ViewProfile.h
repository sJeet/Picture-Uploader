//
//  ViewProfile.h
//  photoUploader
//
//  Created by Library-SCS on 5/11/14.
//  Copyright (c) 2014 sJeet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewProfile : UIViewController <NSURLConnectionDataDelegate>{
    NSMutableData *_downloadedData;
}
- (IBAction)msg:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *profile;
@property (weak, nonatomic) IBOutlet UILabel *firstName;
@property (weak, nonatomic) IBOutlet UILabel *lastName;

@end
