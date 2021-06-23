//
//  FTCellModel.m
//  FTIGListKitDemo
//
//  Created by luwentao on 2021/6/23.
//

#import "FTCellModel.h"

@interface FTCellModel()

@property(nonatomic, copy) NSString *desc;

@end

@implementation FTCellModel

- (nonnull id<NSObject>)diffIdentifier {
    return self;
}

- (BOOL)isEqualToDiffableObject:(nullable id<IGListDiffable>)object {
    return self == object;
}

@end
