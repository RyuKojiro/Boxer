/*
 Boxer is copyright 2011 Alun Bestor and contributors.
 Boxer is released under the GNU General Public License 2.0. A full copy of this license can be
 found in this XCode project at Resources/English.lproj/BoxerHelp/pages/legalese.html, or read
 online at [http://www.gnu.org/licenses/gpl-2.0.txt].
 */

#import "BXHUDSpinningProgressIndicator.h"
#import "NSShadow+BXShadowExtensions.h"

@implementation BXHUDSpinningProgressIndicator
@synthesize dropShadow = _dropShadow;

- (void) awakeFromNib
{
    self.color = [NSColor whiteColor];
    self.drawsBackground = NO;
    self.lineWidth = 2.0f;
    self.dropShadow = [NSShadow shadowWithBlurRadius: 4.0f
                                              offset: NSMakeSize(0, -1.0f)
                                               color: [NSColor blackColor]];
}

- (void) dealloc
{
    self.dropShadow = nil;
    [super dealloc];
}

- (void) drawRect: (NSRect)dirtyRect
{
    [NSGraphicsContext saveGraphicsState];
        [self.dropShadow set];
        [super drawRect: dirtyRect];
    [NSGraphicsContext restoreGraphicsState];
}

@end