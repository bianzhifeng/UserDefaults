## 简介
 一款快速通过UserDefaults存取数据的协议, 抛弃硬编码.
 
## 功能
 快速存取数据到UserDefaults
 
  
## 使用

首先建议为`UserDefaults`添加扩展并添加枚举, 示例如下:
```
// MARK: - 为UserDefaults添加扩展
private extension UserDefaults {
    enum czbAble: String, CZBUserDefaultsSettable {
        case name
        case login
    }
}
```

直接使用`UserDefaults`进行操作:

存值:
```
UserDefaults.czbAble.name.store(value: "123")
```

取值:
```
UserDefaults.czbAble.name.storedString
```
