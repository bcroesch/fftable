//
//  FFBaseCell.m
//  prophets-ios
//
//  Created by Benjamin Roesch on 10/10/12.
//  Copyright (c) 2012 Benjamin Roesch. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

#import "FFBaseCell.h"
#import "UIColor+Additions.h"

@interface FFBaseCell ()

@property (nonatomic, strong) CALayer *mask;
@property (nonatomic) FFCellLocationInSection currentShadowLocation;
@end

@implementation FFBaseCell

-(void)awakeFromNib{
    [super awakeFromNib];
    
    self.backgroundColor = [UIColor creamColor];
    /*
    [self.layer setShadowOffset:CGSizeMake(1, 1)];
    [self.layer setShadowOpacity:0.8];
    [self.layer setShadowRadius:3];
    [self.layer setShadowColor:[[UIColor blackColor] CGColor]];
    
    self.mask = [CALayer layer];
    self.mask.backgroundColor = [UIColor blackColor].CGColor;
    self.layer.mask = self.mask;
    */
    
    //[self.layer setShadowColor:[[UIColor blackColor] CGColor]];
}
/*
-(void)setShowsBottomShadow:(BOOL)show{
    if (_showsBottomShadow == show) return;
    
    _showsBottomShadow = show;
    
    if (show) {
        [self.layer setShadowOffset:CGSizeMake(0, 1)];
        [self.layer setShadowOpacity:0.8];
        [self.layer setShadowRadius:2];
    }
    else{
        [self.layer setShadowOffset:CGSizeMake(0, 0)];
        [self.layer setShadowOpacity:0];
        [self.layer setShadowRadius:0];
    }
}
*/
-(void)setShowsAccessoryView:(BOOL)val{
    _showsAccessoryView = val;
    
    if(val)
        self.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"table_cell_arrow.png"]];
    else
        self.accessoryView = nil;
}
/*
- (void) drawRect:(CGRect)initialRect {
    [super drawRect:initialRect];
    [self setShadows];
}
*/
/*
-(void)setShadows{
    FFCellLocationInSection location = [self locationInSection];
    
    if(location == self.currentShadowLocation) return;
    
    self.currentShadowLocation = location;
    
    if (location == FFCellTop) {
        self.mask.frame = CGRectMake(-4.0, -4.0, self.bounds.size.width + 4, self.bounds.size.height+4);
    }
    else if (location == FFCellMiddle){
        self.mask.frame = CGRectMake(-4.0, 0.0, self.bounds.size.width + 4, self.bounds.size.height);
    }
    else if (location == FFCellBottom){
        self.mask.frame = CGRectMake(-4.0, 0.0, self.bounds.size.width + 4, self.bounds.size.height+6);
    }
    else if (location == FFCellSingle){
        self.mask.frame = CGRectMake(-4.0, -4.0, self.bounds.size.width + 4, self.bounds.size.height+9);
    }
}

-(FFCellLocationInSection)locationInSection{
    UITableView *tableView = (UITableView *)self.superview;
    NSIndexPath *indexPath = [tableView indexPathForCell:self];
    NSInteger numRows = [tableView numberOfRowsInSection:indexPath.section];
    
    if (numRows == 1)
        return FFCellSingle;
    else if (indexPath.row == 0)
        return FFCellTop;
    else if (indexPath.row == numRows-1)
        return FFCellBottom;
    else
        return FFCellMiddle;
    
}
 */

@end
