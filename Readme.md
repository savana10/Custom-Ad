Custom Ad
=========

This is a demo project for displaying our own advertisements in application.

Features:
- Fetches advertisement from Parse.com
- If any advertisements are present then will display automatically.
- Will track how many times a displayed banner is clicked.
- Will track how many times user's had navigated to the link.
- Can display Full Banner Image along with navigation.


Required:
- Account with Parse.com


Steps:
- Login in your Parse.com account
- If you want to use it any of your then add a new class named "Advertisement"
- If you don't have any app , create a new app , name it as Custom Ads , after that create a new class named Advertisement
- Add following columns in Advertisement class 


Column Name 	  |			Type																				


 image    		  |         File (adimage to be displayed)																								
link              |         String (url to which user needs to navigate when clicked on it eg: http://                  www.github.com)									
 active 		  |         Boolean (true if you want to display that ad, else false)																	|
displayImage	  |         File (image displayed when a user clicks on bottom image)															
clickedCount      |         Number (to know how many users clicked on ad ,auto increment when use clicks on ad, keep 0 while adding new ad)				
clickedLinkCount  |         Number (to know how many users navigated to that link,auto increment when use clicks on ad, keep 0 while adding new ad)		
|	type              |         Number  (1 for Image, 2 for external link)																					

- Upload all your advertisements by clicking on +Row and inserting values accordingly.
- Go to the project  where you add advertisements 
- Download Parse.com iOS SDK if you don't have one and add all required frameworks in Build Phases
- Copy Custom Ads folder into your project , make sure that you copy items if needed is selected
- Go to build settings , search for Other Linker Flags and add -Objc,-all_load
- Go to your app delegate and import "CustomAd.h" 
- Go to your App in Parse.com , go to settings and in Keys copy the App Id and Client Key and paste it your project like this

// #define Parse_App_Id @"--APP--ID--GOES--HERE"
// #define Parse_Client_Key @"--CLIENT--GOES--HERE"
- In your - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
add     [CustomAd initializeServerWith:Parse_App_Id And:Parse_Client_Key];
// If Advertisements need to be displayed on top of view
    CustomAd *c=[CustomAd new];
    [c setBannerTopOrigin:@30.0f];// to set y position from top, 20.0 is default
    [c setBannerSize:@80.0f];    // to set Banner size 60.0f is default
    [c displayAdsAt:false];
// If Advertisements need to be displayed on bottom of view
    [[CustomAd new] displayAdsAt:true];


Everything is done (: now when you save your project and run it you will be seeing your own advertisements ob bottom of every screen in the application 


To Implement :
-Video Advertisements.


License :

Custom Ads is available under the MIT license. Copyright © 2015 Savana. 
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), 
to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, 
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.




