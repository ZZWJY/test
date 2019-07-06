API 应用程序编程接口（别人已经定义好的函数，咋们可以直接使用） 

数组中的API

toString()  按照逗号组合成字符串
join('-')   按照指定字符组成字符串
concat(arr1,arr2) 拼接多个数组
slice(开始，结束)  截取数据中的元素 不包含结束的本身
splice(开始的下标，删除的数量,e1,e2)   原数据发生变化 也可以用与添加元素
reverse（）  翻转数组中的元素
sort（） 对数组中的元素进行排序，默认按照Unicode码从小到大排序。return a-b;从小到大排序。return b-a;从大到小排序。
push  返回数组的长度  末尾添加元素
pop  返回成功删除的元素   在末尾删除元素
unshift  返回数组的长度   在开始添加元素
shift  返回成功删除的元素    在开始删除元素
二维数组
var city=[   //注意逗号
	[],
	[],
	[]
]
city[1][2]  1代表数组的下标  2代表数组下标中的元素


arr=null时 不再指向任何一个堆内存  释放空间

//ES5新增的方法
1.indexOf（） 与字符串indexof一样用法
2.every（）







字符串中的API
new String()   将任何数据转字符串  返回对象
String()    将任何数据转字符串   返回字符串
length  查看字符串的长度
charAt()  获取下标查找对应的字符  /也可以利用  ’数组[下标]‘ 查找对应的字符
charCodeAt()  查看任意一个Unicode码
indexOf(a,b)  查找某个字符的下标，当b为分数时，还是按照从左往右的顺序查找，找不到返回-1
lastIndexOf(a,b)  反向查找某个字符的下标  当b或者为负数时，都会返回-1
substr(a,b)  截取指定的字符串长度,a为开始的下标，为-a就反向截取，b为为截取的长度,b为空时，从开始截取到最后
toUpperCase()  转大写
toLowerCase()  转小写
split('-')  对字符串按照指定的字符分割成数组 
slice(a,b)  截取字符串，a是开始，b为结束但是不包含本身
substring(a,b);截取字符串，a是开始，b为结束但是不包含本身  当a为负数时，自动转成0
		slice与substring的区别  slice可以为负数  substring无需排序下标的顺序

匹配模式中的对象：
match() 用于查找匹配的字符串  eg：console.log(arr.match(\china\ig)); 相当于查找arr字符串中有多少个China
search() 用于查找满足条件的第一个字符串下标，不能使用g全局查找找不到返回-1  
						//console.log(str.search(/china/i));  //0
replace(a,b) 查找并代替，可用于屏蔽，a为要查找的字符串，b为要替换的字符串	
						//console.log(str.replace(\china\ig,***));
PI()圆周率、max()取最大值、min()取最小值、abs()取绝对值、floor()向下取整、ceil()向上取整、pow()求幂次方、round()四舍五入、random()取随机数 sqrt()开平方根 





mysql

连接mysql ：mysql -uroot < 文件路径    /  mysql -uroot
常用管理命令：show databases;->use 数据库;->show tables; desc 表名-》desc 退出

列类型：数值类型  字符串类型、日期时间类型
数值类型中的‘整形’：微整形tinyint   小整形smallint   整形int   大整形bigint  
数值类型中的‘浮点型’：单精度float  双精度double   定点小数decimal
数值类型中的‘布尔型’：bool
日期时间型：日期型date  时间型time 日期时间型datetime
字符串类型：varchar（）   char（）  text（）

列约束：
主键约束-->primary key  不能为null一个表只能有一个主键
非空约束-->not null  不能为空
唯一约束-->unique
默认值约束-->default+值  
检查约束-->
外键约束-->foreign key
自增列：auto_increment

查询：
distinct  合并，查找不同的项  eg:select distinct sex from emp;
查询执行计算：eg:select ename,salary*12 from emp;
从小到大排序：order by ... asc   (asc可以省略)
从大到小排序：order by... desc
	eg:select * from emp order by salary desc,sex asc; 工资降序性别升序
条件查询：eg : select * from emp where birthday>='1996-5-25';
	eg:select * from emp where salary not between 7000 and 10000;  查询工资不在7000-10000之间员工所有的列。



JS

数据类型：原始类型和引用类型
原始类型：数值型（整型和浮点型），字符串型，布尔型，未定义型，空。

数据类型转换：隐式转换和强制转换
隐式转换：数字+字符串（数字转字符串）、数字+布尔（布尔转数字）、字符串+布尔型（布尔转字符串）、字符串+字符串（）
强制转换：Number（）、parseInt（）、parseFloat(可以保留小数后的所有数字) 、 toString()

运算符：算术运算符、比较运算符、逻辑运算符、位运算符、赋值运算符、三目运算符  



JS高级

一、string类型中的正则函数
1.indexOf()  用于查找一个字符串中的是否包含敏感词  找不到就返回-1
2.search()  用正则表达式模糊查找一个关键字的位置  找不到就返回-1
3.match()  ①：var arr=str.match(/正则/i)  用正则只查找第一个敏感词的内容和位置 arr[0]返回找到的敏感词 arr["index"]返回是敏感词的位置  找不到就返回null 
           ②：var arr=str.macth(/正则/ig)  查找字符串中所有符合条件的敏感词的内容
4.reg:exec()  查找所有关键字的内容和位置
5.var reg= /正则/ig  => 动态生成 var reg=new RegExp("正则","ig")
   RegExp中含有两个函数 ①： var bool=reg.test(str)  用正则表达式reg检查str字符串是否符合格式化要求  返回值: true/false
                        ②： var arr=reg.exec(str)  在字符串str中查找一个符合正则表达式reg要求的关键词的内容和位置












面试题
1.==与===区别
	== 抽象相等，比较时，会先进行类型转换，然后再比较值
	=== 严格相等，判断两个值类型及数值完全相等

2.对nodejs的优点和缺点提出自己的看法？
	优点：nodejs设计思想是以事件驱动，异步，非阻塞I/O密集型为核心，它提供的大多数的API都是基于事件和异步的风格，所以非常适合处理高并发请求，因此构建在node上的服务器相比其他技术实现的服务器要好的多，此外，与node服务器交互的前端代码是由JS来编写的，客户端与服务器端都用同一种语言，降低成本。
	缺点：不适合做CPU密集型的应用

