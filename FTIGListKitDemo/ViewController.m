//
//  ViewController.m
//  FTIGListKitDemo
//
//  Created by luwentao on 2021/6/23.
//

#import "ViewController.h"
#import <IGListKit/IGListAdapter.h>
#import <IGListKit/IGListAdapterUpdater.h>
#import <IGListDiffKit/IGListDiffable.h>
#import "FTListSectionController.h"
#import "FTCellModel.h"

@interface ViewController ()<IGListAdapterDataSource, UIScrollViewDelegate>

@property(strong, nonatomic) IGListAdapter *adapter;
@property(strong, nonatomic) UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collectionView.frame = self.view.bounds;
//    self.collectionView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.collectionView];
    self.adapter.collectionView = self.collectionView;
}

- (IGListAdapter *)adapter {
    if (_adapter == nil) {
        _adapter = [[IGListAdapter alloc]initWithUpdater:[[IGListAdapterUpdater alloc] init] viewController:self workingRangeSize:0];
        _adapter.dataSource = self;
//        _adapter.scrollViewDelegate = self;
    }
    return _adapter;
}

- (UICollectionView *)collectionView{
    if (_collectionView == nil) {
        _collectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:[[UICollectionViewFlowLayout alloc]init]];
        _collectionView.showsVerticalScrollIndicator = NO;
        _collectionView.showsHorizontalScrollIndicator = NO;
        _collectionView.backgroundColor = [UIColor clearColor];
    }
    return _collectionView;
}

#pragma mark - IGListAdapterDataSource
- (NSArray<id <IGListDiffable>> *)objectsForListAdapter:(IGListAdapter *)listAdapter {
    FTCellModel *viewModel = [[FTCellModel alloc] init];
    [viewModel setDesc:@"第一行"];
    
    FTCellModel *viewModel2 = [[FTCellModel alloc] init];
    [viewModel2 setDesc:@"第二行"];
    
    FTCellModel *viewModel3 = [[FTCellModel alloc] init];
    [viewModel3 setDesc:@"第三行"];
    return @[viewModel, viewModel2, viewModel3];
}

- (IGListSectionController *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object {
    return [[FTListSectionController alloc] init];
}

- (nullable UIView *)emptyViewForListAdapter:(IGListAdapter *)listAdapter {
    return nil;
}

@end
