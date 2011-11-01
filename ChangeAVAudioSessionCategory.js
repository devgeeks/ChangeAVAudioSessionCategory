//
//  ChangeAVAudioSessionCategory.js
//  ChangeAVAudioSessionCategory PhoneGap Plugin
//
//  Created by Tommy-Carlos Williams on 01/11/11.
//  Copyright 2011 Devgeeks. All rights reserved.
//

var ChangeAVAudioSessionCategory = {
    
	updateAudioSessionCategory: function(AVAudioSessionCategory, successCallback, failCallback) {
		return PhoneGap.exec(successCallback, failCallback, "ChangeAVAudioSessionCategory", "updateAudioSessionCategory", [AVAudioSessionCategory]);
	}
};
if(!window.plugins)
{
	window.plugins = {};
}
window.plugins.changeAVAudioSessionCategory = ChangeAVAudioSessionCategory;

