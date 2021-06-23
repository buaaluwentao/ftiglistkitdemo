//
//  FTListSectionController.m
//  FTIGListKitDemo
//
//  Created by luwentao on 2021/6/23.
//

#import "FTListSectionController.h"
#import "FTCollectionViewCell.h"

@interface FTListSectionController()<IGListBindingSectionControllerDataSource>
@end

@implementation FTListSectionController

- (instancetype)init {
    if (self = [super init]) {
        self.dataSource = self;
    }
    return self;
}

- (NSArray<id<IGListDiffable>> *)sectionController:(IGListBindingSectionController *)sectionController viewModelsForObject:(id)object {
    return [@[(NSArray *)object] copy];
}

- (CGSize)sectionController:(IGListBindingSectionController *)sectionController sizeForViewModel:(id)viewModel atIndex:(NSInteger)index {
    return self.collectionContext.containerSize;
}

- (UICollectionViewCell<IGListBindable> *)sectionController:(IGListBindingSectionController *)sectionController cellForViewModel:(id)viewModel atIndex:(NSInteger)index {
    return [self.collectionContext dequeueReusableCellOfClass:FTCollectionViewCell.class forSectionController:self atIndex:index];
}

@end
