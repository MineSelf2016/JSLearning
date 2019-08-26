# 螺钉课堂JS 练习100题

## Chapter1 字符串
1. 如何连接两个或者两个以上字符串？<br>

2. 如何比较两个字符串看它们是否相同？<br>

3. 如何查找一个字符串是否在另一个字符串中？<br>

4. 如何从一个字符串中提取一个子字符串，例如：获取一个文件的后缀名？
```javascript
    let path = "http://edu.nodeing.com/course/83/task/1788/show.html";
    let pos = path.lastIndexOf(".") + 1;
    let fileType = path.substr(pos);
```

5. 如何检测一个已经定义的变量是一个字符串并且它不为空？
```javascript
    Object.prototype.toString.call(s) === "[object String]";
```

6. 输入一组名字组成的字符串，名字用逗号隔开，你需要把这个字符串中的名字以逗号拆分开，在网页中以列表的形式展示出来
```javascript
    let names = prompt("请输入几个名字，以中文逗号分隔");
    let nameArr = names.split("，");
```

7. 如何在字符串中插入一个特殊字符？例如插入一个换行符号。<br>

8. 如何处理textarea中的单个行,并且每行首尾无空格？
```javascript
    let lines = oTxt.value.split("\n").map((item) => item.trim());
```

9. 如何将一个字符串中的字符加空格输出？例如：hello， 输出为h e l l o
```javascript
    let str = "hello";
    let s = str.split("").map((item) => item + " ").join("").trim();
```

10. 如何反转字符串？
```javascript
    let str = "hello";
    let strT = str.split("").reverse().join("");
```
js 中join() 方法与python join() 方法相反。

## Chapter2 时间和定时器
1. 如何创建一个特定的日期？
```javascript
    let date = new Date(2019, 7, 1, 12, 20, 0);
```

2. 如何创建一个10天之后的新日期？
```javascript

```

3. 如何记录两件事情之间流逝的时间？
```javascript

```

4. 写一个demo，在浏览器中动态显示时间。
```javascript

```

5. 写一个demo，让方块从左往右匀速运动。
```javascript
    oBtn.onclick = function move() {
        oBox.style.left = speed + "px";
        speed += 5;
        t1 = setTimeout(move, 100);
    }

    oCancle.onclick = function stop() {
        clearInterval(t1);
    }
```

6. 写一个demo，5秒后关闭广告。
```javascript
    setInterval(function (){
        
        num--;
        oBtn.innerText = num + "秒后关闭广告";

        if (num <= 0) {
            oAd.style.display = "none";
            clearInterval(this);
        }

    }, 1000);
```

7. 写一个demo，5秒后跳转到百度页面（www.baidu.com）。
```javascript
    let oH3 = document.getElementById("h3");
    let num = 5;

    setInterval(function (){
        num--;
        oH3.innerText = num + "秒后跳转至百度页面";
        if (num <= 0) {
            window.location.href = "http://www.baidu.com";
            clearInterval(this);
        }

    }, 1000);
```

8. 写一个demo，实现每隔一段时间抽取一个0-100的随机整数。
```javascript
    oBtn.onclick = function() {
        timmer = setInterval(function (){
            let num = Math.floor(Math.random() * 101);
            oInput.value = num;                
        }, 100);
        oBtn.disabled = true;
    }

```

9. 写一个demo，实现阅读协议倒计时效果。

10. 写一个demo，实现图片自动播放。

## Chapter3 number 和 Math
1. 如何将一个十进制数转化成十六进制？
```javascript
    // 使用toString 方法完成进制转换，toString() 接收 2～36之 间的进制
    let num = 255;
    console.log("二进制" ,num.toString(2));
    console.log("八进制：", num.toString(8));
    console.log("十进制：", num.toString(10));
    console.log("十六进制：", num.toString(16));
    console.log("36进制：", num.toString(36));
```

2. 写一个demo，实现点击按钮生成一个随机颜色的方块。
```javascript
    oBtn.onclick = function (){
        red = Math.floor(Math.random() * 256);
        green = Math.floor(Math.random() * 256);
        blue = Math.floor(Math.random() * 256);
        // console.log(red, green, blue);
        oBox.style.backgroundColor = "rgb(" + red + ", " + green + ", " + blue + ")";
    }
```

3. 实现商品单价计算。
```javascript
    price = oPrice.value;
    price = parseFloat(price);
```

4. 如何生成一个n-m之间的随机整数？
```javascript
    // 获取 [n, m) 间的随机整数
    function getRandom (min, max) {
        return Math.floor(Math.random() * (max - min) + min);
    }
```

5. 写一个demo，实现点击按钮，生成一个4位数的随机验证码。
```javascript
    function generateCode(codeLen) {
        let dict = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
        let code = "";
        for (let i = 0; i < codeLen; i++) {
                code += dict[Math.floor(Math.random() * 62)];
            }
        return code;
    }
```

6. 根据勾股定理，写一个函数，已知两直角条边，求第三条边(斜边)。
```javascript
    function fc (a, b){
        return Math.sqrt(a*a + b*b);
    }
```

7. 输入3个数（边长），判断是否能构成三角形，如果能构成判断三角形的类型(直角、锐角、钝角)。

8. 写一个函数，生成一个随机IP 地址，一个合法的IP 地址范围： 0.0.0.0~255.255.255.255。

9. 给定一个圆的半径以及圆弧对应的角度值(圆心角)，求该圆弧的长度
```javascript
    // 弧度 = 角度 * PI / 180
    // 角度 = 弧度 * 180 / PI
    function radis2angle (radis) {
        return radis * 180 / Math.PI;
    }
```

## Chapter4 数组和循环
1. 有一个数组，每个元素都是10进制的正整数，要求把这个数组的每个正整数元素转换成16进制并且返回一个新数组。
```javascript
    let arr = [1, 22, 334, 56, 8, 255]
    // 使用 ECMAScript6 的map 方法与箭头函数
    let arr2 = arr.map((item) => item.toString(16));
```

2. 有一个数组，每个元素都是10进制的正整数，要求修改这个数组里面的每个元素，把这些元素转成16进制的数
```javascript
    let arr = [1, 22, 334, 56, 255];
    let arr2 = arr.map(function (value, index, arr2) {
        // 此处的arr2 是arr 的浅复制
        // console.log("value = ", value);
        // console.log("index = ", index);
        // console.log(arr2);
        arr[index] = value.toString(16);
        // map 函数有返回值，每次的返回值对应至原数组的下标位置元素，返回的新数组可初始化/赋值给变量
        return 1;
    });
```

3. 把一个正整数数组每个元素平方，返回一个新数组

4. 从学生表数据中，找出对应学号学生的信息
```javascript
    let students = [
        {id: 1, name: 'xiaoqiang', age: '18', score: 90},
        {id: 2, name: 'xiaoqiang', age: '19', score: 50}
    ]

    // filter() 方法接受回调函数，与map 用法一致，返回符合条件的项目组成的数组
    // 返回值若为ture，则保留该项；若为false，则丢弃该项
    let result = students.filter(function (value, index, arr) {
        return value.id === parseInt(num);
    });
```

5. 如何判断一个变量是否为数组？
```javascript
    let arr = [];

    // 1、使用instanceof 关键字
    console.log(arr instanceof Array);

    // 2、使用构造函数判断
    console.log(arr.constructor === Array);

    // 3、使用toString() 方法
    console.log(Object.prototype.toString.call(arr) === "[object Array]");

    // 4、es5 新特性：使用isArray() 方法
    console.log(Array.isArray(arr));
```

6. 数组去重
```javascript
    let arr = [2, 2, 4, 5, 6, 8, 5, 8, 5, 5, 10];

    //  使用es6 新特性：Set
    let s = new Set(arr);
    console.log(s);
    console.log(Array.from(s));
```

7. 求一个二维正整数数组中的最大值

8. 对一个数组的元素进行求和运算
```javascript
    let arr = [10, 2, 3, 4, 5];

    let sum = arr.reduce(function (previousValue, currentValue, currentIndex, arr2) {
        return previousValue + currentValue;
    });

    console.log("sum = ", sum);
```

9. 检查数组中的元素是否都大于 0 。
```javascript
    let arr = [1, 2, -3, 4, 5];
    let result = arr.every((item) => item > 0);

    console.log(result);
```

10. 判断下列代码的输出
```javascript
    let arr = [1, 2, 3];
    let arr2 = arr;
    arr2.push(4);
    console.log(arr);


    let arr = [1, 2, 3];
    let arr2 = arr;
    arr2 = [1, 2, 3, 4];
    console.log(arr);
```
