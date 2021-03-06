//
//  cell.m
//  Classinfo
//
//  Created by lanye on 13-11-30.
//  Copyright (c) 2013年 lanyes. All rights reserved.
//

#import "ClassInfocell.h"

@implementation ClassInfocell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.arry = [[NSMutableArray alloc]initWithCapacity:0];
        self.arry = [[NSMutableArray alloc]initWithObjects:self.pageCount,self.addTime,self.content,self.titleName,self.thumbImage,nil];
    }
    return self;
}

- (void) layoutSubviews {
    [super layoutSubviews];
    self.backgroundView.frame = CGRectMake(0, 0, 300, 160);
    self.contentView.frame =CGRectMake(0, 0, 300, 160);
    self.selectedBackgroundView.frame = CGRectMake(0, 0, 300, 118);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
