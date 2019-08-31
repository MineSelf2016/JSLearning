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
1. 添加与删除类
addClass() 与 removeClass()
toggleClass() 切换某一类


2. html() 与 text() 方法的使用
设置内容：
```javascript
    $("button:eq(1)").click(function () {
        let str = "<h1>标题内容</h1>";

        // html() 方法中的文字内容会被解析
        $("#box").html(str);

        // text() 方法中的文字内容不会被解析
        // $("#box").text(str);
    });
```
获取内容：
```javascript
    $("button:eq(2)").click(function () {
        let html = $("#box").html();
        let text = $("#box").text();

        // html() 方法获取的文字内容是html 代码，且符号会以实体的方式出现。
        // &lt;h1&gt;标题内容&lt;/h1&gt;
        alert("html: " + html);

        // text() 方法获取的文字内容就是网页所展示的内容，且符号不会以实体的方式展示
        // <h1>标题内容</h1>
        alert("text: " + text);
    });
```


3. css 设置与获取
设置css：
```javascript
    /**
     * 设置css 样式的几种方式：
     *  1、链式写法，所有的方法都会作用到第一个对象上；
     *  2、options 键值对方法；
     *  3、函数对象方法。
     */
    $("p").css("background-color", "gray").css("color", "orange");

    $("p").css({
        "background-color": "gray",
        "color": "green"
    });

    $("p").css("background-color", function (index) {
        // console.log("index: ", index);
        if (index % 2 === 0) {
            return "red";
        } else {
            return "green";
        }
    });
```

获取css：
```javascript
    $("button:eq(0)").click(function () {
        $("p").each(function (index, value) {
            // 获取样式时需指定要获取的样式名
            console.log($(value).css("background-color"));
        })
    });
```


4. each() 方法
```javascript
    let result = [
        {"name": "张三_1", "age": 20, "course": "C++ 程序设计"},
        {"name": "张三_2", "age": 20, "course": "C++ 程序设计"},
        {"name": "张三_3", "age": 20, "course": "C++ 程序设计"},
        {"name": "张三_4", "age": 20, "course": "C++ 程序设计"},
        {"name": "张三_5", "age": 20, "course": "C++ 程序设计"},
        {"name": "张三_6", "age": 20, "course": "C++ 程序设计"},
        {"name": "张三_7", "age": 20, "course": "C++ 程序设计"},
        {"name": "张三_8", "age": 20, "course": "C++ 程序设计"}
    ];
    
    // 此处表头不能使用<th></th>，仍需要<tr></tr> ?
    let tableHTML = "<tr><td>姓名</td><td>年龄</td><td>课程</td></tr>";

    $(result).each(function (index, value) {
        tableHTML += "<tr><td>" + value.name + "</td><td>" + String(value.age) + "</td><td>" + value.course + "</td></tr>";
    });

    $("table").html(tableHTML);
```


5. 增加、获取与移除属性
```javascript
    // 1、添加属性
    $("button:eq(0)").click(function () {
        $("div[type]").each(function (index, value) {
            $(value).attr("data-text", "nodeing_" + String(index));
        })
    });

    // 2、获取属性
    $("button:eq(1)").click(function () {
        $("div[type]").each(function (index, value) {
            console.log($(value).attr("data-text"));
        })
    });

    // 3、删除属性
    $("button:eq(2)").click(function () {
        $("div[type]").each(function (index, value) {
            $(value).removeAttr("data-text");
        })
    });
```



