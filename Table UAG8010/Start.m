//
//  ViewController.m
//  Table UAG8010
//
//  Created by Walter Gonzalez Domenzain on 09/03/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "Start.h"
#import "cellGirlFriends.h"
#import "SBJson.h"

UIColor *color;
NSInteger contador1 = 0;
NSInteger contador2 = 0;
NSInteger contador3 = 0;
NSInteger contador4 = 0;
NSInteger contTimer = 0;
NSInteger contTimer2 = 0;
NSTimer *contadorTimer;
NSTimer *contadorTimer2;
NSDictionary    *jsonResponse;
@interface Start ()

@end

@implementation Start

- (void)viewDidLoad {

[super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.punto1Color.alpha = 0.4;
    self.punto2Color.alpha = 0.4;
    self.punto3Color.alpha = 0.4;
    self.punto4Color.alpha = 0.4;
    self.punto1Color.textColor =[UIColor whiteColor];
    self.punto2Color.textColor =[UIColor whiteColor];
    self.punto3Color.textColor =[UIColor whiteColor];
    self.punto4Color.textColor =[UIColor whiteColor];
    self.imagenCentro.image = [UIImage imageNamed:@"motionLogo.png"];
    [self.view bringSubviewToFront:_imagenCentro];
    [self.view bringSubviewToFront:_punto1Color];
    [self.view bringSubviewToFront:_punto2Color];
    [self.view bringSubviewToFront:_punto3Color];
    [self.view bringSubviewToFront:_punto4Color];
    self.imagenPrincipal.image = [UIImage imageNamed:@"roomTop.jpg"];
    contadorTimer = [NSTimer scheduledTimerWithTimeInterval:0.5
                                                     target:self
                                                   selector:@selector(comienza:)
                                                   userInfo:nil
                                                    repeats:YES];
    
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)comienza:(NSTimer *) elContador
{
    contTimer++;
    //self.textoUbicacion.text = [[NSNumber numberWithInt:contTimer] stringValue];
    [self loadService];
    
}

-(void)comienza2:(NSTimer *) elContador
{
    contTimer2++;
}

- (void) loadService
{
    
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
        [request setURL:[NSURL URLWithString:@"http://192.168.1.67"]];
        [request setHTTPMethod:@"GET"];
        
        NSURLResponse *requestResponse;
        NSError *error = [[NSError alloc] init];
        NSData *requestHandler = [NSURLConnection sendSynchronousRequest:request returningResponse:&requestResponse error:nil];
        NSString *requestReply = [[NSString alloc] initWithBytes:[requestHandler bytes] length:[requestHandler length] encoding:NSASCIIStringEncoding];
        NSLog(@"requestReply: %@", requestReply);
        NSDictionary *dict = [requestReply JSONValue];
        //NSLog(@"Object: %@", dict);
        NSString* pir1= dict[@"pir1"];
        NSLog(@"pir1 %@", pir1);
        NSString* pir2= dict[@"pir2"];
        NSLog(@"pir2 %@", pir2);
        NSString* pir3= dict[@"pir3"];
        NSLog(@"pir3 %@", pir3);
        NSString* pir4= dict[@"pir4"];
        NSLog(@"pir4 %@", pir4);
    
    if([pir1  isEqual: @"1"]){
        self.punto1Color.textColor =[UIColor redColor];
        self.punto1Color.alpha = 1;
        self.punto1Color.layer.shadowColor =  [color CGColor];
        self.punto1Color.layer.shadowRadius = 4.0f;
        self.punto1Color.layer.shadowOpacity = .9;
        self.punto1Color.layer.shadowOffset = CGSizeZero;
        self.punto1Color.layer.masksToBounds = NO;
        
    }else{
        self.punto1Color.textColor =[UIColor whiteColor];
        self.punto1Color.alpha = 0.4;
        self.punto1Color.layer.shadowColor =  NO;
        self.punto1Color.layer.shadowRadius = NO;
        self.punto1Color.layer.shadowOpacity = NO;
        self.punto1Color.layer.shadowOffset = CGSizeZero;
        self.punto1Color.layer.masksToBounds = NO;
    }
    if([pir2  isEqual: @"1"]){
        self.punto2Color.textColor =[UIColor redColor];
        self.punto2Color.alpha = 1;
        self.punto2Color.layer.shadowColor =  [color CGColor];
        self.punto2Color.layer.shadowRadius = 4.0f;
        self.punto2Color.layer.shadowOpacity = .9;
        self.punto2Color.layer.shadowOffset = CGSizeZero;
        self.punto2Color.layer.masksToBounds = NO;
        
    }else{
        self.punto2Color.textColor =[UIColor whiteColor];
        self.punto2Color.alpha = 0.4;
        self.punto2Color.layer.shadowColor =  NO;
        self.punto2Color.layer.shadowRadius = NO;
        self.punto2Color.layer.shadowOpacity = NO;
        self.punto2Color.layer.shadowOffset = CGSizeZero;
        self.punto2Color.layer.masksToBounds = NO;
    }
    if([pir3  isEqual: @"1"]){
        self.punto3Color.textColor =[UIColor redColor];
        self.punto3Color.alpha = 1;
        self.punto3Color.layer.shadowColor =  [color CGColor];
        self.punto3Color.layer.shadowRadius = 4.0f;
        self.punto3Color.layer.shadowOpacity = .9;
        self.punto3Color.layer.shadowOffset = CGSizeZero;
        self.punto3Color.layer.masksToBounds = NO;

    }else{
        self.punto3Color.textColor =[UIColor whiteColor];
        self.punto3Color.alpha = 0.4;
        self.punto3Color.layer.shadowColor =  NO;
        self.punto3Color.layer.shadowRadius = NO;
        self.punto3Color.layer.shadowOpacity = NO;
        self.punto3Color.layer.shadowOffset = CGSizeZero;
        self.punto3Color.layer.masksToBounds = NO;
    }
    if([pir4  isEqual: @"1"]){
        self.punto4Color.textColor =[UIColor redColor];
        self.punto4Color.alpha = 1;
        self.punto4Color.layer.shadowColor =  [color CGColor];
        self.punto4Color.layer.shadowRadius = 4.0f;
        self.punto4Color.layer.shadowOpacity = .9;
        self.punto4Color.layer.shadowOffset = CGSizeZero;
        self.punto4Color.layer.masksToBounds = NO;
    }else{
        self.punto4Color.textColor =[UIColor whiteColor];
        self.punto4Color.alpha = 0.4;
        self.punto4Color.layer.shadowColor =  NO;
        self.punto4Color.layer.shadowRadius = NO;
        self.punto4Color.layer.shadowOpacity = NO;
        self.punto4Color.layer.shadowOffset = CGSizeZero;
        self.punto4Color.layer.masksToBounds = NO;
    }
    
}

@end
