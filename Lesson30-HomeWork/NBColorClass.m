//
//  NBColorClass.m
//  Lesson30-HomeWork
//
//  Created by Nick Bibikov on 12/5/14.
//  Copyright (c) 2014 Nick Bibikov. All rights reserved.
//

#import "NBColorClass.h"


@implementation NBColorClass


- (NSDictionary*) randomColor {
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0away from black
    
    NSString* valueRGB = [NSString stringWithFormat:@"Color HUE {%1.2f, %1.2f, %1.2f}", hue, saturation, brightness];
    
    return  [NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1.f], @"Color",
             [NSString stringWithString: valueRGB], @"valueHUE", nil];
    
}



-(NSString *) randomName {

    NSString* allName = @"alizarin almond amaranth amber amber amethyst apricot aqua aquamarine arsenic asparagus auburn aureolin aurometalsaurus awesome azure azure bazaar beaver beige bistre bittersweet black blond blue blue blue blush bole brass bronze brown brown bubbles buff burgundy burlywood byzantine byzantium cadet camel capri cardinal carmine carnelian ceil celadon cerise cerulean chamoisee champagne charcoal chartreuse chartreuse chestnut chocolate cinereous cinnabar cinnamon citrine cobalt copper coquelicot coral cordovan corn cornsilk cream crimson cyan cyan daffodil dandelion denim desert drab ecru eggplant eggshell emerald fallow fandango fawn feldgrau firebrick flame flavescent flax folly fuchsia fulvous gainsboro gamboge glaucous gold gold goldenrod gray green green green green grullo harlequin heliotrope honeydew iceberg icterine inchworm indigo indigo iris isabelline ivory jade jasper jonquil khaki khaki lava lavender lavender lemon lilac lime lime linen liver lust magenta magenta magenta magnolia mahogany maize malachite manatee maroon maroon mauve mauvelous melon mint moccasin mulberry mustard myrtle ochre olive olivine onyx orange orange orange orchid peach pear pearl peridot periwinkle persimmon pink pistachio platinum plum plum prune puce pumpkin purple purple raspberry razzmatazz red red red redwood regalia rose rosewood ruby ruddy rufous russet rust saffron salmon sand sandstorm sangria sapphire scarlet seashell sepia shadow sienna silver sinopia skobeloff smalt snow straw sunglow sunset tan tangelo tangerine taupe teal thistle timberwolf tomato toolbox tumbleweed turquoise ube ultramarine umber urobilin vanilla verdigris vermilion veronica violet violet violet violet viridian wenge wheat white wisteria xanadu yellow yellow yellow zaffre";
    
    NSArray* namesArray = [allName componentsSeparatedByString:@" "];
    NSInteger random = arc4random() % [namesArray count];
    
    return [namesArray objectAtIndex:random];
}

@end
