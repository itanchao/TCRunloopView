//
//  ViewController.swift
//  TCRunloopView
//
//  Created by itanchao on 05/03/2017.
//  Copyright (c) 2017 itanchao. All rights reserved.
//

import UIKit
import TCRunloopView
class ViewController: UIViewController,TCRunLoopViewDelegate,UITableViewDelegate  {

    var runView : TCRunLoopView?
    override func viewDidLoad() {
        super.viewDidLoad()
        let runloopView = TCRunLoopView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 400))
        runView = runloopView
        runloopView.delegate = self
        view.addSubview(runloopView)
        let urlArray = ["http://ww1.sinaimg.cn/mw1024/473df571jw1f2aq06o3ltj20qo0ur79o.jpg","http://ww3.sinaimg.cn/mw1024/473df571jw1f24p6b71lhj20m80m841x.jpg","http://ww2.sinaimg.cn/mw1024/473df571jw1f1p8u1kf0hj20q50yvn3z.jpg","http://ww3.sinaimg.cn/mw1024/473df571jw1f17waawibmj20rs15o1kx.jpg","http://ww2.sinaimg.cn/mw1024/473df571jw1f0s5nq609zg20ku0kutbg.gif"]
        runloopView.loopDataGroup = urlArray.map{
            (url) in
            LoopData(image:url,des:url)
        }
        
    }
    /// MARK:RunLoopSwiftViewDelegate
    ///
    ///  - parameter loopView: loopView
    ///  - parameter index:    选择的index
    func runLoopViewDidClick(_ loopView: TCRunLoopView, didSelectRowAtIndex index: NSInteger) {
        print("选择了第"+index.description+"张")
        loopView.loopInterval = Double(index.description)!
    }
    func runLoopViewDidScroll(_ loopView: TCRunLoopView, didScrollRowAtIndex index: NSInteger) {
        print("现在是"+index.description+"张")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

