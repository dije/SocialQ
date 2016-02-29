//
//  SocialQModel.h
//  Pods
//
//  Created by dwijayantoyn on 2/26/16.
//
//

#import <Foundation/Foundation.h>

@interface SocialQModel : NSObject{
}
    @property(readwrite, retain) NSString *qeonToken;
+(instancetype) initWithQeon_id:(NSString *)qeonToken;

-(instancetype) initWithQeon_id:(NSString *)qeonToken;

-(BOOL) savedToSharePreference;
+(SocialQModel*) loadFromSharePreference;
@end

