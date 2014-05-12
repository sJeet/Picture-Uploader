//
//  ViewProfile.m
//  photoUploader
//
//  Created by Library-SCS on 5/11/14.
//  Copyright (c) 2014 sJeet. All rights reserved.
//

#import "ViewProfile.h"

@interface ViewProfile ()

@end

@implementation ViewProfile
@synthesize profile;
@synthesize firstName;
@synthesize lastName;

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
    [profile setImage:[UIImage imageNamed:@"unknown.png"] forState:UIControlStateNormal];
    profile.frame = CGRectMake(135.0, 180.0, 200, 200);//width and height should be same value
    profile.clipsToBounds = YES;
    
    profile.layer.cornerRadius = 100;//half of the width
    profile.layer.borderColor=[UIColor blackColor].CGColor;
    profile.layer.borderWidth=2.0f;
    
    [self.view addSubview:profile];
    
    // Download the json file
    NSURL *jsonFileUrl = [NSURL URLWithString:@"http://jeetshah.com/service.php"];
    
    // Create the request
    NSURLRequest *urlRequest = [[NSURLRequest alloc] initWithURL:jsonFileUrl];
    
    // Create the NSURLConnection
    [NSURLConnection connectionWithRequest:urlRequest delegate:self];
        // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    // Initialize the data object
    _downloadedData = [[NSMutableData alloc] init];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    // Append the newly downloaded data
    [_downloadedData appendData:data];
        
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    firstName.text = @"Jeet";
    lastName.text = @"Shah";
    
}

- (IBAction)msg:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"TEst" message:nil delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [alert show];
}
@end
