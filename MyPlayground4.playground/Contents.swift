//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var some = UIEdgeInsets(top: 0.0, left: 20.0, bottom: 0.0, right: 20)

class ImageView: UIView {
    
    init() {
        
        super.init(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
//        super.init(frame: CGRect.zero)
        
        self.preservesSuperviewLayoutMargins = true
        self.layoutMargins = .zero

        let imageView = UIImageView(image: UIImage(named: "jesus"))
        imageView.contentMode = .center
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        self.clipsToBounds = true
        imageView.backgroundColor = UIColor.red
        
        self.addSubview(imageView)
        
        imageView.leftAnchor.constraint(equalTo: self.layoutMarginsGuide.leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: self.layoutMarginsGuide.rightAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: self.layoutMarginsGuide.bottomAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class LabelView: UIView {
    
    init() {
        
        super.init(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
        //        super.init(frame: CGRect.zero)
        
        self.preservesSuperviewLayoutMargins = true
        self.layoutMargins = .zero
        
        let labelView = UILabel()
        labelView.text = "hello this is a message"
        
        labelView.translatesAutoresizingMaskIntoConstraints = false
        labelView.backgroundColor = UIColor.cyan
        
        self.addSubview(labelView)
        
        labelView.leftAnchor.constraint(equalTo: self.layoutMarginsGuide.leftAnchor).isActive = true
        labelView.rightAnchor.constraint(equalTo: self.layoutMarginsGuide.rightAnchor).isActive = true
        labelView.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor).isActive = true
        labelView.bottomAnchor.constraint(equalTo: self.layoutMarginsGuide.bottomAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


class LeftRight: UIView {
    
    
    init(left: UIView, right: UIView) {
        
        super.init(frame: CGRect.zero)
        
        self.layoutMargins = .zero
        self.preservesSuperviewLayoutMargins = true
        
        left.translatesAutoresizingMaskIntoConstraints = false
        right.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(left)
        self.addSubview(right)
        
        left.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        left.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        left.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

        right.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        right.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        right.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

        left.trailingAnchor.constraint(equalTo: right.leadingAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class TopBottom: UIView {
    
    
    init(top: UIView, bottom: UIView) {
        
        super.init(frame: CGRect.zero)
        
        self.layoutMargins = .zero
        self.preservesSuperviewLayoutMargins = true
        
        top.translatesAutoresizingMaskIntoConstraints = false
        bottom.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(top)
        self.addSubview(bottom)
        
        top.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        top.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        top.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        bottom.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        bottom.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        bottom.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        top.bottomAnchor.constraint(equalTo: bottom.topAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

func fill(_ guide: UILayoutGuide, with view: UIView) {
    
    view.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
    view.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
    view.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
    view.bottomAnchor.constraint(equalTo: guide.bottomAnchor).isActive = true
}

func fill(_ superView: UIView, with view: UIView) {
    
    view.leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
    view.topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
    view.trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
    view.bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
}



let masterView = UIView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
masterView.translatesAutoresizingMaskIntoConstraints = false
masterView.layoutMargins = UIEdgeInsets(top: 5.0, left: 5.0, bottom: 5.0, right: 5.0)

let subView = UIView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
subView.translatesAutoresizingMaskIntoConstraints = false
subView.layoutMargins = UIEdgeInsets(top: 5.0, left: 5.0, bottom: 5.0, right: 5.0)

// Various combinations here will create different visual results (it will either work or won't)

let i1 = ImageView()
//let i1 = LabelView()
//let i2 = ImageView()
let i2 = LabelView()
//let i3 = ImageView()
let i3 = LabelView()

let view = LeftRight(left: i1, right: TopBottom(top: i2, bottom: i3))
//let view = LeftRight(left: TopBottom(top: i2, bottom: i3), right: i1)

subView.addSubview(view)
fill(subView, with: view)

view.translatesAutoresizingMaskIntoConstraints = false
view.backgroundColor = UIColor.green

let frame = UIView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))

masterView.addSubview(subView)
fill(masterView.layoutMarginsGuide, with: subView)

subView.backgroundColor = .blue

masterView.backgroundColor = .white

// Using subView instead of masterView will always work

//let frameSubview = subView
let frameSubview = masterView

frame.addSubview(frameSubview)
frameSubview.leadingAnchor.constraint(equalTo: frame.leadingAnchor).isActive = true
frameSubview.topAnchor.constraint(equalTo: frame.topAnchor).isActive = true
frameSubview.trailingAnchor.constraint(equalTo: frame.trailingAnchor).isActive = true

PlaygroundPage.current.liveView = frame


