//
//  GameplayLayer.m
//  SpaceViking
//
//  Created by eastagile 87:21 on 8/5/13.
//  Copyright (c) 2013 eastagile. All rights reserved.
//

#import "GameplayLayer.h"

@implementation GameplayLayer

- (id)init {
    self = [super init];
    if (self) {
        CGSize screenSize = [CCDirector sharedDirector].winSize;
        [self setTouchEnabled:YES];
        vikingSprite = [CCSprite spriteWithFile:@"sv_anim_1.png"];
        [vikingSprite setPosition:CGPointMake(screenSize.width/2, screenSize.height*0.17f/[UIScreen mainScreen].scale)];
        [self addChild:vikingSprite];
        if (UI_USER_INTERFACE_IDIOM() != UIUserInterfaceIdiomPad) {
            [vikingSprite setScaleX:screenSize.width/1024.0f];
            [vikingSprite setScaleY:screenSize.height/768.0f];
        }
    }
    return self;
}

@end
