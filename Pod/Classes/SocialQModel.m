//
//  SocialQModel.m
//  Pods
//
//  Created by dwijayantoyn on 2/26/16.
//
//

#import "SocialQModel.h"

//EXILE ATSUSHI - Sakura no Kisetsu

@implementation SocialQModel

+(instancetype) initWithQeon_id:(NSString *)qeonToken{
    return [[self alloc] initWithQeon_id:qeonToken];
}

-(instancetype) initWithQeon_id:(NSString *)qeonToken{
    self = [self init];
    if (self) {
        _qeonToken = qeonToken;
    }
    
    return self;

}

-(BOOL) savedToSharePreference{
   [[NSUserDefaults standardUserDefaults] setObject:_qeonToken forKey:@"QSP_qeontoken"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    return true;
}
+(SocialQModel*) loadFromSharePreference{
    NSString *qeonToken = [[NSUserDefaults standardUserDefaults] stringForKey:@"QSP_qeontoken"];
    return [[self alloc] initWithQeon_id:qeonToken];
}


@end


