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
    
    SotApplyCachedResult ApplyShipResult = [SotWebService ApplyCachedAndPullShip:@"123456789" is_dev:false cb:^(SotDownloadScriptStatus status)
        {
            if(status == SotScriptShipAlreadyNewest)
            {
                NSLog(@"SyncOnly SotScriptShipAlreadyNewest");
            }
            else if(status == SotScriptShipHasSyncNewer)
            {
                NSLog(@"SyncOnly SotScriptShipHasSyncNewer");
            }
            else if(status == SotScriptShipDisable)
            {
                NSLog(@"SyncOnly SotScriptShipDisable");
            }
            else
            {
                NSLog(@"SyncOnly SotScriptStatusFailure");
            }
        }];
    if(ApplyShipResult.Success)
    {
        if(ApplyShipResult.ShipMD5)
            NSLog(@"sot success apply cached ship md5:%@", ApplyShipResult.ShipMD5);
    }
    
#endif
#endif
}
@end
