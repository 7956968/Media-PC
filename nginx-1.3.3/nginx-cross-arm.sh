CC_PATH=/opt/hisi-linux-nptl/arm-hisiv100-linux/target/bin/arm-hisiv100nptl-linux-gcc
CPP_PATH=/opt/hisi-linux-nptl/arm-hisiv100-linux/target/bin/arm-hisiv100nptl-linux-g++
#./configure  --add-module=../nginx_mod_h264_streaming-2.2.7 --add-module=../nginx-rtmp-module --with-pcre=../pcre-8.36 \
#--with-zlib=../zlib-1.2.8  --prefix=/usr/local/nginx  --with-http_flv_module --with-http_stub_status_module --with-openssl-opt=enable  --with-http_mp4_module  --add-module=../nginx-accesskey-2.0.3    --with-cc-opt='-O3 -Wno-unused-but-set-variable' 

./configure  --add-module=../nginx-rtmp-module  --with-pcre=../pcre-8.36 \
--with-zlib=../zlib-1.2.8 \
--with-http_ssl_module --with-openssl=../openssl-1.0.2  \
--with-cc-opt='-O3 -Wno-unused-but-set-variable'  \
--prefix=/usr/local/nginx-arm --builddir=./builddir --with-cc=$CC_PATH --with-cpp=$CPP_PATH 
#make 
#make install
