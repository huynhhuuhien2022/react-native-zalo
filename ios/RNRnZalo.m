
#import "RNRnZalo.h"
#import <ZaloSDK/ZaloSDK.h>

@implementation RNRnZalo

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(initWithZaloId:(NSString *)zaloId)
{
    [[ZaloSDK sharedInstance] initializeWithAppId:zaloId];
}

RCT_EXPORT_METHOD(login: (RCTResponseSenderBlock) successCallback failureCallback: (RCTResponseErrorBlock)failureCallback)
{
    [[ZaloSDK sharedInstance]   authenticateZaloWithAuthenType:ZAZAloSDKAuthenTypeViaZaloAppOnly
                                parentController:self     
                                handler:^(ZOOauthResponseObject *response) 
                                {
                                    if([response isSuccess])
                                    {
                                        // dang nhap thanh cong
                                        NSMutableDictionary *userObj = [[NSMutableDictionary alloc] init];
                                        [userObj setObject:response.oauthCode.length ? response.oauthCode : @"" forKey:@"oauthCode"];
                                        [userObj setObject:response.userId.length ? response.userId : @""  forKey:@"userId"];
                                        [userObj setObject:response.displayName.length ? response.displayName : @"" forKey:@"displayName"];
                                        [userObj setObject:response.phoneNumber.length ? response.phoneNumber : @"" forKey:@"phoneNumber"];
                                        [userObj setObject:response.dob.length ? response.dob : @"" forKey:@"dob"];
                                        [userObj setObject:response.gender.length ? response.gender : @"" forKey:@"gender"];

                                        successCallback(@[userObj]);
                                    }
                                    else
                                    {
                                        failureCallback (
                                            [[NSError alloc] initWithDomain:@"Zalo Oauth" code:response.ErrorCode userInfo:@{
                                                @"message":response.errorMessage
                                            }]
                                        );
                                    }
                                }
    
    ];
}

@end
  