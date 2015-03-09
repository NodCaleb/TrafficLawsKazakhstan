//
//  MenuData.m
//  iKatalog
//
//  Created by Eugene Rozhkov on 17.02.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "MenuData.h"

@implementation MenuData

+ (NSArray *) menuItems
{
    NSMutableArray *menuItemsData = [@[] mutableCopy];
    
    [menuItemsData addObject:@{MENU_ITEM_ID: @0, MENU_ITEM_TITLE: @"Правила", MENU_ITEM_SEGUE: @"lawsSegue", MENU_ITEM_ICON: @"Menu.png"}];
    [menuItemsData addObject:@{MENU_ITEM_ID: @1, MENU_ITEM_TITLE: @"Знаки", MENU_ITEM_SEGUE: @"signsSegue", MENU_ITEM_ICON: @"Menu.png"}];
    [menuItemsData addObject:@{MENU_ITEM_ID: @2, MENU_ITEM_TITLE: @"Разметка", MENU_ITEM_SEGUE: @"markingSegue", MENU_ITEM_ICON: @"Menu.png"}];
    [menuItemsData addObject:@{MENU_ITEM_ID: @3, MENU_ITEM_TITLE: @"Светофор", MENU_ITEM_SEGUE: @"lightSegue", MENU_ITEM_ICON: @"Menu.png"}];
    [menuItemsData addObject:@{MENU_ITEM_ID: @4, MENU_ITEM_TITLE: @"Регулировщик", MENU_ITEM_SEGUE: @"poinstmanSegue", MENU_ITEM_ICON: @"Menu.png"}];
    
    return [menuItemsData copy];
}

@end
