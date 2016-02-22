
1 拷贝media-pc到linux操作系统下
2 在media-pc下运行install_openssl.sh安装openssl和ffmpeg

3 进入nginx-1.3.3
运行nginx.sh

4 待安装完成

另外将本地电脑usr/local/nginx里面的内容都放了进去，可以和本地文件进行对照

修改nginx\html\nginx-rtmp-module\test\rtmp-publisher\player.html 里面rtmp://192.168.2.170/myapp的ip地址为本地ip地址

运行/usr/local/nginx -c /usr/local/nginx/conf/nginx.conf &

另外在nginx-1.3.3里面运行ffmpeg.sh

在浏览器上http://x.x.x.x:8080/rtmp-publisher/player.html里面进行访问








