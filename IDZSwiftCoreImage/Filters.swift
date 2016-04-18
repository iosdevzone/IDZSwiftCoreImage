//
//  Filters.swift
//  IDZSwiftCoreImage
//
//  Created by Danny Keogan on 4/18/16.
//  Copyright © 2016 iOS Developer Zone. All rights reserved.
//

import Foundation
import CoreImage

/**
 Base protocol for filters.
 */
public protocol Filter {
    /**
     A reference to the core image filter
     */
    var filter: CIFilter { get }
    /**
     The output of the filter.
     */
    var outputImage: CIImage? { get }
}

/**
 Code common to all filters.
 */
extension Filter {
    /**
    The output of the filter.
    */
    public var outputImage: CIImage? { return self.filter.outputImage }
}

//MARK: Generated code

/**
Accordion Fold Transition

- seealso:
	[CIAccordionFoldTransition](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAccordionFoldTransition)
*/
public class AccordionFoldTransition: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIAccordionFoldTransition filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputTargetImage: The target image for a transition.
	 - parameter inputBottomHeight: 
	 - parameter inputNumberOfFolds: 
	 - parameter inputFoldShadowAmount: 
	 - parameter inputTime: The duration of the effect.
	*/
	public init(inputImage: CIImage, inputTargetImage: CIImage, inputBottomHeight: CGFloat = 0.0, inputNumberOfFolds: CGFloat = 3.0, inputFoldShadowAmount: CGFloat = 0.1, inputTime: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputTargetImage":inputTargetImage,
			"inputBottomHeight":inputBottomHeight,
			"inputNumberOfFolds":inputNumberOfFolds,
			"inputFoldShadowAmount":inputFoldShadowAmount,
			"inputTime":inputTime		]
		guard let filter = CIFilter(name:"CIAccordionFoldTransition", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Addition

- seealso:
	[CIAdditionCompositing](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAdditionCompositing)
*/
public class AdditionCompositing: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIAdditionCompositing filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CIAdditionCompositing", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}





/**
Area Average

- seealso:
	[CIAreaAverage](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAreaAverage)
*/
public class AreaAverage: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIAreaAverage filter

	 - parameter inputImage: The image to process.
	 - parameter inputExtent: A rectangle that specifies the subregion of the image that you want to process.
	*/
	public init(inputImage: CIImage, inputExtent: CIVector = CIVector(x:0.0, y:0.0, z:640.0, w:80.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputExtent":inputExtent		]
		guard let filter = CIFilter(name:"CIAreaAverage", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Area Histogram

- seealso:
	[CIAreaHistogram](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAreaHistogram)
*/
public class AreaHistogram: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIAreaHistogram filter

	 - parameter inputImage: The image whose histogram you want to calculate.
	 - parameter inputExtent: A rectangle that specifies the subregion of the image that you want to process.
	 - parameter inputScale: The scale value to use for the histogram values.
	 - parameter inputCount: The number of bins for the histogram.
	*/
	public init(inputImage: CIImage, inputExtent: CIVector = CIVector(x:0.0, y:0.0, z:640.0, w:80.0), inputScale: CGFloat = 1.0, inputCount: CGFloat = 64.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputExtent":inputExtent,
			"inputScale":inputScale,
			"inputCount":inputCount		]
		guard let filter = CIFilter(name:"CIAreaHistogram", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Area Maximum

- seealso:
	[CIAreaMaximum](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAreaMaximum)
*/
public class AreaMaximum: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIAreaMaximum filter

	 - parameter inputImage: The image to process.
	 - parameter inputExtent: A rectangle that specifies the subregion of the image that you want to process.
	*/
	public init(inputImage: CIImage, inputExtent: CIVector = CIVector(x:0.0, y:0.0, z:640.0, w:80.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputExtent":inputExtent		]
		guard let filter = CIFilter(name:"CIAreaMaximum", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Area Maximum Alpha

- seealso:
	[CIAreaMaximumAlpha](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAreaMaximumAlpha)
*/
public class AreaMaximumAlpha: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIAreaMaximumAlpha filter

	 - parameter inputImage: The image to process.
	 - parameter inputExtent: A rectangle that specifies the subregion of the image that you want to process.
	*/
	public init(inputImage: CIImage, inputExtent: CIVector = CIVector(x:0.0, y:0.0, z:640.0, w:80.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputExtent":inputExtent		]
		guard let filter = CIFilter(name:"CIAreaMaximumAlpha", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Area Minimum

- seealso:
	[CIAreaMinimum](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAreaMinimum)
*/
public class AreaMinimum: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIAreaMinimum filter

	 - parameter inputImage: The image to process.
	 - parameter inputExtent: A rectangle that specifies the subregion of the image that you want to process.
	*/
	public init(inputImage: CIImage, inputExtent: CIVector = CIVector(x:0.0, y:0.0, z:640.0, w:80.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputExtent":inputExtent		]
		guard let filter = CIFilter(name:"CIAreaMinimum", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Area Minimum Alpha

- seealso:
	[CIAreaMinimumAlpha](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIAreaMinimumAlpha)
*/
public class AreaMinimumAlpha: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIAreaMinimumAlpha filter

	 - parameter inputImage: The image to process.
	 - parameter inputExtent: A rectangle that specifies the subregion of the image that you want to process.
	*/
	public init(inputImage: CIImage, inputExtent: CIVector = CIVector(x:0.0, y:0.0, z:640.0, w:80.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputExtent":inputExtent		]
		guard let filter = CIFilter(name:"CIAreaMinimumAlpha", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}



/**
Bars Swipe Transition

- seealso:
	[CIBarsSwipeTransition](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBarsSwipeTransition)
*/
public class BarsSwipeTransition: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIBarsSwipeTransition filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputTargetImage: The target image for a transition.
	 - parameter inputAngle: The angle (in radians) of the bars.
	 - parameter inputWidth: The width of each bar.
	 - parameter inputBarOffset: The offset of one bar with respect to another
	 - parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
	*/
	public init(inputImage: CIImage, inputTargetImage: CIImage, inputAngle: CGFloat = 3.14159265358979, inputWidth: CGFloat = 30.0, inputBarOffset: CGFloat = 10.0, inputTime: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputTargetImage":inputTargetImage,
			"inputAngle":inputAngle,
			"inputWidth":inputWidth,
			"inputBarOffset":inputBarOffset,
			"inputTime":inputTime		]
		guard let filter = CIFilter(name:"CIBarsSwipeTransition", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Blend With Alpha Mask

- seealso:
	[CIBlendWithAlphaMask](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBlendWithAlphaMask)
*/
public class BlendWithAlphaMask: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIBlendWithAlphaMask filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	 - parameter inputMaskImage: A masking image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage, inputMaskImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage,
			"inputMaskImage":inputMaskImage		]
		guard let filter = CIFilter(name:"CIBlendWithAlphaMask", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Blend With Mask

- seealso:
	[CIBlendWithMask](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBlendWithMask)
*/
public class BlendWithMask: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIBlendWithMask filter

	 - parameter inputImage: The image to use as a foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	 - parameter inputMaskImage: A grayscale mask. When a mask value is 0.0, the result is the background. When the mask value is 1.0, the result is the image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage, inputMaskImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage,
			"inputMaskImage":inputMaskImage		]
		guard let filter = CIFilter(name:"CIBlendWithMask", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Bloom

- seealso:
	[CIBloom](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBloom)
*/
public class Bloom: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIBloom filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputRadius: The radius determines how many pixels are used to create the effect. The larger the radius, the greater the effect.
	 - parameter inputIntensity: The intensity of the effect. A value of 0.0 is no effect. A value of 1.0 is the maximum effect.
	*/
	public init(inputImage: CIImage, inputRadius: CGFloat = 10.0, inputIntensity: CGFloat = 1.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputRadius":inputRadius,
			"inputIntensity":inputIntensity		]
		guard let filter = CIFilter(name:"CIBloom", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Box Blur

- seealso:
	[CIBoxBlur](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBoxBlur)
*/
public class BoxBlur: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIBoxBlur filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputRadius: The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.
	*/
	public init(inputImage: CIImage, inputRadius: CGFloat = 10.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputRadius":inputRadius		]
		guard let filter = CIFilter(name:"CIBoxBlur", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Bump Distortion

- seealso:
	[CIBumpDistortion](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBumpDistortion)
*/
public class BumpDistortion: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIBumpDistortion filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The center of the effect as x and y coordinates.
	 - parameter inputRadius: The radius determines how many pixels are used to create the distortion. The larger the radius, wider the extent of the distortion.
	 - parameter inputScale: The scale of the effect determines the curvature of the bump. A value of 0.0 has no effect. Positive values create an outward bump; negative values create an inward bump.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputRadius: CGFloat = 300.0, inputScale: CGFloat = 0.5) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputRadius":inputRadius,
			"inputScale":inputScale		]
		guard let filter = CIFilter(name:"CIBumpDistortion", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Bump Distortion Linear

- seealso:
	[CIBumpDistortionLinear](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIBumpDistortionLinear)
*/
public class BumpDistortionLinear: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIBumpDistortionLinear filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The center of the effect as x and y coordinates.
	 - parameter inputRadius: The radius determines how many pixels are used to create the distortion. The larger the radius, wider the extent of the distortion.
	 - parameter inputAngle: The angle (in radians) of the line around which the distortion occurs.
	 - parameter inputScale: The scale of the effect.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputRadius: CGFloat = 300.0, inputAngle: CGFloat = 0.0, inputScale: CGFloat = 0.5) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputRadius":inputRadius,
			"inputAngle":inputAngle,
			"inputScale":inputScale		]
		guard let filter = CIFilter(name:"CIBumpDistortionLinear", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Checkerboard

- seealso:
	[CICheckerboardGenerator](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICheckerboardGenerator)
*/
public class CheckerboardGenerator: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CICheckerboardGenerator filter

	 - parameter inputCenter: The center of the effect as x and y coordinates.
	 - parameter inputColor0: A color to use for the first set of the checkerboard squares.
	 - parameter inputColor1: A color to use for the second set of the checkerboard squares.
	 - parameter inputWidth: The width of a square in the checkerboard pattern.
	 - parameter inputSharpness: The sharpness of the checkerboard pattern. The smaller the value, the more blurry the pattern. Values range from 0.0 to 1.0.
	*/
	public init(inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputColor0: CIColor = CIColor(red:1.0, green:1.0, blue:1.0, alpha:1.0), inputColor1: CIColor = CIColor(red:0.0, green:0.0, blue:0.0, alpha:1.0), inputWidth: CGFloat = 80.0, inputSharpness: CGFloat = 1.0) {
		let parameters:[String : AnyObject] = [
			"inputCenter":inputCenter,
			"inputColor0":inputColor0,
			"inputColor1":inputColor1,
			"inputWidth":inputWidth,
			"inputSharpness":inputSharpness		]
		guard let filter = CIFilter(name:"CICheckerboardGenerator", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Circle Splash Distortion

- seealso:
	[CICircleSplashDistortion](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICircleSplashDistortion)
*/
public class CircleSplashDistortion: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CICircleSplashDistortion filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The center of the effect as x and y coordinates.
	 - parameter inputRadius: The radius determines how many pixels are used to create the distortion. The larger the radius, wider the extent of the distortion.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputRadius: CGFloat = 150.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputRadius":inputRadius		]
		guard let filter = CIFilter(name:"CICircleSplashDistortion", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Circular Screen

- seealso:
	[CICircularScreen](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICircularScreen)
*/
public class CircularScreen: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CICircularScreen filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the circular screen pattern
	 - parameter inputWidth: The distance between each circle in the pattern.
	 - parameter inputSharpness: The sharpness of the circles. The larger the value, the sharper the circles.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputWidth: CGFloat = 6.0, inputSharpness: CGFloat = 0.7) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputWidth":inputWidth,
			"inputSharpness":inputSharpness		]
		guard let filter = CIFilter(name:"CICircularScreen", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Circular Wrap Distortion

- seealso:
	[CICircularWrap](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICircularWrap)
*/
public class CircularWrap: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CICircularWrap filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The center of the effect as x and y coordinates.
	 - parameter inputRadius: The radius determines how many pixels are used to create the distortion. The larger the radius, wider the extent of the distortion.
	 - parameter inputAngle: The angle of the effect.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputRadius: CGFloat = 150.0, inputAngle: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputRadius":inputRadius,
			"inputAngle":inputAngle		]
		guard let filter = CIFilter(name:"CICircularWrap", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
CMYK Halftone

- seealso:
	[CICMYKHalftone](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICMYKHalftone)
*/
public class CMYKHalftone: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CICMYKHalftone filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the halftone pattern
	 - parameter inputWidth: The distance between dots in the pattern.
	 - parameter inputAngle: The angle of the pattern.
	 - parameter inputSharpness: The sharpness of the pattern. The larger the value, the sharper the pattern.
	 - parameter inputGCR: The gray component replacement value. The value can vary from 0.0 (none) to 1.0.
	 - parameter inputUCR: The under color removal value. The value can vary from 0.0 to 1.0. 
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputWidth: CGFloat = 6.0, inputAngle: CGFloat = 0.0, inputSharpness: CGFloat = 0.7, inputGCR: CGFloat = 1.0, inputUCR: CGFloat = 0.5) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputWidth":inputWidth,
			"inputAngle":inputAngle,
			"inputSharpness":inputSharpness,
			"inputGCR":inputGCR,
			"inputUCR":inputUCR		]
		guard let filter = CIFilter(name:"CICMYKHalftone", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Color Blend Mode

- seealso:
	[CIColorBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorBlendMode)
*/
public class ColorBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIColorBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CIColorBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Color Burn Blend Mode

- seealso:
	[CIColorBurnBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorBurnBlendMode)
*/
public class ColorBurnBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIColorBurnBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CIColorBurnBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Color Clamp

- seealso:
	[CIColorClamp](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorClamp)
*/
public class ColorClamp: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIColorClamp filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputMinComponents: Lower clamping values
	 - parameter inputMaxComponents: Higher clamping values
	*/
	public init(inputImage: CIImage, inputMinComponents: CIVector = CIVector(x:0.0, y:0.0, z:0.0, w:0.0), inputMaxComponents: CIVector = CIVector(x:1.0, y:1.0, z:1.0, w:1.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputMinComponents":inputMinComponents,
			"inputMaxComponents":inputMaxComponents		]
		guard let filter = CIFilter(name:"CIColorClamp", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Color Controls

- seealso:
	[CIColorControls](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorControls)
*/
public class ColorControls: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIColorControls filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputSaturation: The amount of saturation to apply. The larger the value, the more saturated the result.
	 - parameter inputBrightness: The amount of brightness to apply. The larger the value, the brighter the result.
	 - parameter inputContrast: The amount of contrast to apply. The larger the value, the more contrast in the resulting image.
	*/
	public init(inputImage: CIImage, inputSaturation: CGFloat = 1.0, inputBrightness: CGFloat = 0.0, inputContrast: CGFloat = 1.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputSaturation":inputSaturation,
			"inputBrightness":inputBrightness,
			"inputContrast":inputContrast		]
		guard let filter = CIFilter(name:"CIColorControls", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Color Cross Polynomial

- seealso:
	[CIColorCrossPolynomial](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorCrossPolynomial)
*/
public class ColorCrossPolynomial: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIColorCrossPolynomial filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputRedCoefficients: Polynomial coefficients for red channel
	 - parameter inputGreenCoefficients: Polynomial coefficients for green channel
	 - parameter inputBlueCoefficients: Polynomial coefficients for blue channel
	*/
	public init(inputImage: CIImage, inputRedCoefficients: CIVector = CIVector(string:"[1 0 0 0 0 0 0 0 0 0]"), inputGreenCoefficients: CIVector = CIVector(string:"[0 1 0 0 0 0 0 0 0 0]"), inputBlueCoefficients: CIVector = CIVector(string:"[0 0 1 0 0 0 0 0 0 0]")) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputRedCoefficients":inputRedCoefficients,
			"inputGreenCoefficients":inputGreenCoefficients,
			"inputBlueCoefficients":inputBlueCoefficients		]
		guard let filter = CIFilter(name:"CIColorCrossPolynomial", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Color Dodge Blend Mode

- seealso:
	[CIColorDodgeBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorDodgeBlendMode)
*/
public class ColorDodgeBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIColorDodgeBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CIColorDodgeBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Color Invert

- seealso:
	[CIColorInvert](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorInvert)
*/
public class ColorInvert: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIColorInvert filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	*/
	public init(inputImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage		]
		guard let filter = CIFilter(name:"CIColorInvert", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Color Map

- seealso:
	[CIColorMap](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorMap)
*/
public class ColorMap: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIColorMap filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputGradientImage: The image data from this image transforms the source image values.
	*/
	public init(inputImage: CIImage, inputGradientImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputGradientImage":inputGradientImage		]
		guard let filter = CIFilter(name:"CIColorMap", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Color Matrix

- seealso:
	[CIColorMatrix](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorMatrix)
*/
public class ColorMatrix: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIColorMatrix filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputRVector: The amount of red to multiply the source color values by.
	 - parameter inputGVector: The amount of green to multiply the source color values by.
	 - parameter inputBVector: The amount of blue to multiply the source color values by.
	 - parameter inputAVector: The amount of alpha to multiply the source color values by.
	 - parameter inputBiasVector: A vector that's added to each color component.
	*/
	public init(inputImage: CIImage, inputRVector: CIVector = CIVector(x:1.0, y:0.0, z:0.0, w:0.0), inputGVector: CIVector = CIVector(x:0.0, y:1.0, z:0.0, w:0.0), inputBVector: CIVector = CIVector(x:0.0, y:0.0, z:1.0, w:0.0), inputAVector: CIVector = CIVector(x:0.0, y:0.0, z:0.0, w:1.0), inputBiasVector: CIVector = CIVector(x:0.0, y:0.0, z:0.0, w:0.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputRVector":inputRVector,
			"inputGVector":inputGVector,
			"inputBVector":inputBVector,
			"inputAVector":inputAVector,
			"inputBiasVector":inputBiasVector		]
		guard let filter = CIFilter(name:"CIColorMatrix", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Color Monochrome

- seealso:
	[CIColorMonochrome](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorMonochrome)
*/
public class ColorMonochrome: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIColorMonochrome filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputColor: The monochrome color to apply to the image.
	 - parameter inputIntensity: The intensity of the monochrome effect. A value of 1.0 creates a monochrome image using the supplied color. A value of 0.0 has no effect on the image.
	*/
	public init(inputImage: CIImage, inputColor: CIColor = CIColor(red:0.6, green:0.45, blue:0.3, alpha:1.0), inputIntensity: CGFloat = 1.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputColor":inputColor,
			"inputIntensity":inputIntensity		]
		guard let filter = CIFilter(name:"CIColorMonochrome", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Color Polynomial

- seealso:
	[CIColorPolynomial](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorPolynomial)
*/
public class ColorPolynomial: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIColorPolynomial filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputRedCoefficients: Polynomial coefficients for red channel
	 - parameter inputGreenCoefficients: Polynomial coefficients for green channel
	 - parameter inputBlueCoefficients: Polynomial coefficients for blue channel
	 - parameter inputAlphaCoefficients: Polynomial coefficients for alpha channel
	*/
	public init(inputImage: CIImage, inputRedCoefficients: CIVector = CIVector(x:0.0, y:1.0, z:0.0, w:0.0), inputGreenCoefficients: CIVector = CIVector(x:0.0, y:1.0, z:0.0, w:0.0), inputBlueCoefficients: CIVector = CIVector(x:0.0, y:1.0, z:0.0, w:0.0), inputAlphaCoefficients: CIVector = CIVector(x:0.0, y:1.0, z:0.0, w:0.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputRedCoefficients":inputRedCoefficients,
			"inputGreenCoefficients":inputGreenCoefficients,
			"inputBlueCoefficients":inputBlueCoefficients,
			"inputAlphaCoefficients":inputAlphaCoefficients		]
		guard let filter = CIFilter(name:"CIColorPolynomial", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Color Posterize

- seealso:
	[CIColorPosterize](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColorPosterize)
*/
public class ColorPosterize: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIColorPosterize filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputLevels: The number of brightness levels to use for each color component. Lower values result in a more extreme poster effect.
	*/
	public init(inputImage: CIImage, inputLevels: CGFloat = 6.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputLevels":inputLevels		]
		guard let filter = CIFilter(name:"CIColorPosterize", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Column Average

- seealso:
	[CIColumnAverage](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIColumnAverage)
*/
public class ColumnAverage: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIColumnAverage filter

	 - parameter inputImage: The image to process.
	 - parameter inputExtent: A rectangle that specifies the subregion of the image that you want to process.
	*/
	public init(inputImage: CIImage, inputExtent: CIVector = CIVector(x:0.0, y:0.0, z:640.0, w:80.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputExtent":inputExtent		]
		guard let filter = CIFilter(name:"CIColumnAverage", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Comic Effect

- seealso:
	[CIComicEffect](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIComicEffect)
*/
public class ComicEffect: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIComicEffect filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	*/
	public init(inputImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage		]
		guard let filter = CIFilter(name:"CIComicEffect", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Constant Color

- seealso:
	[CIConstantColorGenerator](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIConstantColorGenerator)
*/
public class ConstantColorGenerator: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIConstantColorGenerator filter

	 - parameter inputColor: The color to generate.
	*/
	public init(inputColor: CIColor = CIColor(red:1.0, green:0.0, blue:0.0, alpha:1.0)) {
		let parameters:[String : AnyObject] = [
			"inputColor":inputColor		]
		guard let filter = CIFilter(name:"CIConstantColorGenerator", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
3 by 3 convolution

- seealso:
	[CIConvolution3X3](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIConvolution3X3)
*/
public class Convolution3X3: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIConvolution3X3 filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputWeights: 
	 - parameter inputBias: 
	*/
	public init(inputImage: CIImage, inputWeights: CIVector = CIVector(string:"[0 0 0 0 1 0 0 0 0]"), inputBias: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputWeights":inputWeights,
			"inputBias":inputBias		]
		guard let filter = CIFilter(name:"CIConvolution3X3", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
5 by 5 convolution

- seealso:
	[CIConvolution5X5](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIConvolution5X5)
*/
public class Convolution5X5: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIConvolution5X5 filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputWeights: 
	 - parameter inputBias: 
	*/
	public init(inputImage: CIImage, inputWeights: CIVector = CIVector(string:"[0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0]"), inputBias: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputWeights":inputWeights,
			"inputBias":inputBias		]
		guard let filter = CIFilter(name:"CIConvolution5X5", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
7 by 7 convolution

- seealso:
	[CIConvolution7X7](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIConvolution7X7)
*/
public class Convolution7X7: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIConvolution7X7 filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputWeights: 
	 - parameter inputBias: 
	*/
	public init(inputImage: CIImage, inputWeights: CIVector = CIVector(string:"[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]"), inputBias: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputWeights":inputWeights,
			"inputBias":inputBias		]
		guard let filter = CIFilter(name:"CIConvolution7X7", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Horizontal 9 Convolution

- seealso:
	[CIConvolution9Horizontal](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIConvolution9Horizontal)
*/
public class Convolution9Horizontal: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIConvolution9Horizontal filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputWeights: 
	 - parameter inputBias: 
	*/
	public init(inputImage: CIImage, inputWeights: CIVector = CIVector(string:"[0 0 0 0 1 0 0 0 0]"), inputBias: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputWeights":inputWeights,
			"inputBias":inputBias		]
		guard let filter = CIFilter(name:"CIConvolution9Horizontal", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Vertical 9 Convolution

- seealso:
	[CIConvolution9Vertical](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIConvolution9Vertical)
*/
public class Convolution9Vertical: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIConvolution9Vertical filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputWeights: 
	 - parameter inputBias: 
	*/
	public init(inputImage: CIImage, inputWeights: CIVector = CIVector(string:"[0 0 0 0 1 0 0 0 0]"), inputBias: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputWeights":inputWeights,
			"inputBias":inputBias		]
		guard let filter = CIFilter(name:"CIConvolution9Vertical", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Copy Machine

- seealso:
	[CICopyMachineTransition](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICopyMachineTransition)
*/
public class CopyMachineTransition: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CICopyMachineTransition filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputTargetImage: The target image for a transition.
	 - parameter inputExtent: A rectangle that defines the extent of the effect.
	 - parameter inputColor: The color of the copier light.
	 - parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
	 - parameter inputAngle: The angle of the copier light.
	 - parameter inputWidth: The width of the copier light. 
	 - parameter inputOpacity: The opacity of the copier light. A value of 0.0 is transparent. A value of 1.0 is opaque.
	*/
	public init(inputImage: CIImage, inputTargetImage: CIImage, inputExtent: CIVector = CIVector(x:0.0, y:0.0, z:300.0, w:300.0), inputColor: CIColor = CIColor(red:0.6, green:1.0, blue:0.8, alpha:1.0), inputTime: CGFloat = 0.0, inputAngle: CGFloat = 0.0, inputWidth: CGFloat = 200.0, inputOpacity: CGFloat = 1.3) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputTargetImage":inputTargetImage,
			"inputExtent":inputExtent,
			"inputColor":inputColor,
			"inputTime":inputTime,
			"inputAngle":inputAngle,
			"inputWidth":inputWidth,
			"inputOpacity":inputOpacity		]
		guard let filter = CIFilter(name:"CICopyMachineTransition", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Crop

- seealso:
	[CICrop](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICrop)
*/
public class Crop: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CICrop filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputRectangle: The rectangle that specifies the crop to apply to the image.
	*/
	public init(inputImage: CIImage, inputRectangle: CIVector = CIVector(x:-8.98846567431158e+307, y:-8.98846567431158e+307, z:1.79769313486232e+308, w:1.79769313486232e+308)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputRectangle":inputRectangle		]
		guard let filter = CIFilter(name:"CICrop", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Crystallize

- seealso:
	[CICrystallize](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICrystallize)
*/
public class Crystallize: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CICrystallize filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputRadius: The radius determines how many pixels are used to create the effect. The larger the radius, the larger the resulting crystals.
	 - parameter inputCenter: The center of the effect as x and y coordinates.
	*/
	public init(inputImage: CIImage, inputRadius: CGFloat = 20.0, inputCenter: CIVector = CIVector(x:150.0, y:150.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputRadius":inputRadius,
			"inputCenter":inputCenter		]
		guard let filter = CIFilter(name:"CICrystallize", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Darken Blend Mode

- seealso:
	[CIDarkenBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDarkenBlendMode)
*/
public class DarkenBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIDarkenBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CIDarkenBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Depth of Field

- seealso:
	[CIDepthOfField](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDepthOfField)
*/
public class DepthOfField: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIDepthOfField filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputPoint0: 
	 - parameter inputPoint1: 
	 - parameter inputSaturation: The amount to adjust the saturation.
	 - parameter inputUnsharpMaskRadius: 
	 - parameter inputUnsharpMaskIntensity: 
	 - parameter inputRadius: The distance from the center of the effect.
	*/
	public init(inputImage: CIImage, inputPoint0: CIVector = CIVector(x:0.0, y:300.0), inputPoint1: CIVector = CIVector(x:300.0, y:300.0), inputSaturation: CGFloat = 1.5, inputUnsharpMaskRadius: CGFloat = 2.5, inputUnsharpMaskIntensity: CGFloat = 0.5, inputRadius: CGFloat = 6.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputPoint0":inputPoint0,
			"inputPoint1":inputPoint1,
			"inputSaturation":inputSaturation,
			"inputUnsharpMaskRadius":inputUnsharpMaskRadius,
			"inputUnsharpMaskIntensity":inputUnsharpMaskIntensity,
			"inputRadius":inputRadius		]
		guard let filter = CIFilter(name:"CIDepthOfField", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Difference Blend Mode

- seealso:
	[CIDifferenceBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDifferenceBlendMode)
*/
public class DifferenceBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIDifferenceBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CIDifferenceBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Disc Blur

- seealso:
	[CIDiscBlur](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDiscBlur)
*/
public class DiscBlur: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIDiscBlur filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputRadius: The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.
	*/
	public init(inputImage: CIImage, inputRadius: CGFloat = 8.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputRadius":inputRadius		]
		guard let filter = CIFilter(name:"CIDiscBlur", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Disintegrate With Mask

- seealso:
	[CIDisintegrateWithMaskTransition](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDisintegrateWithMaskTransition)
*/
public class DisintegrateWithMaskTransition: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIDisintegrateWithMaskTransition filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputTargetImage: The target image for a transition.
	 - parameter inputMaskImage: An image that defines the shape to use when disintegrating from the source to the target image.
	 - parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
	 - parameter inputShadowRadius: The radius of the shadow created by the mask.
	 - parameter inputShadowDensity: The density of the shadow created by the mask.
	 - parameter inputShadowOffset: The offset of the shadow created by the mask.
	*/
	public init(inputImage: CIImage, inputTargetImage: CIImage, inputMaskImage: CIImage, inputTime: CGFloat = 0.0, inputShadowRadius: CGFloat = 8.0, inputShadowDensity: CGFloat = 0.65, inputShadowOffset: CIVector = CIVector(x:0.0, y:-10.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputTargetImage":inputTargetImage,
			"inputMaskImage":inputMaskImage,
			"inputTime":inputTime,
			"inputShadowRadius":inputShadowRadius,
			"inputShadowDensity":inputShadowDensity,
			"inputShadowOffset":inputShadowOffset		]
		guard let filter = CIFilter(name:"CIDisintegrateWithMaskTransition", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Displacement Distortion

- seealso:
	[CIDisplacementDistortion](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDisplacementDistortion)
*/
public class DisplacementDistortion: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIDisplacementDistortion filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputDisplacementImage: An image whose grayscale values will be applied to the source image.
	 - parameter inputScale: The amount of texturing of the resulting image. The larger the value, the greater the texturing.
	*/
	public init(inputImage: CIImage, inputDisplacementImage: CIImage, inputScale: CGFloat = 50.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputDisplacementImage":inputDisplacementImage,
			"inputScale":inputScale		]
		guard let filter = CIFilter(name:"CIDisplacementDistortion", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Dissolve

- seealso:
	[CIDissolveTransition](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDissolveTransition)
*/
public class DissolveTransition: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIDissolveTransition filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputTargetImage: The target image for a transition.
	 - parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
	*/
	public init(inputImage: CIImage, inputTargetImage: CIImage, inputTime: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputTargetImage":inputTargetImage,
			"inputTime":inputTime		]
		guard let filter = CIFilter(name:"CIDissolveTransition", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Divide Blend Mode

- seealso:
	[CIDivideBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDivideBlendMode)
*/
public class DivideBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIDivideBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CIDivideBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Dot Screen

- seealso:
	[CIDotScreen](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDotScreen)
*/
public class DotScreen: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIDotScreen filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the dot screen pattern
	 - parameter inputAngle: The angle of the pattern.
	 - parameter inputWidth: The distance between dots in the pattern.
	 - parameter inputSharpness: The sharpness of the pattern. The larger the value, the sharper the pattern.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputAngle: CGFloat = 0.0, inputWidth: CGFloat = 6.0, inputSharpness: CGFloat = 0.7) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputAngle":inputAngle,
			"inputWidth":inputWidth,
			"inputSharpness":inputSharpness		]
		guard let filter = CIFilter(name:"CIDotScreen", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Droste

- seealso:
	[CIDroste](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIDroste)
*/
public class Droste: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIDroste filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputInsetPoint0: 
	 - parameter inputInsetPoint1: 
	 - parameter inputStrands: 
	 - parameter inputPeriodicity: 
	 - parameter inputRotation: 
	 - parameter inputZoom: 
	*/
	public init(inputImage: CIImage, inputInsetPoint0: CIVector = CIVector(x:200.0, y:200.0), inputInsetPoint1: CIVector = CIVector(x:400.0, y:400.0), inputStrands: CGFloat = 1.0, inputPeriodicity: CGFloat = 1.0, inputRotation: CGFloat = 0.0, inputZoom: CGFloat = 1.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputInsetPoint0":inputInsetPoint0,
			"inputInsetPoint1":inputInsetPoint1,
			"inputStrands":inputStrands,
			"inputPeriodicity":inputPeriodicity,
			"inputRotation":inputRotation,
			"inputZoom":inputZoom		]
		guard let filter = CIFilter(name:"CIDroste", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Edges

- seealso:
	[CIEdges](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIEdges)
*/
public class Edges: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIEdges filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputIntensity: The intensity of the edges. The larger the value, the higher the intensity.
	*/
	public init(inputImage: CIImage, inputIntensity: CGFloat = 1.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputIntensity":inputIntensity		]
		guard let filter = CIFilter(name:"CIEdges", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Edge Work

- seealso:
	[CIEdgeWork](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIEdgeWork)
*/
public class EdgeWork: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIEdgeWork filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputRadius: The thickness of the edges. The larger the value, the thicker the edges.
	*/
	public init(inputImage: CIImage, inputRadius: CGFloat = 3.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputRadius":inputRadius		]
		guard let filter = CIFilter(name:"CIEdgeWork", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Eightfold Reflected Tile

- seealso:
	[CIEightfoldReflectedTile](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIEightfoldReflectedTile)
*/
public class EightfoldReflectedTile: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIEightfoldReflectedTile filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the effect
	 - parameter inputAngle: The angle (in radians) of the tiled pattern.
	 - parameter inputWidth: The width of a tile.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputAngle: CGFloat = 0.0, inputWidth: CGFloat = 100.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputAngle":inputAngle,
			"inputWidth":inputWidth		]
		guard let filter = CIFilter(name:"CIEightfoldReflectedTile", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Exclusion Blend Mode

- seealso:
	[CIExclusionBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIExclusionBlendMode)
*/
public class ExclusionBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIExclusionBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CIExclusionBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Exposure Adjust

- seealso:
	[CIExposureAdjust](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIExposureAdjust)
*/
public class ExposureAdjust: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIExposureAdjust filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputEV: The amount to adjust the exposure of the image by. The larger the value, the brighter the exposure.
	*/
	public init(inputImage: CIImage, inputEV: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputEV":inputEV		]
		guard let filter = CIFilter(name:"CIExposureAdjust", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
False Color

- seealso:
	[CIFalseColor](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIFalseColor)
*/
public class FalseColor: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIFalseColor filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputColor0: The first color to use for the color ramp.
	 - parameter inputColor1: The second color to use for the color ramp.
	*/
	public init(inputImage: CIImage, inputColor0: CIColor = CIColor(red:0.3, green:0.0, blue:0.0, alpha:1.0), inputColor1: CIColor = CIColor(red:1.0, green:0.9, blue:0.8, alpha:1.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputColor0":inputColor0,
			"inputColor1":inputColor1		]
		guard let filter = CIFilter(name:"CIFalseColor", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Flash

- seealso:
	[CIFlashTransition](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIFlashTransition)
*/
public class FlashTransition: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIFlashTransition filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputTargetImage: The target image for a transition.
	 - parameter inputCenter: The x and y position to use as the center of the effect
	 - parameter inputExtent: The extent of the flash.
	 - parameter inputColor: The color of the light rays emanating from the flash.
	 - parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
	 - parameter inputMaxStriationRadius: The radius of the light rays emanating from the flash.
	 - parameter inputStriationStrength: The strength of the light rays emanating from the flash.
	 - parameter inputStriationContrast: The contrast of the light rays emanating from the flash.
	 - parameter inputFadeThreshold: The amount of fade between the flash and the target image. The higher the value, the more flash time and the less fade time.
	*/
	public init(inputImage: CIImage, inputTargetImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputExtent: CIVector = CIVector(x:0.0, y:0.0, z:300.0, w:300.0), inputColor: CIColor = CIColor(red:1.0, green:0.8, blue:0.6, alpha:1.0), inputTime: CGFloat = 0.0, inputMaxStriationRadius: CGFloat = 2.58, inputStriationStrength: CGFloat = 0.5, inputStriationContrast: CGFloat = 1.375, inputFadeThreshold: CGFloat = 0.85) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputTargetImage":inputTargetImage,
			"inputCenter":inputCenter,
			"inputExtent":inputExtent,
			"inputColor":inputColor,
			"inputTime":inputTime,
			"inputMaxStriationRadius":inputMaxStriationRadius,
			"inputStriationStrength":inputStriationStrength,
			"inputStriationContrast":inputStriationContrast,
			"inputFadeThreshold":inputFadeThreshold		]
		guard let filter = CIFilter(name:"CIFlashTransition", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Fourfold Reflected Tile

- seealso:
	[CIFourfoldReflectedTile](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIFourfoldReflectedTile)
*/
public class FourfoldReflectedTile: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIFourfoldReflectedTile filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the effect
	 - parameter inputAngle: The angle (in radians) of the tiled pattern.
	 - parameter inputWidth: The width of a tile.
	 - parameter inputAcuteAngle: The primary angle for the repeating reflected tile. Small values create thin diamond tiles, and higher values create fatter reflected tiles.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputAngle: CGFloat = 0.0, inputWidth: CGFloat = 100.0, inputAcuteAngle: CGFloat = 1.5707963267949) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputAngle":inputAngle,
			"inputWidth":inputWidth,
			"inputAcuteAngle":inputAcuteAngle		]
		guard let filter = CIFilter(name:"CIFourfoldReflectedTile", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Fourfold Rotated Tile

- seealso:
	[CIFourfoldRotatedTile](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIFourfoldRotatedTile)
*/
public class FourfoldRotatedTile: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIFourfoldRotatedTile filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the effect
	 - parameter inputAngle: The angle (in radians) of the tiled pattern.
	 - parameter inputWidth: The width of a tile.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputAngle: CGFloat = 0.0, inputWidth: CGFloat = 100.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputAngle":inputAngle,
			"inputWidth":inputWidth		]
		guard let filter = CIFilter(name:"CIFourfoldRotatedTile", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Fourfold Translated Tile

- seealso:
	[CIFourfoldTranslatedTile](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIFourfoldTranslatedTile)
*/
public class FourfoldTranslatedTile: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIFourfoldTranslatedTile filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the effect
	 - parameter inputAngle: The angle (in radians) of the tiled pattern.
	 - parameter inputWidth: The width of a tile.
	 - parameter inputAcuteAngle: The primary angle for the repeating translated tile. Small values create thin diamond tiles, and higher values create fatter translated tiles.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputAngle: CGFloat = 0.0, inputWidth: CGFloat = 100.0, inputAcuteAngle: CGFloat = 1.5707963267949) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputAngle":inputAngle,
			"inputWidth":inputWidth,
			"inputAcuteAngle":inputAcuteAngle		]
		guard let filter = CIFilter(name:"CIFourfoldTranslatedTile", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Gamma Adjust

- seealso:
	[CIGammaAdjust](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIGammaAdjust)
*/
public class GammaAdjust: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIGammaAdjust filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputPower: A gamma value to use to correct image brightness. The larger the value, the darker the result.
	*/
	public init(inputImage: CIImage, inputPower: CGFloat = 1.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputPower":inputPower		]
		guard let filter = CIFilter(name:"CIGammaAdjust", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Gaussian Blur

- seealso:
	[CIGaussianBlur](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIGaussianBlur)
*/
public class GaussianBlur: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIGaussianBlur filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputRadius: The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.
	*/
	public init(inputImage: CIImage, inputRadius: CGFloat = 10.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputRadius":inputRadius		]
		guard let filter = CIFilter(name:"CIGaussianBlur", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Gaussian Gradient

- seealso:
	[CIGaussianGradient](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIGaussianGradient)
*/
public class GaussianGradient: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIGaussianGradient filter

	 - parameter inputCenter: The center of the effect as x and y coordinates.
	 - parameter inputColor0: The first color to use in the gradient.
	 - parameter inputColor1: The second color to use in the gradient.
	 - parameter inputRadius: The radius of the Gaussian distribution.
	*/
	public init(inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputColor0: CIColor = CIColor(red:1.0, green:1.0, blue:1.0, alpha:1.0), inputColor1: CIColor = CIColor(red:0.0, green:0.0, blue:0.0, alpha:0.0), inputRadius: CGFloat = 300.0) {
		let parameters:[String : AnyObject] = [
			"inputCenter":inputCenter,
			"inputColor0":inputColor0,
			"inputColor1":inputColor1,
			"inputRadius":inputRadius		]
		guard let filter = CIFilter(name:"CIGaussianGradient", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Glass Distortion

- seealso:
	[CIGlassDistortion](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIGlassDistortion)
*/
public class GlassDistortion: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIGlassDistortion filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputTexture: A texture to apply to the source image.
	 - parameter inputCenter: The center of the effect as x and y coordinates.
	 - parameter inputScale: The amount of texturing of the resulting image. The larger the value, the greater the texturing.
	*/
	public init(inputImage: CIImage, inputTexture: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputScale: CGFloat = 200.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputTexture":inputTexture,
			"inputCenter":inputCenter,
			"inputScale":inputScale		]
		guard let filter = CIFilter(name:"CIGlassDistortion", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Glass Lozenge

- seealso:
	[CIGlassLozenge](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIGlassLozenge)
*/
public class GlassLozenge: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIGlassLozenge filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputPoint0: The x and y position that defines the center of the circle at one end of the lozenge.
	 - parameter inputPoint1: The x and y position that defines the center of the circle at the other end of the lozenge.
	 - parameter inputRadius: The radius of the lozenge. The larger the radius, wider the extent of the distortion.
	 - parameter inputRefraction: The refraction of the glass.
	*/
	public init(inputImage: CIImage, inputPoint0: CIVector = CIVector(x:150.0, y:150.0), inputPoint1: CIVector = CIVector(x:350.0, y:150.0), inputRadius: CGFloat = 100.0, inputRefraction: CGFloat = 1.7) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputPoint0":inputPoint0,
			"inputPoint1":inputPoint1,
			"inputRadius":inputRadius,
			"inputRefraction":inputRefraction		]
		guard let filter = CIFilter(name:"CIGlassLozenge", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Glide Reflected Tile

- seealso:
	[CIGlideReflectedTile](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIGlideReflectedTile)
*/
public class GlideReflectedTile: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIGlideReflectedTile filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the effect
	 - parameter inputAngle: The angle (in radians) of the tiled pattern.
	 - parameter inputWidth: The width of a tile.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputAngle: CGFloat = 0.0, inputWidth: CGFloat = 100.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputAngle":inputAngle,
			"inputWidth":inputWidth		]
		guard let filter = CIFilter(name:"CIGlideReflectedTile", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Gloom

- seealso:
	[CIGloom](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIGloom)
*/
public class Gloom: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIGloom filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputRadius: The radius determines how many pixels are used to create the effect. The larger the radius, the greater the effect.
	 - parameter inputIntensity: The intensity of the effect. A value of 0.0 is no effect. A value of 1.0 is the maximum effect.
	*/
	public init(inputImage: CIImage, inputRadius: CGFloat = 10.0, inputIntensity: CGFloat = 1.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputRadius":inputRadius,
			"inputIntensity":inputIntensity		]
		guard let filter = CIFilter(name:"CIGloom", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Hard Light Blend Mode

- seealso:
	[CIHardLightBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHardLightBlendMode)
*/
public class HardLightBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIHardLightBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CIHardLightBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Hatched Screen

- seealso:
	[CIHatchedScreen](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHatchedScreen)
*/
public class HatchedScreen: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIHatchedScreen filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the hatched screen pattern
	 - parameter inputAngle: The angle of the pattern.
	 - parameter inputWidth: The distance between lines in the pattern.
	 - parameter inputSharpness: The amount of sharpening to apply.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputAngle: CGFloat = 0.0, inputWidth: CGFloat = 6.0, inputSharpness: CGFloat = 0.7) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputAngle":inputAngle,
			"inputWidth":inputWidth,
			"inputSharpness":inputSharpness		]
		guard let filter = CIFilter(name:"CIHatchedScreen", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Height Field From Mask

- seealso:
	[CIHeightFieldFromMask](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHeightFieldFromMask)
*/
public class HeightFieldFromMask: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIHeightFieldFromMask filter

	 - parameter inputImage: The white values of the mask define those pixels that are inside the height field while the black values define those pixels that are outside. The field varies smoothly and continuously inside the mask, reaching the value 0 at the edge of the mask.
	 - parameter inputRadius: The distance from the edge of the mask for the smooth transition is proportional to the input radius. Larger values make the transition smoother and more pronounced. Smaller values make the transition approximate a fillet radius.
	*/
	public init(inputImage: CIImage, inputRadius: CGFloat = 10.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputRadius":inputRadius		]
		guard let filter = CIFilter(name:"CIHeightFieldFromMask", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Hexagonal Pixellate

- seealso:
	[CIHexagonalPixellate](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHexagonalPixellate)
*/
public class HexagonalPixellate: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIHexagonalPixellate filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the effect
	 - parameter inputScale: The scale determines the size of the hexagons. Larger values result in larger hexagons.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputScale: CGFloat = 8.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputScale":inputScale		]
		guard let filter = CIFilter(name:"CIHexagonalPixellate", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Highlight and Shadow Adjust

- seealso:
	[CIHighlightShadowAdjust](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHighlightShadowAdjust)
*/
public class HighlightShadowAdjust: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIHighlightShadowAdjust filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputRadius: Shadow Hightlight Radius
	 - parameter inputShadowAmount: The amount of adjustment to the shadows of the image.
	 - parameter inputHighlightAmount: The amount of adjustment to the highlights of the image.
	*/
	public init(inputImage: CIImage, inputRadius: CGFloat = 0.0, inputShadowAmount: CGFloat = 0.0, inputHighlightAmount: CGFloat = 1.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputRadius":inputRadius,
			"inputShadowAmount":inputShadowAmount,
			"inputHighlightAmount":inputHighlightAmount		]
		guard let filter = CIFilter(name:"CIHighlightShadowAdjust", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Histogram Display

- seealso:
	[CIHistogramDisplayFilter](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHistogramDisplayFilter)
*/
public class HistogramDisplayFilter: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIHistogramDisplayFilter filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputHeight: The height of the displayable histogram image.
	 - parameter inputHighLimit: The fraction of the right portion of the histogram image to make lighter.
	 - parameter inputLowLimit: The fraction of the left portion of the histogram image to make darker
	*/
	public init(inputImage: CIImage, inputHeight: CGFloat = 100.0, inputHighLimit: CGFloat = 1.0, inputLowLimit: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputHeight":inputHeight,
			"inputHighLimit":inputHighLimit,
			"inputLowLimit":inputLowLimit		]
		guard let filter = CIFilter(name:"CIHistogramDisplayFilter", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Hole Distortion

- seealso:
	[CIHoleDistortion](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHoleDistortion)
*/
public class HoleDistortion: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIHoleDistortion filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The center of the effect as x and y coordinates.
	 - parameter inputRadius: The radius determines how many pixels are used to create the distortion. The larger the radius, wider the extent of the distortion.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputRadius: CGFloat = 150.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputRadius":inputRadius		]
		guard let filter = CIFilter(name:"CIHoleDistortion", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Hue Adjust

- seealso:
	[CIHueAdjust](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHueAdjust)
*/
public class HueAdjust: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIHueAdjust filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputAngle: An angle (in radians) to use to correct the hue of an image.
	*/
	public init(inputImage: CIImage, inputAngle: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputAngle":inputAngle		]
		guard let filter = CIFilter(name:"CIHueAdjust", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Hue Blend Mode

- seealso:
	[CIHueBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIHueBlendMode)
*/
public class HueBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIHueBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CIHueBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Kaleidoscope

- seealso:
	[CIKaleidoscope](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIKaleidoscope)
*/
public class Kaleidoscope: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIKaleidoscope filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCount: The number of reflections in the pattern.
	 - parameter inputCenter: The x and y position to use as the center of the effect
	 - parameter inputAngle: The angle of reflection.
	*/
	public init(inputImage: CIImage, inputCount: CGFloat = 6.0, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputAngle: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCount":inputCount,
			"inputCenter":inputCenter,
			"inputAngle":inputAngle		]
		guard let filter = CIFilter(name:"CIKaleidoscope", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Lanczos Scale Transform

- seealso:
	[CILanczosScaleTransform](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILanczosScaleTransform)
*/
public class LanczosScaleTransform: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CILanczosScaleTransform filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputScale: The scaling factor to use on the image. Values less than 1.0 scale down the images. Values greater than 1.0 scale up the image.
	 - parameter inputAspectRatio: The aspect ratio of the image.
	*/
	public init(inputImage: CIImage, inputScale: CGFloat = 1.0, inputAspectRatio: CGFloat = 1.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputScale":inputScale,
			"inputAspectRatio":inputAspectRatio		]
		guard let filter = CIFilter(name:"CILanczosScaleTransform", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Lenticular Halo

- seealso:
	[CILenticularHaloGenerator](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILenticularHaloGenerator)
*/
public class LenticularHaloGenerator: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CILenticularHaloGenerator filter

	 - parameter inputCenter: The x and y position to use as the center of the halo.
	 - parameter inputColor: A color.
	 - parameter inputHaloRadius: The radius of the halo.
	 - parameter inputHaloWidth: The width if the halo, from its inner radius to its outer radius.
	 - parameter inputHaloOverlap: 
	 - parameter inputStriationStrength: The intensity of the halo colors. Larger values are more intense.
	 - parameter inputStriationContrast: The contrast of the halo colors. Larger values are higher contrast.
	 - parameter inputTime: The duration of the effect.
	*/
	public init(inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputColor: CIColor = CIColor(red:1.0, green:0.9, blue:0.8, alpha:1.0), inputHaloRadius: CGFloat = 70.0, inputHaloWidth: CGFloat = 87.0, inputHaloOverlap: CGFloat = 0.77, inputStriationStrength: CGFloat = 0.5, inputStriationContrast: CGFloat = 1.0, inputTime: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputCenter":inputCenter,
			"inputColor":inputColor,
			"inputHaloRadius":inputHaloRadius,
			"inputHaloWidth":inputHaloWidth,
			"inputHaloOverlap":inputHaloOverlap,
			"inputStriationStrength":inputStriationStrength,
			"inputStriationContrast":inputStriationContrast,
			"inputTime":inputTime		]
		guard let filter = CIFilter(name:"CILenticularHaloGenerator", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Lighten Blend Mode

- seealso:
	[CILightenBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILightenBlendMode)
*/
public class LightenBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CILightenBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CILightenBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Light Tunnel Distortion

- seealso:
	[CILightTunnel](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILightTunnel)
*/
public class LightTunnel: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CILightTunnel filter

	 - parameter inputImage: The image to process.
	 - parameter inputCenter: Center of the light tunnel.
	 - parameter inputRotation: Rotation angle of the light tunnel.
	 - parameter inputRadius: center radius of the light tunnel.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputRotation: CGFloat = 0.0, inputRadius: CGFloat = 100.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputRotation":inputRotation,
			"inputRadius":inputRadius		]
		guard let filter = CIFilter(name:"CILightTunnel", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Linear Burn Blend Mode

- seealso:
	[CILinearBurnBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILinearBurnBlendMode)
*/
public class LinearBurnBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CILinearBurnBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CILinearBurnBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Linear Dodge Blend Mode

- seealso:
	[CILinearDodgeBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILinearDodgeBlendMode)
*/
public class LinearDodgeBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CILinearDodgeBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CILinearDodgeBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Linear Gradient

- seealso:
	[CILinearGradient](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILinearGradient)
*/
public class LinearGradient: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CILinearGradient filter

	 - parameter inputPoint0: The starting position of the gradient -- where the first color begins.
	 - parameter inputPoint1: The ending position of the gradient -- where the second color begins.
	 - parameter inputColor0: The first color to use in the gradient.
	 - parameter inputColor1: The second color to use in the gradient.
	*/
	public init(inputPoint0: CIVector = CIVector(x:0.0, y:0.0), inputPoint1: CIVector = CIVector(x:200.0, y:200.0), inputColor0: CIColor = CIColor(red:1.0, green:1.0, blue:1.0, alpha:1.0), inputColor1: CIColor = CIColor(red:0.0, green:0.0, blue:0.0, alpha:1.0)) {
		let parameters:[String : AnyObject] = [
			"inputPoint0":inputPoint0,
			"inputPoint1":inputPoint1,
			"inputColor0":inputColor0,
			"inputColor1":inputColor1		]
		guard let filter = CIFilter(name:"CILinearGradient", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Linear to sRGB Tone Curve

- seealso:
	[CILinearToSRGBToneCurve](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILinearToSRGBToneCurve)
*/
public class LinearToSRGBToneCurve: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CILinearToSRGBToneCurve filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	*/
	public init(inputImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage		]
		guard let filter = CIFilter(name:"CILinearToSRGBToneCurve", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Line Overlay

- seealso:
	[CILineOverlay](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILineOverlay)
*/
public class LineOverlay: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CILineOverlay filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputNRNoiseLevel: The noise level of the image (used with camera data) that gets removed before tracing the edges of the image. Increasing the noise level helps to clean up the traced edges of the image.
	 - parameter inputNRSharpness: The amount of sharpening done when removing noise in the image before tracing the edges of the image. This improves the edge acquisition.
	 - parameter inputEdgeIntensity: The accentuation factor of the Sobel gradient information when tracing the edges of the image. Higher values find more edges, although typically a low value (such as 1.0) is used.
	 - parameter inputThreshold: This value determines edge visibility. Larger values thin out the edges.
	 - parameter inputContrast: The amount of anti-aliasing to use on the edges produced by this filter. Higher values produce higher contrast edges (they are less anti-aliased).
	*/
	public init(inputImage: CIImage, inputNRNoiseLevel: CGFloat = 0.07, inputNRSharpness: CGFloat = 0.71, inputEdgeIntensity: CGFloat = 1.0, inputThreshold: CGFloat = 0.1, inputContrast: CGFloat = 50.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputNRNoiseLevel":inputNRNoiseLevel,
			"inputNRSharpness":inputNRSharpness,
			"inputEdgeIntensity":inputEdgeIntensity,
			"inputThreshold":inputThreshold,
			"inputContrast":inputContrast		]
		guard let filter = CIFilter(name:"CILineOverlay", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Line Screen

- seealso:
	[CILineScreen](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILineScreen)
*/
public class LineScreen: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CILineScreen filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the line screen pattern
	 - parameter inputAngle: The angle of the pattern.
	 - parameter inputWidth: The distance between lines in the pattern.
	 - parameter inputSharpness: The sharpness of the pattern. The larger the value, the sharper the pattern.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputAngle: CGFloat = 0.0, inputWidth: CGFloat = 6.0, inputSharpness: CGFloat = 0.7) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputAngle":inputAngle,
			"inputWidth":inputWidth,
			"inputSharpness":inputSharpness		]
		guard let filter = CIFilter(name:"CILineScreen", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Luminosity Blend Mode

- seealso:
	[CILuminosityBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CILuminosityBlendMode)
*/
public class LuminosityBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CILuminosityBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CILuminosityBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Masked Variable Blur

- seealso:
	[CIMaskedVariableBlur](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMaskedVariableBlur)
*/
public class MaskedVariableBlur: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIMaskedVariableBlur filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputMask: 
	 - parameter inputRadius: The distance from the center of the effect.
	*/
	public init(inputImage: CIImage, inputMask: CIImage, inputRadius: CGFloat = 5.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputMask":inputMask,
			"inputRadius":inputRadius		]
		guard let filter = CIFilter(name:"CIMaskedVariableBlur", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Mask to Alpha

- seealso:
	[CIMaskToAlpha](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMaskToAlpha)
*/
public class MaskToAlpha: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIMaskToAlpha filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	*/
	public init(inputImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage		]
		guard let filter = CIFilter(name:"CIMaskToAlpha", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Maximum Component

- seealso:
	[CIMaximumComponent](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMaximumComponent)
*/
public class MaximumComponent: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIMaximumComponent filter

	 - parameter inputImage: The image to process.
	*/
	public init(inputImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage		]
		guard let filter = CIFilter(name:"CIMaximumComponent", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Maximum

- seealso:
	[CIMaximumCompositing](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMaximumCompositing)
*/
public class MaximumCompositing: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIMaximumCompositing filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CIMaximumCompositing", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Median

- seealso:
	[CIMedianFilter](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMedianFilter)
*/
public class MedianFilter: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIMedianFilter filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	*/
	public init(inputImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage		]
		guard let filter = CIFilter(name:"CIMedianFilter", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Minimum Component

- seealso:
	[CIMinimumComponent](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMinimumComponent)
*/
public class MinimumComponent: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIMinimumComponent filter

	 - parameter inputImage: The image to process.
	*/
	public init(inputImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage		]
		guard let filter = CIFilter(name:"CIMinimumComponent", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Minimum

- seealso:
	[CIMinimumCompositing](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMinimumCompositing)
*/
public class MinimumCompositing: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIMinimumCompositing filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CIMinimumCompositing", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Mod

- seealso:
	[CIModTransition](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIModTransition)
*/
public class ModTransition: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIModTransition filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputTargetImage: The target image for a transition.
	 - parameter inputCenter: The x and y position to use as the center of the effect
	 - parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
	 - parameter inputAngle: The angle of the mod hole pattern.
	 - parameter inputRadius: The radius of the undistorted holes in the pattern.
	 - parameter inputCompression: The amount of stretching applied to the mod hole pattern. Holes in the center are not distorted as much as those at the edge of the image.
	*/
	public init(inputImage: CIImage, inputTargetImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputTime: CGFloat = 0.0, inputAngle: CGFloat = 2.0, inputRadius: CGFloat = 150.0, inputCompression: CGFloat = 300.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputTargetImage":inputTargetImage,
			"inputCenter":inputCenter,
			"inputTime":inputTime,
			"inputAngle":inputAngle,
			"inputRadius":inputRadius,
			"inputCompression":inputCompression		]
		guard let filter = CIFilter(name:"CIModTransition", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Motion Blur

- seealso:
	[CIMotionBlur](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMotionBlur)
*/
public class MotionBlur: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIMotionBlur filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputRadius: The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.
	 - parameter inputAngle: The angle of the motion determines which direction the blur smears.
	*/
	public init(inputImage: CIImage, inputRadius: CGFloat = 20.0, inputAngle: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputRadius":inputRadius,
			"inputAngle":inputAngle		]
		guard let filter = CIFilter(name:"CIMotionBlur", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Multiply Blend Mode

- seealso:
	[CIMultiplyBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMultiplyBlendMode)
*/
public class MultiplyBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIMultiplyBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CIMultiplyBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Multiply

- seealso:
	[CIMultiplyCompositing](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIMultiplyCompositing)
*/
public class MultiplyCompositing: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIMultiplyCompositing filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CIMultiplyCompositing", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Noise Reduction

- seealso:
	[CINoiseReduction](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CINoiseReduction)
*/
public class NoiseReduction: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CINoiseReduction filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputNoiseLevel: The amount of noise reduction. The larger the value, the more noise reduction.
	 - parameter inputSharpness: The sharpness of the final image. The larger the value, the sharper the result.
	*/
	public init(inputImage: CIImage, inputNoiseLevel: CGFloat = 0.02, inputSharpness: CGFloat = 0.4) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputNoiseLevel":inputNoiseLevel,
			"inputSharpness":inputSharpness		]
		guard let filter = CIFilter(name:"CINoiseReduction", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Op Tile

- seealso:
	[CIOpTile](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIOpTile)
*/
public class OpTile: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIOpTile filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the effect
	 - parameter inputScale: The scale determines the number of tiles in the effect.
	 - parameter inputAngle: The angle of a tile.
	 - parameter inputWidth: The width of a tile.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputScale: CGFloat = 2.8, inputAngle: CGFloat = 0.0, inputWidth: CGFloat = 65.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputScale":inputScale,
			"inputAngle":inputAngle,
			"inputWidth":inputWidth		]
		guard let filter = CIFilter(name:"CIOpTile", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Overlay Blend Mode

- seealso:
	[CIOverlayBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIOverlayBlendMode)
*/
public class OverlayBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIOverlayBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CIOverlayBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Page Curl

- seealso:
	[CIPageCurlTransition](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPageCurlTransition)
*/
public class PageCurlTransition: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIPageCurlTransition filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputTargetImage: The target image for a transition.
	 - parameter inputBacksideImage: The image that appears on the back of the source image, as the page curls to reveal the target image.
	 - parameter inputShadingImage: An image that looks like a shaded sphere enclosed in a square image.
	 - parameter inputExtent: The extent of the effect.
	 - parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
	 - parameter inputAngle: The angle of the curling page.
	 - parameter inputRadius: The radius of the curl.
	*/
	public init(inputImage: CIImage, inputTargetImage: CIImage, inputBacksideImage: CIImage, inputShadingImage: CIImage, inputExtent: CIVector = CIVector(x:0.0, y:0.0, z:300.0, w:300.0), inputTime: CGFloat = 0.0, inputAngle: CGFloat = 0.0, inputRadius: CGFloat = 100.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputTargetImage":inputTargetImage,
			"inputBacksideImage":inputBacksideImage,
			"inputShadingImage":inputShadingImage,
			"inputExtent":inputExtent,
			"inputTime":inputTime,
			"inputAngle":inputAngle,
			"inputRadius":inputRadius		]
		guard let filter = CIFilter(name:"CIPageCurlTransition", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Page Curl With Shadow

- seealso:
	[CIPageCurlWithShadowTransition](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPageCurlWithShadowTransition)
*/
public class PageCurlWithShadowTransition: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIPageCurlWithShadowTransition filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputTargetImage: The target image for a transition.
	 - parameter inputBacksideImage: The image that appears on the back of the source image, as the page curls to reveal the target image.
	 - parameter inputExtent: The extent of the effect.
	 - parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
	 - parameter inputAngle: The angle of the curling page.
	 - parameter inputRadius: The radius of the curl.
	 - parameter inputShadowSize: 
	 - parameter inputShadowAmount: 
	 - parameter inputShadowExtent: 
	*/
	public init(inputImage: CIImage, inputTargetImage: CIImage, inputBacksideImage: CIImage, inputExtent: CIVector = CIVector(x:0.0, y:0.0, z:0.0, w:0.0), inputTime: CGFloat = 0.0, inputAngle: CGFloat = 0.0, inputRadius: CGFloat = 100.0, inputShadowSize: CGFloat = 0.5, inputShadowAmount: CGFloat = 0.7, inputShadowExtent: CIVector = CIVector(x:0.0, y:0.0, z:0.0, w:0.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputTargetImage":inputTargetImage,
			"inputBacksideImage":inputBacksideImage,
			"inputExtent":inputExtent,
			"inputTime":inputTime,
			"inputAngle":inputAngle,
			"inputRadius":inputRadius,
			"inputShadowSize":inputShadowSize,
			"inputShadowAmount":inputShadowAmount,
			"inputShadowExtent":inputShadowExtent		]
		guard let filter = CIFilter(name:"CIPageCurlWithShadowTransition", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Parallelogram Tile

- seealso:
	[CIParallelogramTile](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIParallelogramTile)
*/
public class ParallelogramTile: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIParallelogramTile filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the effect
	 - parameter inputAngle: The angle (in radians) of the tiled pattern.
	 - parameter inputAcuteAngle: The primary angle for the repeating parallelogram tile. Small values create thin diamond tiles, and higher values create fatter parallelogram tiles.
	 - parameter inputWidth: The width of a tile.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputAngle: CGFloat = 0.0, inputAcuteAngle: CGFloat = 1.5707963267949, inputWidth: CGFloat = 100.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputAngle":inputAngle,
			"inputAcuteAngle":inputAcuteAngle,
			"inputWidth":inputWidth		]
		guard let filter = CIFilter(name:"CIParallelogramTile", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}



/**
Perspective Correction

- seealso:
	[CIPerspectiveCorrection](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPerspectiveCorrection)
*/
public class PerspectiveCorrection: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIPerspectiveCorrection filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputTopLeft: The top left coordinate to be perspective corrected.
	 - parameter inputTopRight: The top right coordinate to be perspective corrected.
	 - parameter inputBottomRight: The bottom right coordinate to be perspective corrected.
	 - parameter inputBottomLeft: The bottom left coordinate to be perspective corrected.
	*/
	public init(inputImage: CIImage, inputTopLeft: CIVector = CIVector(x:118.0, y:484.0), inputTopRight: CIVector = CIVector(x:646.0, y:507.0), inputBottomRight: CIVector = CIVector(x:548.0, y:140.0), inputBottomLeft: CIVector = CIVector(x:155.0, y:153.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputTopLeft":inputTopLeft,
			"inputTopRight":inputTopRight,
			"inputBottomRight":inputBottomRight,
			"inputBottomLeft":inputBottomLeft		]
		guard let filter = CIFilter(name:"CIPerspectiveCorrection", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Perspective Tile

- seealso:
	[CIPerspectiveTile](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPerspectiveTile)
*/
public class PerspectiveTile: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIPerspectiveTile filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputTopLeft: The top left coordinate of a tile.
	 - parameter inputTopRight: The top right coordinate of a tile.
	 - parameter inputBottomRight: The bottom right coordinate of a tile.
	 - parameter inputBottomLeft: The bottom left coordinate of a tile.
	*/
	public init(inputImage: CIImage, inputTopLeft: CIVector = CIVector(x:118.0, y:484.0), inputTopRight: CIVector = CIVector(x:646.0, y:507.0), inputBottomRight: CIVector = CIVector(x:548.0, y:140.0), inputBottomLeft: CIVector = CIVector(x:155.0, y:153.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputTopLeft":inputTopLeft,
			"inputTopRight":inputTopRight,
			"inputBottomRight":inputBottomRight,
			"inputBottomLeft":inputBottomLeft		]
		guard let filter = CIFilter(name:"CIPerspectiveTile", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Perspective Transform

- seealso:
	[CIPerspectiveTransform](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPerspectiveTransform)
*/
public class PerspectiveTransform: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIPerspectiveTransform filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputTopLeft: The top left coordinate to map the image to.
	 - parameter inputTopRight: The top right coordinate to map the image to.
	 - parameter inputBottomRight: The bottom right coordinate to map the image to.
	 - parameter inputBottomLeft: The bottom left coordinate to map the image to.
	*/
	public init(inputImage: CIImage, inputTopLeft: CIVector = CIVector(x:118.0, y:484.0), inputTopRight: CIVector = CIVector(x:646.0, y:507.0), inputBottomRight: CIVector = CIVector(x:548.0, y:140.0), inputBottomLeft: CIVector = CIVector(x:155.0, y:153.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputTopLeft":inputTopLeft,
			"inputTopRight":inputTopRight,
			"inputBottomRight":inputBottomRight,
			"inputBottomLeft":inputBottomLeft		]
		guard let filter = CIFilter(name:"CIPerspectiveTransform", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Perspective Transform with Extent

- seealso:
	[CIPerspectiveTransformWithExtent](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPerspectiveTransformWithExtent)
*/
public class PerspectiveTransformWithExtent: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIPerspectiveTransformWithExtent filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputExtent: A rectangle that defines the extent of the effect.
	 - parameter inputTopLeft: 
	 - parameter inputTopRight: 
	 - parameter inputBottomRight: 
	 - parameter inputBottomLeft: 
	*/
	public init(inputImage: CIImage, inputExtent: CIVector = CIVector(x:0.0, y:0.0, z:300.0, w:300.0), inputTopLeft: CIVector = CIVector(x:118.0, y:484.0), inputTopRight: CIVector = CIVector(x:646.0, y:507.0), inputBottomRight: CIVector = CIVector(x:548.0, y:140.0), inputBottomLeft: CIVector = CIVector(x:155.0, y:153.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputExtent":inputExtent,
			"inputTopLeft":inputTopLeft,
			"inputTopRight":inputTopRight,
			"inputBottomRight":inputBottomRight,
			"inputBottomLeft":inputBottomLeft		]
		guard let filter = CIFilter(name:"CIPerspectiveTransformWithExtent", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Photo Effect Chrome

- seealso:
	[CIPhotoEffectChrome](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPhotoEffectChrome)
*/
public class PhotoEffectChrome: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIPhotoEffectChrome filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	*/
	public init(inputImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage		]
		guard let filter = CIFilter(name:"CIPhotoEffectChrome", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Photo Effect Fade

- seealso:
	[CIPhotoEffectFade](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPhotoEffectFade)
*/
public class PhotoEffectFade: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIPhotoEffectFade filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	*/
	public init(inputImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage		]
		guard let filter = CIFilter(name:"CIPhotoEffectFade", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Photo Effect Instant

- seealso:
	[CIPhotoEffectInstant](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPhotoEffectInstant)
*/
public class PhotoEffectInstant: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIPhotoEffectInstant filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	*/
	public init(inputImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage		]
		guard let filter = CIFilter(name:"CIPhotoEffectInstant", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Photo Effect Mono

- seealso:
	[CIPhotoEffectMono](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPhotoEffectMono)
*/
public class PhotoEffectMono: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIPhotoEffectMono filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	*/
	public init(inputImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage		]
		guard let filter = CIFilter(name:"CIPhotoEffectMono", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Photo Effect Noir

- seealso:
	[CIPhotoEffectNoir](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPhotoEffectNoir)
*/
public class PhotoEffectNoir: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIPhotoEffectNoir filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	*/
	public init(inputImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage		]
		guard let filter = CIFilter(name:"CIPhotoEffectNoir", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Photo Effect Process

- seealso:
	[CIPhotoEffectProcess](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPhotoEffectProcess)
*/
public class PhotoEffectProcess: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIPhotoEffectProcess filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	*/
	public init(inputImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage		]
		guard let filter = CIFilter(name:"CIPhotoEffectProcess", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Photo Effect Tonal

- seealso:
	[CIPhotoEffectTonal](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPhotoEffectTonal)
*/
public class PhotoEffectTonal: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIPhotoEffectTonal filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	*/
	public init(inputImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage		]
		guard let filter = CIFilter(name:"CIPhotoEffectTonal", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Photo Effect Transfer

- seealso:
	[CIPhotoEffectTransfer](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPhotoEffectTransfer)
*/
public class PhotoEffectTransfer: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIPhotoEffectTransfer filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	*/
	public init(inputImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage		]
		guard let filter = CIFilter(name:"CIPhotoEffectTransfer", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Pinch Distortion

- seealso:
	[CIPinchDistortion](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPinchDistortion)
*/
public class PinchDistortion: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIPinchDistortion filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The center of the effect as x and y coordinates.
	 - parameter inputRadius: The radius determines how many pixels are used to create the distortion. The larger the radius, wider the extent of the distortion.
	 - parameter inputScale: The amount of pinching. A value of 0.0 has no effect. A value of 1.0 is the maximum pinch.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputRadius: CGFloat = 300.0, inputScale: CGFloat = 0.5) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputRadius":inputRadius,
			"inputScale":inputScale		]
		guard let filter = CIFilter(name:"CIPinchDistortion", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Pin Light Blend Mode

- seealso:
	[CIPinLightBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPinLightBlendMode)
*/
public class PinLightBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIPinLightBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CIPinLightBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Pixelate

- seealso:
	[CIPixellate](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPixellate)
*/
public class Pixellate: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIPixellate filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the effect
	 - parameter inputScale: The scale determines the size of the squares. Larger values result in larger squares.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputScale: CGFloat = 8.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputScale":inputScale		]
		guard let filter = CIFilter(name:"CIPixellate", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Pointillize

- seealso:
	[CIPointillize](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIPointillize)
*/
public class Pointillize: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIPointillize filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputRadius: The radius of the circles in the resulting pattern.
	 - parameter inputCenter: The x and y position to use as the center of the effect
	*/
	public init(inputImage: CIImage, inputRadius: CGFloat = 20.0, inputCenter: CIVector = CIVector(x:150.0, y:150.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputRadius":inputRadius,
			"inputCenter":inputCenter		]
		guard let filter = CIFilter(name:"CIPointillize", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Radial Gradient

- seealso:
	[CIRadialGradient](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIRadialGradient)
*/
public class RadialGradient: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIRadialGradient filter

	 - parameter inputCenter: The center of the effect as x and y coordinates.
	 - parameter inputRadius0: The radius of the starting circle to use in the gradient.
	 - parameter inputRadius1: The radius of the ending circle to use in the gradient.
	 - parameter inputColor0: The first color to use in the gradient.
	 - parameter inputColor1: The second color to use in the gradient.
	*/
	public init(inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputRadius0: CGFloat = 5.0, inputRadius1: CGFloat = 100.0, inputColor0: CIColor = CIColor(red:1.0, green:1.0, blue:1.0, alpha:1.0), inputColor1: CIColor = CIColor(red:0.0, green:0.0, blue:0.0, alpha:1.0)) {
		let parameters:[String : AnyObject] = [
			"inputCenter":inputCenter,
			"inputRadius0":inputRadius0,
			"inputRadius1":inputRadius1,
			"inputColor0":inputColor0,
			"inputColor1":inputColor1		]
		guard let filter = CIFilter(name:"CIRadialGradient", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Ripple

- seealso:
	[CIRippleTransition](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIRippleTransition)
*/
public class RippleTransition: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIRippleTransition filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputTargetImage: The target image for a transition.
	 - parameter inputShadingImage: An image that looks like a shaded sphere enclosed in a square image.
	 - parameter inputCenter: The x and y position to use as the center of the effect
	 - parameter inputExtent: A rectangle that defines the extent of the effect.
	 - parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
	 - parameter inputWidth: The width of the ripple.
	 - parameter inputScale: A value that determines whether the ripple starts as a bulge (higher value) or a dimple (lower value).
	*/
	public init(inputImage: CIImage, inputTargetImage: CIImage, inputShadingImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputExtent: CIVector = CIVector(x:0.0, y:0.0, z:300.0, w:300.0), inputTime: CGFloat = 0.0, inputWidth: CGFloat = 100.0, inputScale: CGFloat = 50.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputTargetImage":inputTargetImage,
			"inputShadingImage":inputShadingImage,
			"inputCenter":inputCenter,
			"inputExtent":inputExtent,
			"inputTime":inputTime,
			"inputWidth":inputWidth,
			"inputScale":inputScale		]
		guard let filter = CIFilter(name:"CIRippleTransition", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Row Average

- seealso:
	[CIRowAverage](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIRowAverage)
*/
public class RowAverage: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIRowAverage filter

	 - parameter inputImage: The image to process.
	 - parameter inputExtent: A rectangle that specifies the subregion of the image that you want to process.
	*/
	public init(inputImage: CIImage, inputExtent: CIVector = CIVector(x:0.0, y:0.0, z:640.0, w:80.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputExtent":inputExtent		]
		guard let filter = CIFilter(name:"CIRowAverage", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Saturation Blend Mode

- seealso:
	[CISaturationBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISaturationBlendMode)
*/
public class SaturationBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CISaturationBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CISaturationBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Screen Blend Mode

- seealso:
	[CIScreenBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIScreenBlendMode)
*/
public class ScreenBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIScreenBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CIScreenBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Sepia Tone

- seealso:
	[CISepiaTone](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISepiaTone)
*/
public class SepiaTone: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CISepiaTone filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputIntensity: The intensity of the sepia effect. A value of 1.0 creates a monochrome sepia image. A value of 0.0 has no effect on the image.
	*/
	public init(inputImage: CIImage, inputIntensity: CGFloat = 1.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputIntensity":inputIntensity		]
		guard let filter = CIFilter(name:"CISepiaTone", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Shaded Material

- seealso:
	[CIShadedMaterial](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIShadedMaterial)
*/
public class ShadedMaterial: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIShadedMaterial filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputShadingImage: The image to use as the height field. The resulting image has greater heights with lighter shades, and lesser heights (lower areas) with darker shades.
	 - parameter inputScale: THe scale of the effect. The higher the value, the more dramatic the effect.
	*/
	public init(inputImage: CIImage, inputShadingImage: CIImage, inputScale: CGFloat = 10.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputShadingImage":inputShadingImage,
			"inputScale":inputScale		]
		guard let filter = CIFilter(name:"CIShadedMaterial", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Sharpen Luminance

- seealso:
	[CISharpenLuminance](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISharpenLuminance)
*/
public class SharpenLuminance: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CISharpenLuminance filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputSharpness: The amount of sharpening to apply. Larger values are sharper.
	*/
	public init(inputImage: CIImage, inputSharpness: CGFloat = 0.4) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputSharpness":inputSharpness		]
		guard let filter = CIFilter(name:"CISharpenLuminance", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Sixfold Reflected Tile

- seealso:
	[CISixfoldReflectedTile](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISixfoldReflectedTile)
*/
public class SixfoldReflectedTile: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CISixfoldReflectedTile filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the effect
	 - parameter inputAngle: The angle (in radians) of the tiled pattern.
	 - parameter inputWidth: The width of a tile.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputAngle: CGFloat = 0.0, inputWidth: CGFloat = 100.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputAngle":inputAngle,
			"inputWidth":inputWidth		]
		guard let filter = CIFilter(name:"CISixfoldReflectedTile", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Sixfold Rotated Tile

- seealso:
	[CISixfoldRotatedTile](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISixfoldRotatedTile)
*/
public class SixfoldRotatedTile: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CISixfoldRotatedTile filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the effect
	 - parameter inputAngle: The angle (in radians) of the tiled pattern.
	 - parameter inputWidth: The width of a tile.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputAngle: CGFloat = 0.0, inputWidth: CGFloat = 100.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputAngle":inputAngle,
			"inputWidth":inputWidth		]
		guard let filter = CIFilter(name:"CISixfoldRotatedTile", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Smooth Linear Gradient

- seealso:
	[CISmoothLinearGradient](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISmoothLinearGradient)
*/
public class SmoothLinearGradient: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CISmoothLinearGradient filter

	 - parameter inputPoint0: The starting position of the gradient -- where the first color begins.
	 - parameter inputPoint1: The ending position of the gradient -- where the second color begins.
	 - parameter inputColor0: The first color to use in the gradient.
	 - parameter inputColor1: The second color to use in the gradient.
	*/
	public init(inputPoint0: CIVector = CIVector(x:0.0, y:0.0), inputPoint1: CIVector = CIVector(x:200.0, y:200.0), inputColor0: CIColor = CIColor(red:1.0, green:1.0, blue:1.0, alpha:1.0), inputColor1: CIColor = CIColor(red:0.0, green:0.0, blue:0.0, alpha:1.0)) {
		let parameters:[String : AnyObject] = [
			"inputPoint0":inputPoint0,
			"inputPoint1":inputPoint1,
			"inputColor0":inputColor0,
			"inputColor1":inputColor1		]
		guard let filter = CIFilter(name:"CISmoothLinearGradient", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Soft Light Blend Mode

- seealso:
	[CISoftLightBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISoftLightBlendMode)
*/
public class SoftLightBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CISoftLightBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CISoftLightBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Source Atop

- seealso:
	[CISourceAtopCompositing](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISourceAtopCompositing)
*/
public class SourceAtopCompositing: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CISourceAtopCompositing filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CISourceAtopCompositing", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Source In

- seealso:
	[CISourceInCompositing](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISourceInCompositing)
*/
public class SourceInCompositing: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CISourceInCompositing filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CISourceInCompositing", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Source Out

- seealso:
	[CISourceOutCompositing](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISourceOutCompositing)
*/
public class SourceOutCompositing: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CISourceOutCompositing filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CISourceOutCompositing", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Source Over

- seealso:
	[CISourceOverCompositing](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISourceOverCompositing)
*/
public class SourceOverCompositing: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CISourceOverCompositing filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CISourceOverCompositing", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Spot Color

- seealso:
	[CISpotColor](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISpotColor)
*/
public class SpotColor: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CISpotColor filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenterColor1: The center value of the first color range to replace.
	 - parameter inputReplacementColor1: A replacement color for the first color range.
	 - parameter inputCloseness1: A value that indicates how close the first color must match before it is replaced.
	 - parameter inputContrast1: The contrast of the first replacement color.
	 - parameter inputCenterColor2: The center value of the second color range to replace.
	 - parameter inputReplacementColor2: A replacement color for the second color range.
	 - parameter inputCloseness2: A value that indicates how close the second color must match before it is replaced.
	 - parameter inputContrast2: The contrast of the second replacement color.
	 - parameter inputCenterColor3: The center value of the third color range to replace.
	 - parameter inputReplacementColor3: A replacement color for the third color range.
	 - parameter inputCloseness3: A value that indicates how close the third color must match before it is replaced.
	 - parameter inputContrast3: The contrast of the third replacement color.
	*/
	public init(inputImage: CIImage, inputCenterColor1: CIColor = CIColor(red:0.0784, green:0.0627, blue:0.0706, alpha:1.0), inputReplacementColor1: CIColor = CIColor(red:0.4392, green:0.1922, blue:0.1961, alpha:1.0), inputCloseness1: CGFloat = 0.22, inputContrast1: CGFloat = 0.98, inputCenterColor2: CIColor = CIColor(red:0.5255, green:0.3059, blue:0.3451, alpha:1.0), inputReplacementColor2: CIColor = CIColor(red:0.9137, green:0.5608, blue:0.5059, alpha:1.0), inputCloseness2: CGFloat = 0.15, inputContrast2: CGFloat = 0.98, inputCenterColor3: CIColor = CIColor(red:0.9216, green:0.4549, blue:0.3333, alpha:1.0), inputReplacementColor3: CIColor = CIColor(red:0.9098, green:0.7529, blue:0.6078, alpha:1.0), inputCloseness3: CGFloat = 0.5, inputContrast3: CGFloat = 0.99) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenterColor1":inputCenterColor1,
			"inputReplacementColor1":inputReplacementColor1,
			"inputCloseness1":inputCloseness1,
			"inputContrast1":inputContrast1,
			"inputCenterColor2":inputCenterColor2,
			"inputReplacementColor2":inputReplacementColor2,
			"inputCloseness2":inputCloseness2,
			"inputContrast2":inputContrast2,
			"inputCenterColor3":inputCenterColor3,
			"inputReplacementColor3":inputReplacementColor3,
			"inputCloseness3":inputCloseness3,
			"inputContrast3":inputContrast3		]
		guard let filter = CIFilter(name:"CISpotColor", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Spot Light

- seealso:
	[CISpotLight](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISpotLight)
*/
public class SpotLight: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CISpotLight filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputLightPosition: The x and y position of the spotlight.
	 - parameter inputLightPointsAt: The x and y position that the spotlight points at.
	 - parameter inputBrightness: The brightness of the spotlight.
	 - parameter inputConcentration: The spotlight size. The smaller the value, the more tightly focused the light beam.
	 - parameter inputColor: The color of the spotlight.
	*/
	public init(inputImage: CIImage, inputLightPosition: CIVector = CIVector(x:400.0, y:600.0, z:150.0), inputLightPointsAt: CIVector = CIVector(x:200.0, y:200.0, z:0.0), inputBrightness: CGFloat = 3.0, inputConcentration: CGFloat = 0.1, inputColor: CIColor = CIColor(red:1.0, green:1.0, blue:1.0, alpha:1.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputLightPosition":inputLightPosition,
			"inputLightPointsAt":inputLightPointsAt,
			"inputBrightness":inputBrightness,
			"inputConcentration":inputConcentration,
			"inputColor":inputColor		]
		guard let filter = CIFilter(name:"CISpotLight", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
sRGB Tone Curve to Linear

- seealso:
	[CISRGBToneCurveToLinear](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISRGBToneCurveToLinear)
*/
public class SRGBToneCurveToLinear: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CISRGBToneCurveToLinear filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	*/
	public init(inputImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage		]
		guard let filter = CIFilter(name:"CISRGBToneCurveToLinear", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Star Shine

- seealso:
	[CIStarShineGenerator](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIStarShineGenerator)
*/
public class StarShineGenerator: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIStarShineGenerator filter

	 - parameter inputCenter: The  x and y position to use as the center of the star.
	 - parameter inputColor: The color to use for the outer shell of the circular star.
	 - parameter inputRadius: The radius of the star.
	 - parameter inputCrossScale: The size of the cross pattern.
	 - parameter inputCrossAngle: The angle of the cross pattern.
	 - parameter inputCrossOpacity: The opacity of the cross pattern.
	 - parameter inputCrossWidth: The width of the cross pattern.
	 - parameter inputEpsilon: The length of the cross spikes.
	*/
	public init(inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputColor: CIColor = CIColor(red:1.0, green:0.8, blue:0.6, alpha:1.0), inputRadius: CGFloat = 50.0, inputCrossScale: CGFloat = 15.0, inputCrossAngle: CGFloat = 0.6, inputCrossOpacity: CGFloat = -2.0, inputCrossWidth: CGFloat = 2.5, inputEpsilon: CGFloat = -2.0) {
		let parameters:[String : AnyObject] = [
			"inputCenter":inputCenter,
			"inputColor":inputColor,
			"inputRadius":inputRadius,
			"inputCrossScale":inputCrossScale,
			"inputCrossAngle":inputCrossAngle,
			"inputCrossOpacity":inputCrossOpacity,
			"inputCrossWidth":inputCrossWidth,
			"inputEpsilon":inputEpsilon		]
		guard let filter = CIFilter(name:"CIStarShineGenerator", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Straighten

- seealso:
	[CIStraightenFilter](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIStraightenFilter)
*/
public class StraightenFilter: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIStraightenFilter filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputAngle: An angle in radians.
	*/
	public init(inputImage: CIImage, inputAngle: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputAngle":inputAngle		]
		guard let filter = CIFilter(name:"CIStraightenFilter", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Stretch Crop

- seealso:
	[CIStretchCrop](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIStretchCrop)
*/
public class StretchCrop: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIStretchCrop filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputSize: The size in pixels of the output image.
	 - parameter inputCropAmount: Determines if and how much cropping should be used to achieve the target size. If value is 0 then only stretching is used.  If 1 then only cropping is used.
	 - parameter inputCenterStretchAmount: Determine how much the center of the image is stretched if stretching is used. If value is 0 then the center of the image maintains the original aspect ratio.  If 1 then the image is stretched uniformly.
	*/
	public init(inputImage: CIImage, inputSize: CIVector = CIVector(x:1280.0, y:720.0), inputCropAmount: CGFloat = 0.25, inputCenterStretchAmount: CGFloat = 0.25) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputSize":inputSize,
			"inputCropAmount":inputCropAmount,
			"inputCenterStretchAmount":inputCenterStretchAmount		]
		guard let filter = CIFilter(name:"CIStretchCrop", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Stripes

- seealso:
	[CIStripesGenerator](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIStripesGenerator)
*/
public class StripesGenerator: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIStripesGenerator filter

	 - parameter inputCenter: The x and y position to use as the center of the stripe pattern.
	 - parameter inputColor0: A color to use for the odd stripes.
	 - parameter inputColor1: A color to use for the even stripes.
	 - parameter inputWidth: The width of a stripe.
	 - parameter inputSharpness: The sharpness of the stripe pattern. The smaller the value, the more blurry the pattern. Values range from 0.0 to 1.0.
	*/
	public init(inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputColor0: CIColor = CIColor(red:1.0, green:1.0, blue:1.0, alpha:1.0), inputColor1: CIColor = CIColor(red:0.0, green:0.0, blue:0.0, alpha:1.0), inputWidth: CGFloat = 80.0, inputSharpness: CGFloat = 1.0) {
		let parameters:[String : AnyObject] = [
			"inputCenter":inputCenter,
			"inputColor0":inputColor0,
			"inputColor1":inputColor1,
			"inputWidth":inputWidth,
			"inputSharpness":inputSharpness		]
		guard let filter = CIFilter(name:"CIStripesGenerator", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Subtract Blend Mode

- seealso:
	[CISubtractBlendMode](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISubtractBlendMode)
*/
public class SubtractBlendMode: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CISubtractBlendMode filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputBackgroundImage: The image to use as a background image.
	*/
	public init(inputImage: CIImage, inputBackgroundImage: CIImage) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputBackgroundImage":inputBackgroundImage		]
		guard let filter = CIFilter(name:"CISubtractBlendMode", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Sunbeams

- seealso:
	[CISunbeamsGenerator](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISunbeamsGenerator)
*/
public class SunbeamsGenerator: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CISunbeamsGenerator filter

	 - parameter inputCenter: The  x and y position to use as the center of the sunbeam pattern
	 - parameter inputColor: The color of the sun.
	 - parameter inputSunRadius: The radius of the sun.
	 - parameter inputMaxStriationRadius: The radius of the sunbeams.
	 - parameter inputStriationStrength: The intensity of the sunbeams. Higher values result in more intensity.
	 - parameter inputStriationContrast: The contrast of the sunbeams. Higher values result in more contrast.
	 - parameter inputTime: The duration of the effect.
	*/
	public init(inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputColor: CIColor = CIColor(red:1.0, green:0.5, blue:0.0, alpha:1.0), inputSunRadius: CGFloat = 40.0, inputMaxStriationRadius: CGFloat = 2.58, inputStriationStrength: CGFloat = 0.5, inputStriationContrast: CGFloat = 1.375, inputTime: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputCenter":inputCenter,
			"inputColor":inputColor,
			"inputSunRadius":inputSunRadius,
			"inputMaxStriationRadius":inputMaxStriationRadius,
			"inputStriationStrength":inputStriationStrength,
			"inputStriationContrast":inputStriationContrast,
			"inputTime":inputTime		]
		guard let filter = CIFilter(name:"CISunbeamsGenerator", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Swipe

- seealso:
	[CISwipeTransition](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CISwipeTransition)
*/
public class SwipeTransition: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CISwipeTransition filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputTargetImage: The target image for a transition.
	 - parameter inputExtent: The extent of the effect.
	 - parameter inputColor: The color of the swipe.
	 - parameter inputTime: The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).
	 - parameter inputAngle: The angle of the swipe.
	 - parameter inputWidth: The width of the swipe
	 - parameter inputOpacity: The opacity of the swipe.
	*/
	public init(inputImage: CIImage, inputTargetImage: CIImage, inputExtent: CIVector = CIVector(x:0.0, y:0.0, z:300.0, w:300.0), inputColor: CIColor = CIColor(red:1.0, green:1.0, blue:1.0, alpha:1.0), inputTime: CGFloat = 0.0, inputAngle: CGFloat = 0.0, inputWidth: CGFloat = 300.0, inputOpacity: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputTargetImage":inputTargetImage,
			"inputExtent":inputExtent,
			"inputColor":inputColor,
			"inputTime":inputTime,
			"inputAngle":inputAngle,
			"inputWidth":inputWidth,
			"inputOpacity":inputOpacity		]
		guard let filter = CIFilter(name:"CISwipeTransition", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Temperature and Tint

- seealso:
	[CITemperatureAndTint](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CITemperatureAndTint)
*/
public class TemperatureAndTint: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CITemperatureAndTint filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputNeutral: 
	 - parameter inputTargetNeutral: 
	*/
	public init(inputImage: CIImage, inputNeutral: CIVector = CIVector(x:6500.0, y:0.0), inputTargetNeutral: CIVector = CIVector(x:6500.0, y:0.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputNeutral":inputNeutral,
			"inputTargetNeutral":inputTargetNeutral		]
		guard let filter = CIFilter(name:"CITemperatureAndTint", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Tone Curve

- seealso:
	[CIToneCurve](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIToneCurve)
*/
public class ToneCurve: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIToneCurve filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputPoint0: 
	 - parameter inputPoint1: 
	 - parameter inputPoint2: 
	 - parameter inputPoint3: 
	 - parameter inputPoint4: 
	*/
	public init(inputImage: CIImage, inputPoint0: CIVector = CIVector(x:0.0, y:0.0), inputPoint1: CIVector = CIVector(x:0.25, y:0.25), inputPoint2: CIVector = CIVector(x:0.5, y:0.5), inputPoint3: CIVector = CIVector(x:0.75, y:0.75), inputPoint4: CIVector = CIVector(x:1.0, y:1.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputPoint0":inputPoint0,
			"inputPoint1":inputPoint1,
			"inputPoint2":inputPoint2,
			"inputPoint3":inputPoint3,
			"inputPoint4":inputPoint4		]
		guard let filter = CIFilter(name:"CIToneCurve", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Torus Lens Distortion

- seealso:
	[CITorusLensDistortion](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CITorusLensDistortion)
*/
public class TorusLensDistortion: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CITorusLensDistortion filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the torus.
	 - parameter inputRadius: The outer radius of the torus.
	 - parameter inputWidth: The width of the ring.
	 - parameter inputRefraction: The refraction of the glass.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputRadius: CGFloat = 160.0, inputWidth: CGFloat = 80.0, inputRefraction: CGFloat = 1.7) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputRadius":inputRadius,
			"inputWidth":inputWidth,
			"inputRefraction":inputRefraction		]
		guard let filter = CIFilter(name:"CITorusLensDistortion", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Triangle Kaleidoscope

- seealso:
	[CITriangleKaleidoscope](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CITriangleKaleidoscope)
*/
public class TriangleKaleidoscope: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CITriangleKaleidoscope filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputPoint: 
	 - parameter inputSize: 
	 - parameter inputRotation: 
	 - parameter inputDecay: 
	*/
	public init(inputImage: CIImage, inputPoint: CIVector = CIVector(x:150.0, y:150.0), inputSize: CGFloat = 700.0, inputRotation: CGFloat = 5.9242852965938, inputDecay: CGFloat = 0.85) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputPoint":inputPoint,
			"inputSize":inputSize,
			"inputRotation":inputRotation,
			"inputDecay":inputDecay		]
		guard let filter = CIFilter(name:"CITriangleKaleidoscope", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Triangle Tile

- seealso:
	[CITriangleTile](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CITriangleTile)
*/
public class TriangleTile: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CITriangleTile filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the effect
	 - parameter inputAngle: The angle (in radians) of the tiled pattern.
	 - parameter inputWidth: The width of a tile.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputAngle: CGFloat = 0.0, inputWidth: CGFloat = 100.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputAngle":inputAngle,
			"inputWidth":inputWidth		]
		guard let filter = CIFilter(name:"CITriangleTile", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Twelvefold Reflected Tile

- seealso:
	[CITwelvefoldReflectedTile](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CITwelvefoldReflectedTile)
*/
public class TwelvefoldReflectedTile: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CITwelvefoldReflectedTile filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The x and y position to use as the center of the effect
	 - parameter inputAngle: The angle (in radians) of the tiled pattern.
	 - parameter inputWidth: The width of a tile.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputAngle: CGFloat = 0.0, inputWidth: CGFloat = 100.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputAngle":inputAngle,
			"inputWidth":inputWidth		]
		guard let filter = CIFilter(name:"CITwelvefoldReflectedTile", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Twirl Distortion

- seealso:
	[CITwirlDistortion](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CITwirlDistortion)
*/
public class TwirlDistortion: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CITwirlDistortion filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The center of the effect as x and y coordinates.
	 - parameter inputRadius: The radius determines how many pixels are used to create the distortion. The larger the radius, wider the extent of the distortion.
	 - parameter inputAngle: The angle (in radians) of the twirl. Values can be positive or negative.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputRadius: CGFloat = 300.0, inputAngle: CGFloat = 3.14159265358979) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputRadius":inputRadius,
			"inputAngle":inputAngle		]
		guard let filter = CIFilter(name:"CITwirlDistortion", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Unsharp Mask

- seealso:
	[CIUnsharpMask](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIUnsharpMask)
*/
public class UnsharpMask: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIUnsharpMask filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputRadius: The radius around a given pixel to apply the unsharp mask. The larger the radius, the more of the image is affected.
	 - parameter inputIntensity: The intensity of the effect. The larger the value, the more contrast in the affected area.
	*/
	public init(inputImage: CIImage, inputRadius: CGFloat = 2.5, inputIntensity: CGFloat = 0.5) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputRadius":inputRadius,
			"inputIntensity":inputIntensity		]
		guard let filter = CIFilter(name:"CIUnsharpMask", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Vibrance

- seealso:
	[CIVibrance](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIVibrance)
*/
public class Vibrance: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIVibrance filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputAmount: The amount to adjust the saturation.
	*/
	public init(inputImage: CIImage, inputAmount: CGFloat = 0.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputAmount":inputAmount		]
		guard let filter = CIFilter(name:"CIVibrance", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Vignette

- seealso:
	[CIVignette](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIVignette)
*/
public class Vignette: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIVignette filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputIntensity: The intensity of the effect.
	 - parameter inputRadius: The distance from the center of the effect.
	*/
	public init(inputImage: CIImage, inputIntensity: CGFloat = 0.0, inputRadius: CGFloat = 1.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputIntensity":inputIntensity,
			"inputRadius":inputRadius		]
		guard let filter = CIFilter(name:"CIVignette", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Vignette Effect

- seealso:
	[CIVignetteEffect](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIVignetteEffect)
*/
public class VignetteEffect: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIVignetteEffect filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The center of the effect as x and y coordinates.
	 - parameter inputRadius: The distance from the center of the effect.
	 - parameter inputIntensity: The intensity of the effect.
	 - parameter inputFalloff: 
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputRadius: CGFloat = 150.0, inputIntensity: CGFloat = 1.0, inputFalloff: CGFloat = 0.5) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputRadius":inputRadius,
			"inputIntensity":inputIntensity,
			"inputFalloff":inputFalloff		]
		guard let filter = CIFilter(name:"CIVignetteEffect", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Vortex Distortion

- seealso:
	[CIVortexDistortion](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIVortexDistortion)
*/
public class VortexDistortion: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIVortexDistortion filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The center of the effect as x and y coordinates.
	 - parameter inputRadius: The radius determines how many pixels are used to create the distortion. The larger the radius, wider the extent of the distortion.
	 - parameter inputAngle: The angle (in radians) of the vortex.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputRadius: CGFloat = 300.0, inputAngle: CGFloat = 56.5486677646163) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputRadius":inputRadius,
			"inputAngle":inputAngle		]
		guard let filter = CIFilter(name:"CIVortexDistortion", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
White Point Adjust

- seealso:
	[CIWhitePointAdjust](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIWhitePointAdjust)
*/
public class WhitePointAdjust: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIWhitePointAdjust filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputColor: A color to use as the white point.
	*/
	public init(inputImage: CIImage, inputColor: CIColor = CIColor(red:1.0, green:1.0, blue:1.0, alpha:1.0)) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputColor":inputColor		]
		guard let filter = CIFilter(name:"CIWhitePointAdjust", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}

/**
Zoom Blur

- seealso:
	[CIZoomBlur](http://developer.apple.com/library/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CIZoomBlur)
*/
public class ZoomBlur: Filter {
	/**
	A reference to the core image filter.
	*/
	public let filter: CIFilter
	/**
	Creates a new CIZoomBlur filter

	 - parameter inputImage: The image to use as an input image. For filters that also use a background image, this is the foreground image.
	 - parameter inputCenter: The center of the effect as x and y coordinates.
	 - parameter inputAmount: The zoom-in amount. Larger values result in more zooming in.
	*/
	public init(inputImage: CIImage, inputCenter: CIVector = CIVector(x:150.0, y:150.0), inputAmount: CGFloat = 20.0) {
		let parameters:[String : AnyObject] = [
			"inputImage":inputImage,
			"inputCenter":inputCenter,
			"inputAmount":inputAmount		]
		guard let filter = CIFilter(name:"CIZoomBlur", withInputParameters: parameters) else { fatalError() }
		self.filter = filter
	}
}


