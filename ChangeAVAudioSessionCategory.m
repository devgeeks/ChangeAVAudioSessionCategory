//
//  ChangeAVAudioSessionCategory.m
//  Change AVAudioSessionCategory PhoneGap plugin
//
//  Created by Tommy-Carlos Williams on 01/11/11.
//  Copyright 2011 Devgeeks. All rights reserved.
//

#import "ChangeAVAudioSessionCategory.h"
#import <AVFoundation/AVFoundation.h>

@implementation ChangeAVAudioSessionCategory

@synthesize callbackId, AVAudioSessionCategory;

-(void)updateAudioSessionCategory:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options {
	
	self.callbackId = arguments.pop;
	self.AVAudioSessionCategory = [arguments objectAtIndex:0];
	
	
	// set the default as the original default
	NSString* newAVAudioSessionCategory = AVAudioSessionCategoryPlayAndRecord;
	if ([AVAudioSessionCategoryAmbient isEqualToString:self.AVAudioSessionCategory]) {
		newAVAudioSessionCategory = AVAudioSessionCategoryAmbient;
	} else if ([AVAudioSessionCategorySoloAmbient isEqualToString:self.AVAudioSessionCategory]) {
		newAVAudioSessionCategory = AVAudioSessionCategorySoloAmbient;
	} else if ([AVAudioSessionCategoryPlayback isEqualToString:self.AVAudioSessionCategory]) {
		newAVAudioSessionCategory = AVAudioSessionCategoryPlayback;
	} else if ([AVAudioSessionCategoryRecord isEqualToString:self.AVAudioSessionCategory]) {
		newAVAudioSessionCategory = AVAudioSessionCategoryRecord;
	} else if ([AVAudioSessionCategoryPlayAndRecord isEqualToString:self.AVAudioSessionCategory]) {
		newAVAudioSessionCategory = AVAudioSessionCategoryPlayAndRecord;
	} else if ([AVAudioSessionCategoryAudioProcessing isEqualToString:self.AVAudioSessionCategory]) {
		newAVAudioSessionCategory = AVAudioSessionCategoryAudioProcessing;
	}
	
	NSError *setCategoryError = nil;
	[[AVAudioSession sharedInstance] setCategory:newAVAudioSessionCategory error:&setCategoryError];
	
	if (setCategoryError) {
		NSLog(@"AVAudioSession setCategory ERROR: %@",[setCategoryError localizedDescription]);
	}
}

@end
