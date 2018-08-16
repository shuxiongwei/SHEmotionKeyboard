//
//  SHEmotionAttachment.m
//  SHEmotionKeyboardExmaple
//
//  Created by CSH on 2018/8/16.
//  Copyright © 2018年 CSH. All rights reserved.
//

#import "SHEmotionAttachment.h"
#import "SHEmotionTool.h"

@implementation SHEmotionAttachment

- (void)setEmotion:(SHEmotionModel *)emotion{
    _emotion = emotion;
    
    switch (emotion.type) {
        case SHEmoticonType_custom://自定义
        {
            self.image = [UIImage imageWithContentsOfFile:[kCustom_Emoji_Path stringByAppendingString:emotion.png]];
        }
            break;
        case SHEmoticonType_gif://Gif
        {
            self.image = [UIImage imageWithContentsOfFile:[kGif_Emoji_Path stringByAppendingString:emotion.png]];
        }
            break;
        default:
            break;
    }
}

@end
