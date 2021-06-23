//
//  FTCollectionViewCell.m
//  FTIGListKitDemo
//
//  Created by luwentao on 2021/6/23.
//

#import "FTCollectionViewCell.h"
#import "FTCellModel.h"

@interface FTCollectionViewCell()

@property (nonatomic, strong) UILabel *label;

@end

@implementation FTCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.label = [[UILabel alloc] init];
        self.label.backgroundColor = [UIColor redColor];
        [self addSubview:self.label];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.label.frame = self.bounds;
}

- (void)bindViewModel:(id)viewModel {
    FTCellModel *model = viewModel;
    self.label.text = model.desc;
}

@end
