#import <Foundation/Foundation.h>

@interface WFTrigger : NSObject
+(BOOL)isAllowedToRunAutomatically;
@end

@interface NCNotificationContent : NSObject
- (NSString *)message;
- (NSString *)title;
@end

@interface NCNotificationRequest : NSObject
- (NSString *)sectionIdentifier;
- (NCNotificationContent *)content;
@end

%hook NCNotificationDispatcher
-(void)postNotificationWithRequest:(NCNotificationRequest*)arg1 {

	if (!([[[arg1 content] title] containsString:@"Automation"] || [[[arg1 content] message] containsString:@"automation"])) {
		%orig;
	}
		
}
%end

%hook WFTrigger
+(BOOL)isAllowedToRunAutomatically {
return YES;
}
%end

@interface WFSharingSettings : NSObject
+(BOOL)shortcutFileSharingEnabled;
@end

%hook WFSharingSettings
+(BOOL)shortcutFileSharingEnabled {
return YES;
}
%end
