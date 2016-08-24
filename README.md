# IRPlusLessSwift
加减号控件Swift


![要实现的效果](http://7xrirn.com1.z0.glb.clouddn.com/plusLess.gif) 

使用
---
```
import UIKit
class ViewController: UIViewController {
    /// 定义属性
    var plusLessView : IRPlusLessView?
    override func viewDidLoad() {
        super.viewDidLoad()
        plusLessView = IRPlusLessView(frame: CGRect(x: 100,y: 100,width: 200,height: 50))
        plusLessView!.maxNum = 3
        plusLessView!.styleColor = UIColor.greenColor()
        self.view.addSubview(plusLessView!)
    }
```
