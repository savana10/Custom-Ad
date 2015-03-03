//
//  CustomAd.h
//  CustomAd
//
//  Created by Savana on 18/02/2015.
//  Copyright (c) 2015 Savana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CustomAd : NSObject
//! Size of banner , by default 60.0f
@property (strong,nonatomic) NSNumber *bannerSize;
//! Origin where the ad new to be displayed , need to be set if to be displayed on top. Default value is 20.0f
@property (strong,nonatomic) NSNumber *bannerTopOrigin;

/**
 *  Initiliase Server to fetch details, 
    @code
    go to @link http://wwww.parse.com signup if you dont have an account, create a new app if you dont have one, Add a new class named Advertisement , in that add following columns with there datattype
        #define Parse_Ad_Class @"Advertisement" ---> Class Name
        #define Parse_Ad_Image @"image" ----> File type  to display in bottom
        #define Parse_Ad_Link @"link" ----> String type to navigate when user clicks
        #define Parse_Ad_Active @"active" ----> Boolean type true if you want to display that ad, else false
        #define Parse_Ad_Display_Image @"displayImage" ----> File type image displayed when a user clicks on bottom image
        #define Parse_Ad_Click_Count @"clickedCount" ----> Number type keep by default 0
        #define Parse_Ad_Click_Link_Count @"clickedLinkCount" ----> Number type keep b default 0
        #define Parse_Ad_Type @"type" ----> 1 for Image, 2 for external
    @endcode
 *
 *  @param parseApiId App Id
 *  @param parseClientKey App Client Key
 */
+(void) initializeServerWith:(NSString *)parseApiId And:(NSString *)parseClientKey;
/**
 *  Display ads in the window
 *
 *  @param bottomOfScreen True if bottom else false, if false then need to assign bannerTopOrigin else will take default one 20.0f
 */
-(void) displayAdsAt:(BOOL) bottomOfScreen;


@end
