
# 动态修改App图标注意点

参考链接 
[How to Programmatically Change your App Icon — iOS Swift Guide](https://medium.com/swlh/change-programmatically-your-app-icon-ios-swift-guide-3a8ee4f01649)

[IOS动态更换Icon](https://juejin.cn/post/6844903901674782728)

[动态更换App图标](https://www.jianshu.com/p/69313970d0e7)

[appstore审核指南](https://developer.apple.com/cn/app-store/review/guidelines/#design)

1. plist中备选的appIcon尺寸需要全
2. Newsstandlcon字段需要删除的
3. 提交审核没有弹窗有可能被拒  解决方案：可以根据后端配置，在审核的时候关闭改变图标的功能，上线之后打开
    
    
    
    ![](media/16172630095947/16172638982654.jpg)
    
    
![](media/16172630095947/16172639050939.jpg)

![](media/16172630095947/16172639089772.jpg)
