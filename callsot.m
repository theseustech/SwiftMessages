#import <Foundation/Foundation.h>
#import "callsot_message.h"
#import "/Users/sotsdk-1.0/libs/SotWebService.h"
@implementation CallSotMessage:NSObject
-(void) InitSot
{
#if DEBUG
    [SotWebService ApplyBundleShip];
#else
    //website version sync api. have a look on https://www.sotvm.com/doc/usesdk/web
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
}
@end
