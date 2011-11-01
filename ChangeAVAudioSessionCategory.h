//
//  ChangeAVAudioSessionCategory.h
//  Change AVAudioSessionCategory PhoneGap plugin
//
//  Created by Tommy-Carlos Williams on 01/11/11.
//  Copyright 2011 Devgeeks. All rights reserved.
//	MIT Licensed
//

#ifdef PHONEGAP_FRAMEWORK
#import <PhoneGap/PGPlugin.h>
#else
#import "PGPlugin.h"
#endif

#import "AudioStreamer.h"
#import <UIKit/UIkit.h>

@interface ChangeAVAudioSessionCategory : PGPlugin {
	NSString* callbackId;
	NSString* AVAudioSessionCategory;
}

@property (nonatomic, copy) NSString* callbackId;
@property (nonatomic, copy) NSString* AVAudioSessionCategory;

- (void)updateAudioSessionCategory:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;

@end
