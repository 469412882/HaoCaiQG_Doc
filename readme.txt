apk接入sdk步骤：

1、引入sdk的编译文件
   lib: 直接复制so文件
   smali: 将smali文件按照路径复制
   smali_classes2: 如果apk包有次文件，则优先放入smali文件
   unknown: sdk中的publicsuffixes.gz
   注意：遇到冲突的则使用宿主文件，不覆盖
   
	                 
    
2、copy资源文件
	 直接复制过去的文件：res
	 需要手动修改的文件：res/values
	 
	 修改宿主res/values下的文件（按照目录修改）
	 注意：宿主的资源类型ID和本SDK的资源类型ID可能不同
	 
	                     
3、修改application
   在app.smali文件中添加对应的代码，修改入口MainActivity，可以通过Manifest中查找，注意三个参数 p0为App.this
   注意:是否需要修改local 的值  修改请求后台用的app_id
   
4、修改version
	 在apktool.yml文件中修改version，和unknownFiles
	 
5、修改Manifest文件
   1）添加权限配置
   2）添加极光和sdk配置 并去除原有的启动入口
   3）修改包名
   4）修改极光配置key
   5）修改Manifest$permission文件，注意：如果宿主没有此文件的话，需要修改文件里的包名路径
   
   
6、修改app名
   修改Manifest中指定的res/values/strings.xml中app_name的值，最好检索一下
   
7、修改logo
   修改Manifest中指定的res/mipmap/logo.png 注意：如果有多个适配文件，都要修改	
   
   
   android:visibility="gone"

   