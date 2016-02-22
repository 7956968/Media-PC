
CC =	gcc
CFLAGS =  -pipe  -O -W -Wall -Wpointer-arith -Wno-unused-parameter -Wunused-function -Wunused-variable -Wunused-value -Werror -g -O3 -Wno-unused-but-set-variable -I../nginx-rtmp-module
CPP =	gcc -E
LINK =	$(CC)


ALL_INCS = -I src/core \
	-I src/event \
	-I src/event/modules \
	-I src/os/unix \
	-I ./builddir \
	-I src/http \
	-I src/http/modules \
	-I src/mail


CORE_DEPS = src/core/nginx.h \
	src/core/ngx_config.h \
	src/core/ngx_core.h \
	src/core/ngx_log.h \
	src/core/ngx_palloc.h \
	src/core/ngx_array.h \
	src/core/ngx_list.h \
	src/core/ngx_hash.h \
	src/core/ngx_buf.h \
	src/core/ngx_queue.h \
	src/core/ngx_string.h \
	src/core/ngx_parse.h \
	src/core/ngx_inet.h \
	src/core/ngx_file.h \
	src/core/ngx_crc.h \
	src/core/ngx_crc32.h \
	src/core/ngx_murmurhash.h \
	src/core/ngx_md5.h \
	src/core/ngx_sha1.h \
	src/core/ngx_rbtree.h \
	src/core/ngx_radix_tree.h \
	src/core/ngx_slab.h \
	src/core/ngx_times.h \
	src/core/ngx_shmtx.h \
	src/core/ngx_connection.h \
	src/core/ngx_cycle.h \
	src/core/ngx_conf_file.h \
	src/core/ngx_resolver.h \
	src/core/ngx_open_file_cache.h \
	src/core/ngx_crypt.h \
	src/event/ngx_event.h \
	src/event/ngx_event_timer.h \
	src/event/ngx_event_posted.h \
	src/event/ngx_event_busy_lock.h \
	src/event/ngx_event_connect.h \
	src/event/ngx_event_pipe.h \
	src/os/unix/ngx_time.h \
	src/os/unix/ngx_errno.h \
	src/os/unix/ngx_alloc.h \
	src/os/unix/ngx_files.h \
	src/os/unix/ngx_channel.h \
	src/os/unix/ngx_shmem.h \
	src/os/unix/ngx_process.h \
	src/os/unix/ngx_setaffinity.h \
	src/os/unix/ngx_setproctitle.h \
	src/os/unix/ngx_atomic.h \
	src/os/unix/ngx_gcc_atomic_x86.h \
	src/os/unix/ngx_thread.h \
	src/os/unix/ngx_socket.h \
	src/os/unix/ngx_os.h \
	src/os/unix/ngx_user.h \
	src/os/unix/ngx_process_cycle.h \
	src/os/unix/ngx_linux_config.h \
	src/os/unix/ngx_linux.h \
	src/event/ngx_event_openssl.h \
	src/core/ngx_regex.h \
	./builddir/ngx_auto_config.h


CORE_INCS = -I src/core \
	-I src/event \
	-I src/event/modules \
	-I src/os/unix \
	-I ./builddir


HTTP_DEPS = src/http/ngx_http.h \
	src/http/ngx_http_request.h \
	src/http/ngx_http_config.h \
	src/http/ngx_http_core_module.h \
	src/http/ngx_http_cache.h \
	src/http/ngx_http_variables.h \
	src/http/ngx_http_script.h \
	src/http/ngx_http_upstream.h \
	src/http/ngx_http_upstream_round_robin.h \
	src/http/ngx_http_busy_lock.h \
	src/http/modules/ngx_http_ssi_filter_module.h


HTTP_INCS = -I src/http \
	-I src/http/modules


ADDON_DEPS = $(CORE_DEPS)                                              ../nginx-rtmp-module/ngx_rtmp_amf.h                               ../nginx-rtmp-module/ngx_rtmp_bandwidth.h                         ../nginx-rtmp-module/ngx_rtmp_cmd_module.h                        ../nginx-rtmp-module/ngx_rtmp_codec_module.h                      ../nginx-rtmp-module/ngx_rtmp_eval.h                              ../nginx-rtmp-module/ngx_rtmp.h                                   ../nginx-rtmp-module/ngx_rtmp_version.h                           ../nginx-rtmp-module/ngx_rtmp_live_module.h                       ../nginx-rtmp-module/ngx_rtmp_netcall_module.h                    ../nginx-rtmp-module/ngx_rtmp_play_module.h                       ../nginx-rtmp-module/ngx_rtmp_record_module.h                     ../nginx-rtmp-module/ngx_rtmp_relay_module.h                      ../nginx-rtmp-module/ngx_rtmp_streams.h                           ../nginx-rtmp-module/ngx_rtmp_bitop.h                             ../nginx-rtmp-module/ngx_rtmp_proxy_protocol.h                    ../nginx-rtmp-module/hls/ngx_rtmp_mpegts.h                        ../nginx-rtmp-module/dash/ngx_rtmp_mp4.h                           $(HTTP_DEPS)


./builddir/nginx:	./builddir/src/core/nginx.o \
	./builddir/src/core/ngx_log.o \
	./builddir/src/core/ngx_palloc.o \
	./builddir/src/core/ngx_array.o \
	./builddir/src/core/ngx_list.o \
	./builddir/src/core/ngx_hash.o \
	./builddir/src/core/ngx_buf.o \
	./builddir/src/core/ngx_queue.o \
	./builddir/src/core/ngx_output_chain.o \
	./builddir/src/core/ngx_string.o \
	./builddir/src/core/ngx_parse.o \
	./builddir/src/core/ngx_inet.o \
	./builddir/src/core/ngx_file.o \
	./builddir/src/core/ngx_crc32.o \
	./builddir/src/core/ngx_murmurhash.o \
	./builddir/src/core/ngx_md5.o \
	./builddir/src/core/ngx_rbtree.o \
	./builddir/src/core/ngx_radix_tree.o \
	./builddir/src/core/ngx_slab.o \
	./builddir/src/core/ngx_times.o \
	./builddir/src/core/ngx_shmtx.o \
	./builddir/src/core/ngx_connection.o \
	./builddir/src/core/ngx_cycle.o \
	./builddir/src/core/ngx_spinlock.o \
	./builddir/src/core/ngx_cpuinfo.o \
	./builddir/src/core/ngx_conf_file.o \
	./builddir/src/core/ngx_resolver.o \
	./builddir/src/core/ngx_open_file_cache.o \
	./builddir/src/core/ngx_crypt.o \
	./builddir/src/event/ngx_event.o \
	./builddir/src/event/ngx_event_timer.o \
	./builddir/src/event/ngx_event_posted.o \
	./builddir/src/event/ngx_event_busy_lock.o \
	./builddir/src/event/ngx_event_accept.o \
	./builddir/src/event/ngx_event_connect.o \
	./builddir/src/event/ngx_event_pipe.o \
	./builddir/src/os/unix/ngx_time.o \
	./builddir/src/os/unix/ngx_errno.o \
	./builddir/src/os/unix/ngx_alloc.o \
	./builddir/src/os/unix/ngx_files.o \
	./builddir/src/os/unix/ngx_socket.o \
	./builddir/src/os/unix/ngx_recv.o \
	./builddir/src/os/unix/ngx_readv_chain.o \
	./builddir/src/os/unix/ngx_udp_recv.o \
	./builddir/src/os/unix/ngx_send.o \
	./builddir/src/os/unix/ngx_writev_chain.o \
	./builddir/src/os/unix/ngx_channel.o \
	./builddir/src/os/unix/ngx_shmem.o \
	./builddir/src/os/unix/ngx_process.o \
	./builddir/src/os/unix/ngx_daemon.o \
	./builddir/src/os/unix/ngx_setaffinity.o \
	./builddir/src/os/unix/ngx_setproctitle.o \
	./builddir/src/os/unix/ngx_posix_init.o \
	./builddir/src/os/unix/ngx_user.o \
	./builddir/src/os/unix/ngx_process_cycle.o \
	./builddir/src/os/unix/ngx_linux_init.o \
	./builddir/src/event/modules/ngx_epoll_module.o \
	./builddir/src/os/unix/ngx_linux_sendfile_chain.o \
	./builddir/src/event/ngx_event_openssl.o \
	./builddir/src/core/ngx_regex.o \
	./builddir/src/http/ngx_http.o \
	./builddir/src/http/ngx_http_core_module.o \
	./builddir/src/http/ngx_http_special_response.o \
	./builddir/src/http/ngx_http_request.o \
	./builddir/src/http/ngx_http_parse.o \
	./builddir/src/http/ngx_http_header_filter_module.o \
	./builddir/src/http/ngx_http_write_filter_module.o \
	./builddir/src/http/ngx_http_copy_filter_module.o \
	./builddir/src/http/modules/ngx_http_log_module.o \
	./builddir/src/http/ngx_http_request_body.o \
	./builddir/src/http/ngx_http_variables.o \
	./builddir/src/http/ngx_http_script.o \
	./builddir/src/http/ngx_http_upstream.o \
	./builddir/src/http/ngx_http_upstream_round_robin.o \
	./builddir/src/http/ngx_http_parse_time.o \
	./builddir/src/http/modules/ngx_http_static_module.o \
	./builddir/src/http/modules/ngx_http_index_module.o \
	./builddir/src/http/modules/ngx_http_chunked_filter_module.o \
	./builddir/src/http/modules/ngx_http_range_filter_module.o \
	./builddir/src/http/modules/ngx_http_headers_filter_module.o \
	./builddir/src/http/modules/ngx_http_not_modified_filter_module.o \
	./builddir/src/http/ngx_http_busy_lock.o \
	./builddir/src/http/ngx_http_file_cache.o \
	./builddir/src/http/modules/ngx_http_gzip_filter_module.o \
	./builddir/src/http/ngx_http_postpone_filter_module.o \
	./builddir/src/http/modules/ngx_http_ssi_filter_module.o \
	./builddir/src/http/modules/ngx_http_charset_filter_module.o \
	./builddir/src/http/modules/ngx_http_userid_filter_module.o \
	./builddir/src/http/modules/ngx_http_autoindex_module.o \
	./builddir/src/http/modules/ngx_http_auth_basic_module.o \
	./builddir/src/http/modules/ngx_http_access_module.o \
	./builddir/src/http/modules/ngx_http_limit_conn_module.o \
	./builddir/src/http/modules/ngx_http_limit_req_module.o \
	./builddir/src/http/modules/ngx_http_geo_module.o \
	./builddir/src/http/modules/ngx_http_map_module.o \
	./builddir/src/http/modules/ngx_http_split_clients_module.o \
	./builddir/src/http/modules/ngx_http_referer_module.o \
	./builddir/src/http/modules/ngx_http_rewrite_module.o \
	./builddir/src/http/modules/ngx_http_proxy_module.o \
	./builddir/src/http/modules/ngx_http_fastcgi_module.o \
	./builddir/src/http/modules/ngx_http_uwsgi_module.o \
	./builddir/src/http/modules/ngx_http_scgi_module.o \
	./builddir/src/http/modules/ngx_http_memcached_module.o \
	./builddir/src/http/modules/ngx_http_empty_gif_module.o \
	./builddir/src/http/modules/ngx_http_browser_module.o \
	./builddir/src/http/modules/ngx_http_upstream_ip_hash_module.o \
	./builddir/src/http/modules/ngx_http_upstream_least_conn_module.o \
	./builddir/src/http/modules/ngx_http_upstream_keepalive_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_init.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_handshake.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_handler.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_amf.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_send.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_shared.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_eval.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_receive.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_core_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_cmd_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_codec_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_access_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_record_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_live_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_play_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_flv_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_mp4_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_netcall_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_stat_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_control_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_relay_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_bandwidth.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_exec_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_auto_push_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_notify_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_log_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_limit_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_bitop.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_proxy_protocol.o \
	./builddir/addon/hls/ngx_rtmp_hls_module.o \
	./builddir/addon/dash/ngx_rtmp_dash_module.o \
	./builddir/addon/hls/ngx_rtmp_mpegts.o \
	./builddir/addon/dash/ngx_rtmp_mp4.o \
	./builddir/ngx_modules.o

	$(LINK) -o ./builddir/nginx \
	./builddir/src/core/nginx.o \
	./builddir/src/core/ngx_log.o \
	./builddir/src/core/ngx_palloc.o \
	./builddir/src/core/ngx_array.o \
	./builddir/src/core/ngx_list.o \
	./builddir/src/core/ngx_hash.o \
	./builddir/src/core/ngx_buf.o \
	./builddir/src/core/ngx_queue.o \
	./builddir/src/core/ngx_output_chain.o \
	./builddir/src/core/ngx_string.o \
	./builddir/src/core/ngx_parse.o \
	./builddir/src/core/ngx_inet.o \
	./builddir/src/core/ngx_file.o \
	./builddir/src/core/ngx_crc32.o \
	./builddir/src/core/ngx_murmurhash.o \
	./builddir/src/core/ngx_md5.o \
	./builddir/src/core/ngx_rbtree.o \
	./builddir/src/core/ngx_radix_tree.o \
	./builddir/src/core/ngx_slab.o \
	./builddir/src/core/ngx_times.o \
	./builddir/src/core/ngx_shmtx.o \
	./builddir/src/core/ngx_connection.o \
	./builddir/src/core/ngx_cycle.o \
	./builddir/src/core/ngx_spinlock.o \
	./builddir/src/core/ngx_cpuinfo.o \
	./builddir/src/core/ngx_conf_file.o \
	./builddir/src/core/ngx_resolver.o \
	./builddir/src/core/ngx_open_file_cache.o \
	./builddir/src/core/ngx_crypt.o \
	./builddir/src/event/ngx_event.o \
	./builddir/src/event/ngx_event_timer.o \
	./builddir/src/event/ngx_event_posted.o \
	./builddir/src/event/ngx_event_busy_lock.o \
	./builddir/src/event/ngx_event_accept.o \
	./builddir/src/event/ngx_event_connect.o \
	./builddir/src/event/ngx_event_pipe.o \
	./builddir/src/os/unix/ngx_time.o \
	./builddir/src/os/unix/ngx_errno.o \
	./builddir/src/os/unix/ngx_alloc.o \
	./builddir/src/os/unix/ngx_files.o \
	./builddir/src/os/unix/ngx_socket.o \
	./builddir/src/os/unix/ngx_recv.o \
	./builddir/src/os/unix/ngx_readv_chain.o \
	./builddir/src/os/unix/ngx_udp_recv.o \
	./builddir/src/os/unix/ngx_send.o \
	./builddir/src/os/unix/ngx_writev_chain.o \
	./builddir/src/os/unix/ngx_channel.o \
	./builddir/src/os/unix/ngx_shmem.o \
	./builddir/src/os/unix/ngx_process.o \
	./builddir/src/os/unix/ngx_daemon.o \
	./builddir/src/os/unix/ngx_setaffinity.o \
	./builddir/src/os/unix/ngx_setproctitle.o \
	./builddir/src/os/unix/ngx_posix_init.o \
	./builddir/src/os/unix/ngx_user.o \
	./builddir/src/os/unix/ngx_process_cycle.o \
	./builddir/src/os/unix/ngx_linux_init.o \
	./builddir/src/event/modules/ngx_epoll_module.o \
	./builddir/src/os/unix/ngx_linux_sendfile_chain.o \
	./builddir/src/event/ngx_event_openssl.o \
	./builddir/src/core/ngx_regex.o \
	./builddir/src/http/ngx_http.o \
	./builddir/src/http/ngx_http_core_module.o \
	./builddir/src/http/ngx_http_special_response.o \
	./builddir/src/http/ngx_http_request.o \
	./builddir/src/http/ngx_http_parse.o \
	./builddir/src/http/ngx_http_header_filter_module.o \
	./builddir/src/http/ngx_http_write_filter_module.o \
	./builddir/src/http/ngx_http_copy_filter_module.o \
	./builddir/src/http/modules/ngx_http_log_module.o \
	./builddir/src/http/ngx_http_request_body.o \
	./builddir/src/http/ngx_http_variables.o \
	./builddir/src/http/ngx_http_script.o \
	./builddir/src/http/ngx_http_upstream.o \
	./builddir/src/http/ngx_http_upstream_round_robin.o \
	./builddir/src/http/ngx_http_parse_time.o \
	./builddir/src/http/modules/ngx_http_static_module.o \
	./builddir/src/http/modules/ngx_http_index_module.o \
	./builddir/src/http/modules/ngx_http_chunked_filter_module.o \
	./builddir/src/http/modules/ngx_http_range_filter_module.o \
	./builddir/src/http/modules/ngx_http_headers_filter_module.o \
	./builddir/src/http/modules/ngx_http_not_modified_filter_module.o \
	./builddir/src/http/ngx_http_busy_lock.o \
	./builddir/src/http/ngx_http_file_cache.o \
	./builddir/src/http/modules/ngx_http_gzip_filter_module.o \
	./builddir/src/http/ngx_http_postpone_filter_module.o \
	./builddir/src/http/modules/ngx_http_ssi_filter_module.o \
	./builddir/src/http/modules/ngx_http_charset_filter_module.o \
	./builddir/src/http/modules/ngx_http_userid_filter_module.o \
	./builddir/src/http/modules/ngx_http_autoindex_module.o \
	./builddir/src/http/modules/ngx_http_auth_basic_module.o \
	./builddir/src/http/modules/ngx_http_access_module.o \
	./builddir/src/http/modules/ngx_http_limit_conn_module.o \
	./builddir/src/http/modules/ngx_http_limit_req_module.o \
	./builddir/src/http/modules/ngx_http_geo_module.o \
	./builddir/src/http/modules/ngx_http_map_module.o \
	./builddir/src/http/modules/ngx_http_split_clients_module.o \
	./builddir/src/http/modules/ngx_http_referer_module.o \
	./builddir/src/http/modules/ngx_http_rewrite_module.o \
	./builddir/src/http/modules/ngx_http_proxy_module.o \
	./builddir/src/http/modules/ngx_http_fastcgi_module.o \
	./builddir/src/http/modules/ngx_http_uwsgi_module.o \
	./builddir/src/http/modules/ngx_http_scgi_module.o \
	./builddir/src/http/modules/ngx_http_memcached_module.o \
	./builddir/src/http/modules/ngx_http_empty_gif_module.o \
	./builddir/src/http/modules/ngx_http_browser_module.o \
	./builddir/src/http/modules/ngx_http_upstream_ip_hash_module.o \
	./builddir/src/http/modules/ngx_http_upstream_least_conn_module.o \
	./builddir/src/http/modules/ngx_http_upstream_keepalive_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_init.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_handshake.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_handler.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_amf.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_send.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_shared.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_eval.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_receive.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_core_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_cmd_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_codec_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_access_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_record_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_live_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_play_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_flv_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_mp4_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_netcall_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_stat_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_control_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_relay_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_bandwidth.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_exec_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_auto_push_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_notify_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_log_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_limit_module.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_bitop.o \
	./builddir/addon/nginx-rtmp-module/ngx_rtmp_proxy_protocol.o \
	./builddir/addon/hls/ngx_rtmp_hls_module.o \
	./builddir/addon/dash/ngx_rtmp_dash_module.o \
	./builddir/addon/hls/ngx_rtmp_mpegts.o \
	./builddir/addon/dash/ngx_rtmp_mp4.o \
	./builddir/ngx_modules.o \
	-lpthread -lcrypt -lpcre -lssl -lcrypto -ldl -lz
	


./builddir/ngx_modules.o:	$(CORE_DEPS) \
	./builddir/ngx_modules.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/ngx_modules.o \
		./builddir/ngx_modules.c


./builddir/src/core/nginx.o:	$(CORE_DEPS) \
	src/core/nginx.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/nginx.o \
		src/core/nginx.c


./builddir/src/core/ngx_log.o:	$(CORE_DEPS) \
	src/core/ngx_log.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_log.o \
		src/core/ngx_log.c


./builddir/src/core/ngx_palloc.o:	$(CORE_DEPS) \
	src/core/ngx_palloc.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_palloc.o \
		src/core/ngx_palloc.c


./builddir/src/core/ngx_array.o:	$(CORE_DEPS) \
	src/core/ngx_array.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_array.o \
		src/core/ngx_array.c


./builddir/src/core/ngx_list.o:	$(CORE_DEPS) \
	src/core/ngx_list.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_list.o \
		src/core/ngx_list.c


./builddir/src/core/ngx_hash.o:	$(CORE_DEPS) \
	src/core/ngx_hash.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_hash.o \
		src/core/ngx_hash.c


./builddir/src/core/ngx_buf.o:	$(CORE_DEPS) \
	src/core/ngx_buf.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_buf.o \
		src/core/ngx_buf.c


./builddir/src/core/ngx_queue.o:	$(CORE_DEPS) \
	src/core/ngx_queue.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_queue.o \
		src/core/ngx_queue.c


./builddir/src/core/ngx_output_chain.o:	$(CORE_DEPS) \
	src/core/ngx_output_chain.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_output_chain.o \
		src/core/ngx_output_chain.c


./builddir/src/core/ngx_string.o:	$(CORE_DEPS) \
	src/core/ngx_string.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_string.o \
		src/core/ngx_string.c


./builddir/src/core/ngx_parse.o:	$(CORE_DEPS) \
	src/core/ngx_parse.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_parse.o \
		src/core/ngx_parse.c


./builddir/src/core/ngx_inet.o:	$(CORE_DEPS) \
	src/core/ngx_inet.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_inet.o \
		src/core/ngx_inet.c


./builddir/src/core/ngx_file.o:	$(CORE_DEPS) \
	src/core/ngx_file.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_file.o \
		src/core/ngx_file.c


./builddir/src/core/ngx_crc32.o:	$(CORE_DEPS) \
	src/core/ngx_crc32.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_crc32.o \
		src/core/ngx_crc32.c


./builddir/src/core/ngx_murmurhash.o:	$(CORE_DEPS) \
	src/core/ngx_murmurhash.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_murmurhash.o \
		src/core/ngx_murmurhash.c


./builddir/src/core/ngx_md5.o:	$(CORE_DEPS) \
	src/core/ngx_md5.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_md5.o \
		src/core/ngx_md5.c


./builddir/src/core/ngx_rbtree.o:	$(CORE_DEPS) \
	src/core/ngx_rbtree.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_rbtree.o \
		src/core/ngx_rbtree.c


./builddir/src/core/ngx_radix_tree.o:	$(CORE_DEPS) \
	src/core/ngx_radix_tree.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_radix_tree.o \
		src/core/ngx_radix_tree.c


./builddir/src/core/ngx_slab.o:	$(CORE_DEPS) \
	src/core/ngx_slab.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_slab.o \
		src/core/ngx_slab.c


./builddir/src/core/ngx_times.o:	$(CORE_DEPS) \
	src/core/ngx_times.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_times.o \
		src/core/ngx_times.c


./builddir/src/core/ngx_shmtx.o:	$(CORE_DEPS) \
	src/core/ngx_shmtx.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_shmtx.o \
		src/core/ngx_shmtx.c


./builddir/src/core/ngx_connection.o:	$(CORE_DEPS) \
	src/core/ngx_connection.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_connection.o \
		src/core/ngx_connection.c


./builddir/src/core/ngx_cycle.o:	$(CORE_DEPS) \
	src/core/ngx_cycle.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_cycle.o \
		src/core/ngx_cycle.c


./builddir/src/core/ngx_spinlock.o:	$(CORE_DEPS) \
	src/core/ngx_spinlock.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_spinlock.o \
		src/core/ngx_spinlock.c


./builddir/src/core/ngx_cpuinfo.o:	$(CORE_DEPS) \
	src/core/ngx_cpuinfo.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_cpuinfo.o \
		src/core/ngx_cpuinfo.c


./builddir/src/core/ngx_conf_file.o:	$(CORE_DEPS) \
	src/core/ngx_conf_file.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_conf_file.o \
		src/core/ngx_conf_file.c


./builddir/src/core/ngx_resolver.o:	$(CORE_DEPS) \
	src/core/ngx_resolver.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_resolver.o \
		src/core/ngx_resolver.c


./builddir/src/core/ngx_open_file_cache.o:	$(CORE_DEPS) \
	src/core/ngx_open_file_cache.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_open_file_cache.o \
		src/core/ngx_open_file_cache.c


./builddir/src/core/ngx_crypt.o:	$(CORE_DEPS) \
	src/core/ngx_crypt.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_crypt.o \
		src/core/ngx_crypt.c


./builddir/src/event/ngx_event.o:	$(CORE_DEPS) \
	src/event/ngx_event.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/event/ngx_event.o \
		src/event/ngx_event.c


./builddir/src/event/ngx_event_timer.o:	$(CORE_DEPS) \
	src/event/ngx_event_timer.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/event/ngx_event_timer.o \
		src/event/ngx_event_timer.c


./builddir/src/event/ngx_event_posted.o:	$(CORE_DEPS) \
	src/event/ngx_event_posted.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/event/ngx_event_posted.o \
		src/event/ngx_event_posted.c


./builddir/src/event/ngx_event_busy_lock.o:	$(CORE_DEPS) \
	src/event/ngx_event_busy_lock.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/event/ngx_event_busy_lock.o \
		src/event/ngx_event_busy_lock.c


./builddir/src/event/ngx_event_accept.o:	$(CORE_DEPS) \
	src/event/ngx_event_accept.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/event/ngx_event_accept.o \
		src/event/ngx_event_accept.c


./builddir/src/event/ngx_event_connect.o:	$(CORE_DEPS) \
	src/event/ngx_event_connect.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/event/ngx_event_connect.o \
		src/event/ngx_event_connect.c


./builddir/src/event/ngx_event_pipe.o:	$(CORE_DEPS) \
	src/event/ngx_event_pipe.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/event/ngx_event_pipe.o \
		src/event/ngx_event_pipe.c


./builddir/src/os/unix/ngx_time.o:	$(CORE_DEPS) \
	src/os/unix/ngx_time.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_time.o \
		src/os/unix/ngx_time.c


./builddir/src/os/unix/ngx_errno.o:	$(CORE_DEPS) \
	src/os/unix/ngx_errno.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_errno.o \
		src/os/unix/ngx_errno.c


./builddir/src/os/unix/ngx_alloc.o:	$(CORE_DEPS) \
	src/os/unix/ngx_alloc.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_alloc.o \
		src/os/unix/ngx_alloc.c


./builddir/src/os/unix/ngx_files.o:	$(CORE_DEPS) \
	src/os/unix/ngx_files.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_files.o \
		src/os/unix/ngx_files.c


./builddir/src/os/unix/ngx_socket.o:	$(CORE_DEPS) \
	src/os/unix/ngx_socket.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_socket.o \
		src/os/unix/ngx_socket.c


./builddir/src/os/unix/ngx_recv.o:	$(CORE_DEPS) \
	src/os/unix/ngx_recv.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_recv.o \
		src/os/unix/ngx_recv.c


./builddir/src/os/unix/ngx_readv_chain.o:	$(CORE_DEPS) \
	src/os/unix/ngx_readv_chain.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_readv_chain.o \
		src/os/unix/ngx_readv_chain.c


./builddir/src/os/unix/ngx_udp_recv.o:	$(CORE_DEPS) \
	src/os/unix/ngx_udp_recv.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_udp_recv.o \
		src/os/unix/ngx_udp_recv.c


./builddir/src/os/unix/ngx_send.o:	$(CORE_DEPS) \
	src/os/unix/ngx_send.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_send.o \
		src/os/unix/ngx_send.c


./builddir/src/os/unix/ngx_writev_chain.o:	$(CORE_DEPS) \
	src/os/unix/ngx_writev_chain.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_writev_chain.o \
		src/os/unix/ngx_writev_chain.c


./builddir/src/os/unix/ngx_channel.o:	$(CORE_DEPS) \
	src/os/unix/ngx_channel.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_channel.o \
		src/os/unix/ngx_channel.c


./builddir/src/os/unix/ngx_shmem.o:	$(CORE_DEPS) \
	src/os/unix/ngx_shmem.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_shmem.o \
		src/os/unix/ngx_shmem.c


./builddir/src/os/unix/ngx_process.o:	$(CORE_DEPS) \
	src/os/unix/ngx_process.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_process.o \
		src/os/unix/ngx_process.c


./builddir/src/os/unix/ngx_daemon.o:	$(CORE_DEPS) \
	src/os/unix/ngx_daemon.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_daemon.o \
		src/os/unix/ngx_daemon.c


./builddir/src/os/unix/ngx_setaffinity.o:	$(CORE_DEPS) \
	src/os/unix/ngx_setaffinity.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_setaffinity.o \
		src/os/unix/ngx_setaffinity.c


./builddir/src/os/unix/ngx_setproctitle.o:	$(CORE_DEPS) \
	src/os/unix/ngx_setproctitle.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_setproctitle.o \
		src/os/unix/ngx_setproctitle.c


./builddir/src/os/unix/ngx_posix_init.o:	$(CORE_DEPS) \
	src/os/unix/ngx_posix_init.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_posix_init.o \
		src/os/unix/ngx_posix_init.c


./builddir/src/os/unix/ngx_user.o:	$(CORE_DEPS) \
	src/os/unix/ngx_user.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_user.o \
		src/os/unix/ngx_user.c


./builddir/src/os/unix/ngx_process_cycle.o:	$(CORE_DEPS) \
	src/os/unix/ngx_process_cycle.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_process_cycle.o \
		src/os/unix/ngx_process_cycle.c


./builddir/src/os/unix/ngx_linux_init.o:	$(CORE_DEPS) \
	src/os/unix/ngx_linux_init.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_linux_init.o \
		src/os/unix/ngx_linux_init.c


./builddir/src/event/modules/ngx_epoll_module.o:	$(CORE_DEPS) \
	src/event/modules/ngx_epoll_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/event/modules/ngx_epoll_module.o \
		src/event/modules/ngx_epoll_module.c


./builddir/src/os/unix/ngx_linux_sendfile_chain.o:	$(CORE_DEPS) \
	src/os/unix/ngx_linux_sendfile_chain.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/os/unix/ngx_linux_sendfile_chain.o \
		src/os/unix/ngx_linux_sendfile_chain.c


./builddir/src/event/ngx_event_openssl.o:	$(CORE_DEPS) \
	src/event/ngx_event_openssl.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/event/ngx_event_openssl.o \
		src/event/ngx_event_openssl.c


./builddir/src/core/ngx_regex.o:	$(CORE_DEPS) \
	src/core/ngx_regex.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) \
		-o ./builddir/src/core/ngx_regex.o \
		src/core/ngx_regex.c


./builddir/src/http/ngx_http.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/ngx_http.o \
		src/http/ngx_http.c


./builddir/src/http/ngx_http_core_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_core_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/ngx_http_core_module.o \
		src/http/ngx_http_core_module.c


./builddir/src/http/ngx_http_special_response.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_special_response.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/ngx_http_special_response.o \
		src/http/ngx_http_special_response.c


./builddir/src/http/ngx_http_request.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_request.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/ngx_http_request.o \
		src/http/ngx_http_request.c


./builddir/src/http/ngx_http_parse.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_parse.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/ngx_http_parse.o \
		src/http/ngx_http_parse.c


./builddir/src/http/ngx_http_header_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_header_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/ngx_http_header_filter_module.o \
		src/http/ngx_http_header_filter_module.c


./builddir/src/http/ngx_http_write_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_write_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/ngx_http_write_filter_module.o \
		src/http/ngx_http_write_filter_module.c


./builddir/src/http/ngx_http_copy_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_copy_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/ngx_http_copy_filter_module.o \
		src/http/ngx_http_copy_filter_module.c


./builddir/src/http/modules/ngx_http_log_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_log_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_log_module.o \
		src/http/modules/ngx_http_log_module.c


./builddir/src/http/ngx_http_request_body.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_request_body.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/ngx_http_request_body.o \
		src/http/ngx_http_request_body.c


./builddir/src/http/ngx_http_variables.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_variables.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/ngx_http_variables.o \
		src/http/ngx_http_variables.c


./builddir/src/http/ngx_http_script.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_script.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/ngx_http_script.o \
		src/http/ngx_http_script.c


./builddir/src/http/ngx_http_upstream.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_upstream.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/ngx_http_upstream.o \
		src/http/ngx_http_upstream.c


./builddir/src/http/ngx_http_upstream_round_robin.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_upstream_round_robin.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/ngx_http_upstream_round_robin.o \
		src/http/ngx_http_upstream_round_robin.c


./builddir/src/http/ngx_http_parse_time.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_parse_time.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/ngx_http_parse_time.o \
		src/http/ngx_http_parse_time.c


./builddir/src/http/modules/ngx_http_static_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_static_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_static_module.o \
		src/http/modules/ngx_http_static_module.c


./builddir/src/http/modules/ngx_http_index_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_index_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_index_module.o \
		src/http/modules/ngx_http_index_module.c


./builddir/src/http/modules/ngx_http_chunked_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_chunked_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_chunked_filter_module.o \
		src/http/modules/ngx_http_chunked_filter_module.c


./builddir/src/http/modules/ngx_http_range_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_range_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_range_filter_module.o \
		src/http/modules/ngx_http_range_filter_module.c


./builddir/src/http/modules/ngx_http_headers_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_headers_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_headers_filter_module.o \
		src/http/modules/ngx_http_headers_filter_module.c


./builddir/src/http/modules/ngx_http_not_modified_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_not_modified_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_not_modified_filter_module.o \
		src/http/modules/ngx_http_not_modified_filter_module.c


./builddir/src/http/ngx_http_busy_lock.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_busy_lock.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/ngx_http_busy_lock.o \
		src/http/ngx_http_busy_lock.c


./builddir/src/http/ngx_http_file_cache.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_file_cache.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/ngx_http_file_cache.o \
		src/http/ngx_http_file_cache.c


./builddir/src/http/modules/ngx_http_gzip_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_gzip_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_gzip_filter_module.o \
		src/http/modules/ngx_http_gzip_filter_module.c


./builddir/src/http/ngx_http_postpone_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/ngx_http_postpone_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/ngx_http_postpone_filter_module.o \
		src/http/ngx_http_postpone_filter_module.c


./builddir/src/http/modules/ngx_http_ssi_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_ssi_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_ssi_filter_module.o \
		src/http/modules/ngx_http_ssi_filter_module.c


./builddir/src/http/modules/ngx_http_charset_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_charset_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_charset_filter_module.o \
		src/http/modules/ngx_http_charset_filter_module.c


./builddir/src/http/modules/ngx_http_userid_filter_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_userid_filter_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_userid_filter_module.o \
		src/http/modules/ngx_http_userid_filter_module.c


./builddir/src/http/modules/ngx_http_autoindex_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_autoindex_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_autoindex_module.o \
		src/http/modules/ngx_http_autoindex_module.c


./builddir/src/http/modules/ngx_http_auth_basic_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_auth_basic_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_auth_basic_module.o \
		src/http/modules/ngx_http_auth_basic_module.c


./builddir/src/http/modules/ngx_http_access_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_access_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_access_module.o \
		src/http/modules/ngx_http_access_module.c


./builddir/src/http/modules/ngx_http_limit_conn_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_limit_conn_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_limit_conn_module.o \
		src/http/modules/ngx_http_limit_conn_module.c


./builddir/src/http/modules/ngx_http_limit_req_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_limit_req_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_limit_req_module.o \
		src/http/modules/ngx_http_limit_req_module.c


./builddir/src/http/modules/ngx_http_geo_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_geo_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_geo_module.o \
		src/http/modules/ngx_http_geo_module.c


./builddir/src/http/modules/ngx_http_map_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_map_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_map_module.o \
		src/http/modules/ngx_http_map_module.c


./builddir/src/http/modules/ngx_http_split_clients_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_split_clients_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_split_clients_module.o \
		src/http/modules/ngx_http_split_clients_module.c


./builddir/src/http/modules/ngx_http_referer_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_referer_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_referer_module.o \
		src/http/modules/ngx_http_referer_module.c


./builddir/src/http/modules/ngx_http_rewrite_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_rewrite_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_rewrite_module.o \
		src/http/modules/ngx_http_rewrite_module.c


./builddir/src/http/modules/ngx_http_proxy_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_proxy_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_proxy_module.o \
		src/http/modules/ngx_http_proxy_module.c


./builddir/src/http/modules/ngx_http_fastcgi_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_fastcgi_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_fastcgi_module.o \
		src/http/modules/ngx_http_fastcgi_module.c


./builddir/src/http/modules/ngx_http_uwsgi_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_uwsgi_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_uwsgi_module.o \
		src/http/modules/ngx_http_uwsgi_module.c


./builddir/src/http/modules/ngx_http_scgi_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_scgi_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_scgi_module.o \
		src/http/modules/ngx_http_scgi_module.c


./builddir/src/http/modules/ngx_http_memcached_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_memcached_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_memcached_module.o \
		src/http/modules/ngx_http_memcached_module.c


./builddir/src/http/modules/ngx_http_empty_gif_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_empty_gif_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_empty_gif_module.o \
		src/http/modules/ngx_http_empty_gif_module.c


./builddir/src/http/modules/ngx_http_browser_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_browser_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_browser_module.o \
		src/http/modules/ngx_http_browser_module.c


./builddir/src/http/modules/ngx_http_upstream_ip_hash_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_upstream_ip_hash_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_upstream_ip_hash_module.o \
		src/http/modules/ngx_http_upstream_ip_hash_module.c


./builddir/src/http/modules/ngx_http_upstream_least_conn_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_upstream_least_conn_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_upstream_least_conn_module.o \
		src/http/modules/ngx_http_upstream_least_conn_module.c


./builddir/src/http/modules/ngx_http_upstream_keepalive_module.o:	$(CORE_DEPS) $(HTTP_DEPS) \
	src/http/modules/ngx_http_upstream_keepalive_module.c
	$(CC) -c $(CFLAGS) $(CORE_INCS) $(HTTP_INCS) \
		-o ./builddir/src/http/modules/ngx_http_upstream_keepalive_module.o \
		src/http/modules/ngx_http_upstream_keepalive_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp.o \
		../nginx-rtmp-module/ngx_rtmp.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_init.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_init.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_init.o \
		../nginx-rtmp-module/ngx_rtmp_init.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_handshake.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_handshake.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_handshake.o \
		../nginx-rtmp-module/ngx_rtmp_handshake.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_handler.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_handler.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_handler.o \
		../nginx-rtmp-module/ngx_rtmp_handler.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_amf.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_amf.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_amf.o \
		../nginx-rtmp-module/ngx_rtmp_amf.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_send.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_send.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_send.o \
		../nginx-rtmp-module/ngx_rtmp_send.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_shared.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_shared.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_shared.o \
		../nginx-rtmp-module/ngx_rtmp_shared.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_eval.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_eval.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_eval.o \
		../nginx-rtmp-module/ngx_rtmp_eval.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_receive.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_receive.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_receive.o \
		../nginx-rtmp-module/ngx_rtmp_receive.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_core_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_core_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_core_module.o \
		../nginx-rtmp-module/ngx_rtmp_core_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_cmd_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_cmd_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_cmd_module.o \
		../nginx-rtmp-module/ngx_rtmp_cmd_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_codec_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_codec_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_codec_module.o \
		../nginx-rtmp-module/ngx_rtmp_codec_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_access_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_access_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_access_module.o \
		../nginx-rtmp-module/ngx_rtmp_access_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_record_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_record_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_record_module.o \
		../nginx-rtmp-module/ngx_rtmp_record_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_live_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_live_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_live_module.o \
		../nginx-rtmp-module/ngx_rtmp_live_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_play_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_play_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_play_module.o \
		../nginx-rtmp-module/ngx_rtmp_play_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_flv_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_flv_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_flv_module.o \
		../nginx-rtmp-module/ngx_rtmp_flv_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_mp4_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_mp4_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_mp4_module.o \
		../nginx-rtmp-module/ngx_rtmp_mp4_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_netcall_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_netcall_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_netcall_module.o \
		../nginx-rtmp-module/ngx_rtmp_netcall_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_stat_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_stat_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_stat_module.o \
		../nginx-rtmp-module/ngx_rtmp_stat_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_control_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_control_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_control_module.o \
		../nginx-rtmp-module/ngx_rtmp_control_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_relay_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_relay_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_relay_module.o \
		../nginx-rtmp-module/ngx_rtmp_relay_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_bandwidth.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_bandwidth.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_bandwidth.o \
		../nginx-rtmp-module/ngx_rtmp_bandwidth.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_exec_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_exec_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_exec_module.o \
		../nginx-rtmp-module/ngx_rtmp_exec_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_auto_push_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_auto_push_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_auto_push_module.o \
		../nginx-rtmp-module/ngx_rtmp_auto_push_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_notify_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_notify_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_notify_module.o \
		../nginx-rtmp-module/ngx_rtmp_notify_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_log_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_log_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_log_module.o \
		../nginx-rtmp-module/ngx_rtmp_log_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_limit_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_limit_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_limit_module.o \
		../nginx-rtmp-module/ngx_rtmp_limit_module.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_bitop.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_bitop.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_bitop.o \
		../nginx-rtmp-module/ngx_rtmp_bitop.c


./builddir/addon/nginx-rtmp-module/ngx_rtmp_proxy_protocol.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/ngx_rtmp_proxy_protocol.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/nginx-rtmp-module/ngx_rtmp_proxy_protocol.o \
		../nginx-rtmp-module/ngx_rtmp_proxy_protocol.c


./builddir/addon/hls/ngx_rtmp_hls_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/hls/ngx_rtmp_hls_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/hls/ngx_rtmp_hls_module.o \
		../nginx-rtmp-module/hls/ngx_rtmp_hls_module.c


./builddir/addon/dash/ngx_rtmp_dash_module.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/dash/ngx_rtmp_dash_module.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/dash/ngx_rtmp_dash_module.o \
		../nginx-rtmp-module/dash/ngx_rtmp_dash_module.c


./builddir/addon/hls/ngx_rtmp_mpegts.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/hls/ngx_rtmp_mpegts.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/hls/ngx_rtmp_mpegts.o \
		../nginx-rtmp-module/hls/ngx_rtmp_mpegts.c


./builddir/addon/dash/ngx_rtmp_mp4.o:	$(ADDON_DEPS) \
	../nginx-rtmp-module/dash/ngx_rtmp_mp4.c
	$(CC) -c $(CFLAGS)  $(ALL_INCS) \
		-o ./builddir/addon/dash/ngx_rtmp_mp4.o \
		../nginx-rtmp-module/dash/ngx_rtmp_mp4.c


manpage:	./builddir/nginx.8

./builddir/nginx.8:	man/nginx.8 ./builddir/ngx_auto_config.h
	sed -e "s|%%PREFIX%%|/usr/local/nginx|" \
		-e "s|%%PID_PATH%%|/usr/local/nginx/logs/nginx.pid|" \
		-e "s|%%CONF_PATH%%|/usr/local/nginx/conf/nginx.conf|" \
		-e "s|%%ERROR_LOG_PATH%%|/usr/local/nginx/logs/error.log|" \
		< man/nginx.8 > $@

install:	./builddir/nginx 		
	test -d '$(DESTDIR)/usr/local/nginx' || mkdir -p '$(DESTDIR)/usr/local/nginx'

	test -d '$(DESTDIR)/usr/local/nginx/sbin' 		|| mkdir -p '$(DESTDIR)/usr/local/nginx/sbin'
	test ! -f '$(DESTDIR)/usr/local/nginx/sbin/nginx' 		|| mv '$(DESTDIR)/usr/local/nginx/sbin/nginx' 			'$(DESTDIR)/usr/local/nginx/sbin/nginx.old'
	cp ./builddir/nginx '$(DESTDIR)/usr/local/nginx/sbin/nginx'

	test -d '$(DESTDIR)/usr/local/nginx/conf' 		|| mkdir -p '$(DESTDIR)/usr/local/nginx/conf'

	cp conf/koi-win '$(DESTDIR)/usr/local/nginx/conf'
	cp conf/koi-utf '$(DESTDIR)/usr/local/nginx/conf'
	cp conf/win-utf '$(DESTDIR)/usr/local/nginx/conf'

	test -f '$(DESTDIR)/usr/local/nginx/conf/mime.types' 		|| cp conf/mime.types '$(DESTDIR)/usr/local/nginx/conf'
	cp conf/mime.types '$(DESTDIR)/usr/local/nginx/conf/mime.types.default'

	test -f '$(DESTDIR)/usr/local/nginx/conf/fastcgi_params' 		|| cp conf/fastcgi_params '$(DESTDIR)/usr/local/nginx/conf'
	cp conf/fastcgi_params 		'$(DESTDIR)/usr/local/nginx/conf/fastcgi_params.default'

	test -f '$(DESTDIR)/usr/local/nginx/conf/fastcgi.conf' 		|| cp conf/fastcgi.conf '$(DESTDIR)/usr/local/nginx/conf'
	cp conf/fastcgi.conf '$(DESTDIR)/usr/local/nginx/conf/fastcgi.conf.default'

	test -f '$(DESTDIR)/usr/local/nginx/conf/uwsgi_params' 		|| cp conf/uwsgi_params '$(DESTDIR)/usr/local/nginx/conf'
	cp conf/uwsgi_params 		'$(DESTDIR)/usr/local/nginx/conf/uwsgi_params.default'

	test -f '$(DESTDIR)/usr/local/nginx/conf/scgi_params' 		|| cp conf/scgi_params '$(DESTDIR)/usr/local/nginx/conf'
	cp conf/scgi_params 		'$(DESTDIR)/usr/local/nginx/conf/scgi_params.default'

	test -f '$(DESTDIR)/usr/local/nginx/conf/nginx.conf' 		|| cp conf/nginx.conf '$(DESTDIR)/usr/local/nginx/conf/nginx.conf'
	cp conf/nginx.conf '$(DESTDIR)/usr/local/nginx/conf/nginx.conf.default'

	test -d '$(DESTDIR)/usr/local/nginx/logs' 		|| mkdir -p '$(DESTDIR)/usr/local/nginx/logs'

	test -d '$(DESTDIR)/usr/local/nginx/logs' || 		mkdir -p '$(DESTDIR)/usr/local/nginx/logs'

	test -d '$(DESTDIR)/usr/local/nginx/html' 		|| cp -R html '$(DESTDIR)/usr/local/nginx'

	test -d '$(DESTDIR)/usr/local/nginx/logs' || 		mkdir -p '$(DESTDIR)/usr/local/nginx/logs'
