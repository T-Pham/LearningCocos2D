//
//  BackgroundLayer.m
//  SpaceViking
//
//  Created by eastagile 87:21 on 8/5/13.
//  Copyright (c) 2013 eastagile. All rights reserved.
//

#import "cocos2d.h"
#import "BackgroundLayer.h"

@implementation BackgroundLayer

- (id)init {
    self = [super init];
    if (self) {
        CGSize screenSize = [[CCDirector sharedDirector] winSize];

        CCSprite *backgroundImage;
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
            backgroundImage = [CCSprite spriteWithFile:@"background.png"];
            [backgroundImage setScaleX:2];
            [backgroundImage setScaleY:2];
        } else {
            backgroundImage = [CCSprite spriteWithFile:@"backgroundiPhone.png"];
        }
        
        [backgroundImage setPosition:CGPointMake(screenSize.width/2, screenSize.height/2)];
        
        [self addChild:backgroundImage z:0 tag:0];
    }
    return self;
}

@end
