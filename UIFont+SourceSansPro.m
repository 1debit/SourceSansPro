//
// UIFont+OpenSans.m
//
// Created by Kyle Fuller on 18/02/2014
//

#import <CoreText/CoreText.h>
#import <SourceSansPro/UIFont+SourceSansPro.h>

@interface KOSFontLoader : NSObject

+ (void)loadFontWithName:(NSString *)fontName;

@end

@implementation KOSFontLoader

+ (void)loadFontWithName:(NSString *)fontName {
    NSURL *bundleURL = [[NSBundle bundleForClass:[self class]] URLForResource:@"SourceSansPro" withExtension:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithURL:bundleURL];
    NSURL *fontURL = [bundle URLForResource:fontName withExtension:@"otf"];
    NSData *fontData = [NSData dataWithContentsOfURL:fontURL];

    CGDataProviderRef provider = CGDataProviderCreateWithCFData((CFDataRef)fontData);
    CGFontRef font = CGFontCreateWithDataProvider(provider);

    if (font) {
        CFErrorRef error = NULL;
        if (CTFontManagerRegisterGraphicsFont(font, &error) == NO) {
            CFStringRef errorDescription = CFErrorCopyDescription(error);
            @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:(__bridge NSString *)errorDescription userInfo:@{ NSUnderlyingErrorKey: (__bridge NSError *)error }];
        }
        
        CFRelease(font);
    }

    CFRelease(provider);
}

@end

@implementation UIFont (SourceSansPro)

+ (instancetype)kosLoadAndReturnFont:(NSString *)fontName size:(CGFloat)fontSize onceToken:(dispatch_once_t *)onceToken fontFileName:(NSString *)fontFileName {
    dispatch_once(onceToken, ^{
        [KOSFontLoader loadFontWithName:fontFileName];
    });

    return [self fontWithName:fontName size:fontSize];
}

+ (instancetype)openSansFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    return [self kosLoadAndReturnFont:@"Source Sans Pro" size:size onceToken:&onceToken fontFileName:@"SourceSansPro-Regular"];
}

+ (instancetype)openSansItalicFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    return [self kosLoadAndReturnFont:@"SourceSansPro-It" size:size onceToken:&onceToken fontFileName:@"SourceSansPro-It"];
}

+ (instancetype)openSansLightFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    return [self kosLoadAndReturnFont:@"SourceSansPro-Light" size:size onceToken:&onceToken fontFileName:@"SourceSansPro-Light"];
}

+ (instancetype)openSansLightItalicFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    return [self kosLoadAndReturnFont:@"SourceSansPro-LightIt" size:size onceToken:&onceToken fontFileName:@"SourceSansPro-LightIt"];
}

+ (instancetype)openSansBoldFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    return [self kosLoadAndReturnFont:@"SourceSansPro-Bold" size:size onceToken:&onceToken fontFileName:@"SourceSansPro-Bold"];
}

+ (instancetype)openSansBoldItalicFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    return [self kosLoadAndReturnFont:@"SourceSansPro-BoldIt" size:size onceToken:&onceToken fontFileName:@"SourceSansPro-BoldIt"];
}

+ (instancetype)openSansSemiBoldFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    return [self kosLoadAndReturnFont:@"SourceSansPro-Semibold" size:size onceToken:&onceToken fontFileName:@"SourceSansPro-Semibold"];
}

+ (instancetype)openSansSemiBoldItalicFontOfSize:(CGFloat)size {
    static dispatch_once_t onceToken;
    return [self kosLoadAndReturnFont:@"SourceSansPro-SemiboldIt" size:size onceToken:&onceToken fontFileName:@"SourceSansPro-SemiboldIt"];
}

@end
