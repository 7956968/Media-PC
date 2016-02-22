i=1
while(($i<100))
do
#ffmpeg  -i ../stream_chn0.h264 -f flv rtmp://192.168.2.170:1935/myapp/test 

ffmpeg  -i ../2012.flv -f flv rtmp://127.0.0.1:1935/myapp/test 

done
