//
//  IGTableViewWithKeyboardDeletingDelegateMethod.h
//  asLJ
//
//  Created by Isaac Greenspan on 12/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface IGTableViewWithKeyboardDeletingDelegateMethod : NSTableView {
}

@end


@protocol IGTableViewWithKeyboardDeletingDelegateMethodDelegate

- (void)tableView:(NSTableView *)tableView
 shouldDeleteRows:(NSIndexSet *)rowIndexes;

@end