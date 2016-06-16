//
// UIFont+OpenSans.h
//
// Created by Kyle Fuller on 18/02/2014
//

#import <UIKit/UIKit.h>

/// UIFont extension providing the Source Sans Pro font
@interface UIFont (SourceSansPro)


/** Returns a font object for the Source Sans Pro font which has the specified size instead.
 @param size The desired size (in points) of the new font object. This value must be greater than 0.0
 @return A font object of the specified size.
*/
+ (instancetype)openSansFontOfSize:(CGFloat)size;

/** Returns a font object for the Source Sans Pro Italic font which has the specified size instead.
 @param size The desired size (in points) of the new font object. This value must be greater than 0.0
 @return A font object of the specified size.
*/
+ (instancetype)openSansItalicFontOfSize:(CGFloat)size;

/** Returns a font object for the Source Sans Pro Extra Light font which has the specified size instead.
 @param size The desired size (in points) of the new font object. This value must be greater than 0.0
 @return A font object of the specified size.
 */
+ (instancetype)openSansExtraLightFontOfSize:(CGFloat)size;

/** Returns a font object for the Source Sans Pro Light font which has the specified size instead.
 @param size The desired size (in points) of the new font object. This value must be greater than 0.0
 @return A font object of the specified size.
*/
+ (instancetype)openSansLightFontOfSize:(CGFloat)size;

/** Returns a font object for the Source Sans Pro Light Italic font which has the specified size instead.
 @param size The desired size (in points) of the new font object. This value must be greater than 0.0
 @return A font object of the specified size.
*/
+ (instancetype)openSansLightItalicFontOfSize:(CGFloat)size;

/** Returns a font object for the Source Sans Pro bold font which has the specified size instead.
 @param size The desired size (in points) of the new font object. This value must be greater than 0.0
 @return A font object of the specified size.
*/
+ (instancetype)openSansBoldFontOfSize:(CGFloat)size;

/** Returns a font object for the Source Sans Pro Bold Italic font which has the specified size instead.
 @param size The desired size (in points) of the new font object. This value must be greater than 0.0
 @return A font object of the specified size.
*/
+ (instancetype)openSansBoldItalicFontOfSize:(CGFloat)size;

/** Returns a font object for the Source Sans Pro Semi Bold font which has the specified size instead.
 @param size The desired size (in points) of the new font object. This value must be greater than 0.0
 @return A font object of the specified size.
*/
+ (instancetype)openSansSemiBoldFontOfSize:(CGFloat)size;

/** Returns a font object for the Source Sans Pro Semi Bold Italic font which has the specified size instead.
 @param size The desired size (in points) of the new font object. This value must be greater than 0.0
 @return A font object of the specified size.
*/
+ (instancetype)openSansSemiBoldItalicFontOfSize:(CGFloat)size;

@end

