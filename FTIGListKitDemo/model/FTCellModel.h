//
//  FTCellModel.h
//  FTIGListKitDemo
//
//  Created by luwentao on 2021/6/23.
//

#import <Foundation/Foundation.h>
#import <IGListDiffKit/IGListDiffable.h>
#import "FTCellModelProtocol.h"

@protocol IGListDiffable, FTCellModelProtocol;
NS_ASSUME_NONNULL_BEGIN

@interface FTCellModel : NSObject<IGListDiffable, FTCellModelProtocol>

- (void)setDesc:(NSString *)desc;

@end

NS_ASSUME_NONNULL_END
