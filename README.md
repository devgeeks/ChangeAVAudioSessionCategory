ChangeAVAudioSessionCategory
============================

Installation
------------

Add the plugin much like any other:

1.      Add the ChangeAVAudioSessionCategory.h and ChangeAVAudioSessionCategory.m classes to your Plugins folder in Xcode
2.      Add the ChangeAVAudioSessionCategory.js file to your www folder
3.		Add the ChangeAVAudioSessionCategory.js to your html file. eg: `<script type="text/javascript" charset="utf-8" src="ChangeAVAudioSessionCategory.js"></script>`
4.      Add the plugin to the PhoneGap.plist

### Example
```javascript
function onDeviceReady()
{
	var changeAVAudioSessionCategory = window.plugins.changeAVAudioSessionCategory;
	changeAVAudioSessionCategory.updateAudioSessionCategory('AVAudioSessionCategorySoloAmbient');
}
```

A list of the possible categories and how they are effected by the Silent/Ring switch can be found here: [Audio Session Categories](http://developer.apple.com/library/ios/#documentation/Audio/Conceptual/AudioSessionProgrammingGuide/AudioSessionCategories/AudioSessionCategories.html#//apple_ref/doc/uid/TP40007875-CH4-SW1)

* AVAudioSessionCategoryAmbient
* AVAudioSessionCategorySoloAmbient
* AVAudioSessionCategoryPlayback
* AVAudioSessionCategoryRecord
* AVAudioSessionCategoryPlayAndRecord
* AVAudioSessionCategoryAudioProcessing


## License

The MIT License

Copyright (c) 2011 Tommy-Carlos Williams (github.com/devgeeks)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
