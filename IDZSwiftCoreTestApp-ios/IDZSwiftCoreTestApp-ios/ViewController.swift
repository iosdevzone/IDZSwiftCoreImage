//
//  ViewController.swift
//  IDZSwiftCoreTestApp-ios
//
//  Created by Danny Keogan on 4/18/16.
//  Copyright © 2016 iOS Developer Zone. All rights reserved.
//

import UIKit
import IDZSwiftCoreImage

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        guard let inputImageURL = NSBundle.mainBundle().URLForResource("Riscal", withExtension: "jpg") else { fatalError() }
        guard let inputImage = CIImage(contentsOfURL:inputImageURL) else { fatalError() }
        assert(self.view != nil && self.imageView != nil)
        guard let outputImage = DiscBlur(inputImage:inputImage, inputRadius: 2.0).outputImage else { fatalError() }
        let uiImage = UIImage(named:"Riscal.jpg")
        assert(uiImage != nil)
        NSLog("\(outputImage.extent)")
        let ciContext = CIContext()
        let cgImage = ciContext.createCGImage(outputImage, fromRect:outputImage.extent)
        self.imageView.contentMode = .ScaleAspectFit
        self.imageView.image = UIImage(CGImage:cgImage)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

