#import <Foundation/Foundation.h>
#import "callsot.h"
#ifdef USE_SOT
#import "../sotsdk/libs/SotWebService.h"
#endif
@implementation CallSot:NSObject
-(void) InitSot
{
#ifdef USE_SOT
#ifdef DEBUG
    [SotWebService ApplyBundleShip];
#else
    
    [SotWebService Sync:@"123456789" is_dev:false cb:^(SotDownloadScriptStatus status)
  {
    if(status == SotScriptStatusSuccess)
    {
      NSLog(@"SotScriptStatusSuccess");
    }
    else
    {
      NSLog(@"SotScriptStatusFailure");
    }
  }];
    
#endif
#endif
}
@end
