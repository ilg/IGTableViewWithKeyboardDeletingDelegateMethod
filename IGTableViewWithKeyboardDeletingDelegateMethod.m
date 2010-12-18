//
//  IGTableViewWithKeyboardDeletingDelegateMethod.m
//  asLJ
//
//  Created by Isaac Greenspan on 12/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "IGTableViewWithKeyboardDeletingDelegateMethod.h"


@implementation IGTableViewWithKeyboardDeletingDelegateMethod

- (void)keyDown:(NSEvent *)theEvent
{
	[super keyDown:theEvent];
	if ([[self delegate] respondsToSelector:@selector(tableView:shouldDeleteRows:)]
		&& (([theEvent keyCode] == 0x33)
			|| ([theEvent keyCode] == 0x75))
		) {
		[(id<IGTableViewWithKeyboardDeletingDelegateMethodDelegate>)[self delegate]
		 tableView:self
		 shouldDeleteRows:[self selectedRowIndexes]];
	}
}

@end
