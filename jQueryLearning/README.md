# jQuery 入门

## 安装jQuery
```bash
npm init -y
npm install jquery@2.1.0 --save
```

## 原生对象与jQuery 对象
```javascript
    // 原生对象转jQuery 对象，使用$() 函数
    let oBox = document.getElementById("box");
    let jBox = $(oBox);
    
    // jQuery 对象转原生对象，使用get(index) 函数，index 为所获取的元素所在的下表，从 0 开始
    let jBox = $("#div");
    let oBox = jBox.get(0);
```

如果将jQuery 代码写到了要查找的html 元素之前，需要执行一个window.onload() 事件，在jQuery 中的写法为：
```javascript
    $(function() {
        $("#box").html("123456");
    })
```

## jQuery 方法
添加与删除类
addClass() 与 removeClass()

