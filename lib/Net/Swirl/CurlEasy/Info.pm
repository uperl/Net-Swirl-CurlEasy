package Net::Swirl::CurlEasy::Info {

  use warnings;
  use 5.020;

  # ABSTRACT: Full list of information supported by Net::Swirl::CurlEasy

  # NOTE: This document is autogenerated from the template
  # maint/tt/Info.pm.tt
  # Please see maint/README.md for details on updating.

=head1 SYNOPSIS

 my $scheme = $curl->getinfo('scheme');

=head1 DESCRIPTION

This document contains the full list of information that can be fetched via the
L<getinfo method|Net::Swirl::CurlEasy/getinfo>.

=begin stopwords

effective_url CURLINFO_EFFECTIVE_URL response_code CURLINFO_RESPONSE_CODE total_time CURLINFO_TOTAL_TIME namelookup_time CURLINFO_NAMELOOKUP_TIME connect_time CURLINFO_CONNECT_TIME pretransfer_time CURLINFO_PRETRANSFER_TIME size_upload CURLINFO_SIZE_UPLOAD size_upload_t CURLINFO_SIZE_UPLOAD_T size_download CURLINFO_SIZE_DOWNLOAD size_download_t CURLINFO_SIZE_DOWNLOAD_T speed_download CURLINFO_SPEED_DOWNLOAD speed_download_t CURLINFO_SPEED_DOWNLOAD_T speed_upload CURLINFO_SPEED_UPLOAD speed_upload_t CURLINFO_SPEED_UPLOAD_T header_size CURLINFO_HEADER_SIZE request_size CURLINFO_REQUEST_SIZE ssl_verifyresult CURLINFO_SSL_VERIFYRESULT filetime CURLINFO_FILETIME filetime_t CURLINFO_FILETIME_T content_length_download CURLINFO_CONTENT_LENGTH_DOWNLOAD content_length_download_t CURLINFO_CONTENT_LENGTH_DOWNLOAD_T content_length_upload CURLINFO_CONTENT_LENGTH_UPLOAD content_length_upload_t CURLINFO_CONTENT_LENGTH_UPLOAD_T starttransfer_time CURLINFO_STARTTRANSFER_TIME content_type CURLINFO_CONTENT_TYPE redirect_time CURLINFO_REDIRECT_TIME redirect_count CURLINFO_REDIRECT_COUNT private CURLINFO_PRIVATE http_connectcode CURLINFO_HTTP_CONNECTCODE httpauth_avail CURLINFO_HTTPAUTH_AVAIL proxyauth_avail CURLINFO_PROXYAUTH_AVAIL os_errno CURLINFO_OS_ERRNO num_connects CURLINFO_NUM_CONNECTS ssl_engines CURLINFO_SSL_ENGINES cookielist CURLINFO_COOKIELIST lastsocket CURLINFO_LASTSOCKET ftp_entry_path CURLINFO_FTP_ENTRY_PATH redirect_url CURLINFO_REDIRECT_URL primary_ip CURLINFO_PRIMARY_IP appconnect_time CURLINFO_APPCONNECT_TIME certinfo CURLINFO_CERTINFO condition_unmet CURLINFO_CONDITION_UNMET rtsp_session_id CURLINFO_RTSP_SESSION_ID rtsp_client_cseq CURLINFO_RTSP_CLIENT_CSEQ rtsp_server_cseq CURLINFO_RTSP_SERVER_CSEQ rtsp_cseq_recv CURLINFO_RTSP_CSEQ_RECV primary_port CURLINFO_PRIMARY_PORT local_ip CURLINFO_LOCAL_IP local_port CURLINFO_LOCAL_PORT tls_session CURLINFO_TLS_SESSION activesocket CURLINFO_ACTIVESOCKET tls_ssl_ptr CURLINFO_TLS_SSL_PTR http_version CURLINFO_HTTP_VERSION proxy_ssl_verifyresult CURLINFO_PROXY_SSL_VERIFYRESULT protocol CURLINFO_PROTOCOL scheme CURLINFO_SCHEME total_time_t CURLINFO_TOTAL_TIME_T namelookup_time_t CURLINFO_NAMELOOKUP_TIME_T connect_time_t CURLINFO_CONNECT_TIME_T pretransfer_time_t CURLINFO_PRETRANSFER_TIME_T starttransfer_time_t CURLINFO_STARTTRANSFER_TIME_T redirect_time_t CURLINFO_REDIRECT_TIME_T appconnect_time_t CURLINFO_APPCONNECT_TIME_T retry_after CURLINFO_RETRY_AFTER effective_method CURLINFO_EFFECTIVE_METHOD proxy_error CURLINFO_PROXY_ERROR referer CURLINFO_REFERER cainfo CURLINFO_CAINFO capath CURLINFO_CAPATH


=end stopwords

=head2 effective_url

 my $value = $getinfo('effective_url');

( L<CURLINFO_EFFECTIVE_URL|https://curl.se/libcurl/c/CURLINFO_EFFECTIVE_URL.html> )

=head2 response_code

 my $value = $getinfo('response_code');

( L<CURLINFO_RESPONSE_CODE|https://curl.se/libcurl/c/CURLINFO_RESPONSE_CODE.html> )

=head2 total_time

 my $value = $getinfo('total_time');

( L<CURLINFO_TOTAL_TIME|https://curl.se/libcurl/c/CURLINFO_TOTAL_TIME.html> )

=head2 namelookup_time

 my $value = $getinfo('namelookup_time');

( L<CURLINFO_NAMELOOKUP_TIME|https://curl.se/libcurl/c/CURLINFO_NAMELOOKUP_TIME.html> )

=head2 connect_time

 my $value = $getinfo('connect_time');

( L<CURLINFO_CONNECT_TIME|https://curl.se/libcurl/c/CURLINFO_CONNECT_TIME.html> )

=head2 pretransfer_time

 my $value = $getinfo('pretransfer_time');

( L<CURLINFO_PRETRANSFER_TIME|https://curl.se/libcurl/c/CURLINFO_PRETRANSFER_TIME.html> )

=head2 size_upload

 my $value = $getinfo('size_upload');

( L<CURLINFO_SIZE_UPLOAD|https://curl.se/libcurl/c/CURLINFO_SIZE_UPLOAD.html> )

=head2 size_upload_t

 my $value = $getinfo('size_upload_t');

( L<CURLINFO_SIZE_UPLOAD_T|https://curl.se/libcurl/c/CURLINFO_SIZE_UPLOAD_T.html> )

=head2 size_download

 my $value = $getinfo('size_download');

( L<CURLINFO_SIZE_DOWNLOAD|https://curl.se/libcurl/c/CURLINFO_SIZE_DOWNLOAD.html> )

=head2 size_download_t

 my $value = $getinfo('size_download_t');

( L<CURLINFO_SIZE_DOWNLOAD_T|https://curl.se/libcurl/c/CURLINFO_SIZE_DOWNLOAD_T.html> )

=head2 speed_download

 my $value = $getinfo('speed_download');

( L<CURLINFO_SPEED_DOWNLOAD|https://curl.se/libcurl/c/CURLINFO_SPEED_DOWNLOAD.html> )

=head2 speed_download_t

 my $value = $getinfo('speed_download_t');

( L<CURLINFO_SPEED_DOWNLOAD_T|https://curl.se/libcurl/c/CURLINFO_SPEED_DOWNLOAD_T.html> )

=head2 speed_upload

 my $value = $getinfo('speed_upload');

( L<CURLINFO_SPEED_UPLOAD|https://curl.se/libcurl/c/CURLINFO_SPEED_UPLOAD.html> )

=head2 speed_upload_t

 my $value = $getinfo('speed_upload_t');

( L<CURLINFO_SPEED_UPLOAD_T|https://curl.se/libcurl/c/CURLINFO_SPEED_UPLOAD_T.html> )

=head2 header_size

 my $value = $getinfo('header_size');

( L<CURLINFO_HEADER_SIZE|https://curl.se/libcurl/c/CURLINFO_HEADER_SIZE.html> )

=head2 request_size

 my $value = $getinfo('request_size');

( L<CURLINFO_REQUEST_SIZE|https://curl.se/libcurl/c/CURLINFO_REQUEST_SIZE.html> )

=head2 ssl_verifyresult

 my $value = $getinfo('ssl_verifyresult');

( L<CURLINFO_SSL_VERIFYRESULT|https://curl.se/libcurl/c/CURLINFO_SSL_VERIFYRESULT.html> )

=head2 filetime

 my $value = $getinfo('filetime');

( L<CURLINFO_FILETIME|https://curl.se/libcurl/c/CURLINFO_FILETIME.html> )

=head2 filetime_t

 my $value = $getinfo('filetime_t');

( L<CURLINFO_FILETIME_T|https://curl.se/libcurl/c/CURLINFO_FILETIME_T.html> )

=head2 content_length_download

 my $value = $getinfo('content_length_download');

( L<CURLINFO_CONTENT_LENGTH_DOWNLOAD|https://curl.se/libcurl/c/CURLINFO_CONTENT_LENGTH_DOWNLOAD.html> )

=head2 content_length_download_t

 my $value = $getinfo('content_length_download_t');

( L<CURLINFO_CONTENT_LENGTH_DOWNLOAD_T|https://curl.se/libcurl/c/CURLINFO_CONTENT_LENGTH_DOWNLOAD_T.html> )

=head2 content_length_upload

 my $value = $getinfo('content_length_upload');

( L<CURLINFO_CONTENT_LENGTH_UPLOAD|https://curl.se/libcurl/c/CURLINFO_CONTENT_LENGTH_UPLOAD.html> )

=head2 content_length_upload_t

 my $value = $getinfo('content_length_upload_t');

( L<CURLINFO_CONTENT_LENGTH_UPLOAD_T|https://curl.se/libcurl/c/CURLINFO_CONTENT_LENGTH_UPLOAD_T.html> )

=head2 starttransfer_time

 my $value = $getinfo('starttransfer_time');

( L<CURLINFO_STARTTRANSFER_TIME|https://curl.se/libcurl/c/CURLINFO_STARTTRANSFER_TIME.html> )

=head2 content_type

 my $value = $getinfo('content_type');

( L<CURLINFO_CONTENT_TYPE|https://curl.se/libcurl/c/CURLINFO_CONTENT_TYPE.html> )

=head2 redirect_time

 my $value = $getinfo('redirect_time');

( L<CURLINFO_REDIRECT_TIME|https://curl.se/libcurl/c/CURLINFO_REDIRECT_TIME.html> )

=head2 redirect_count

 my $value = $getinfo('redirect_count');

( L<CURLINFO_REDIRECT_COUNT|https://curl.se/libcurl/c/CURLINFO_REDIRECT_COUNT.html> )

=head2 private

 $curl->setopt( private => $data );
 my $data = $curl->getinfo( 'private' );

This field allows you to associate an arbitrary Perl data structure with the
L<Net::Swirl::CurlEasy> instance.  It isn't used by L<Net::Swirl::CurlEasy>
or C<libcurl> but may be useful for the application.

Note that in the C API this is a C<void *> pointer, but in this API it is a
Perl data structure.

( L<CURLINFO_PRIVATE|https://curl.se/libcurl/c/CURLINFO_PRIVATE.html> )

=head2 http_connectcode

 my $value = $getinfo('http_connectcode');

( L<CURLINFO_HTTP_CONNECTCODE|https://curl.se/libcurl/c/CURLINFO_HTTP_CONNECTCODE.html> )

=head2 httpauth_avail

 my $value = $getinfo('httpauth_avail');

( L<CURLINFO_HTTPAUTH_AVAIL|https://curl.se/libcurl/c/CURLINFO_HTTPAUTH_AVAIL.html> )

=head2 proxyauth_avail

 my $value = $getinfo('proxyauth_avail');

( L<CURLINFO_PROXYAUTH_AVAIL|https://curl.se/libcurl/c/CURLINFO_PROXYAUTH_AVAIL.html> )

=head2 os_errno

 my $value = $getinfo('os_errno');

( L<CURLINFO_OS_ERRNO|https://curl.se/libcurl/c/CURLINFO_OS_ERRNO.html> )

=head2 num_connects

 my $value = $getinfo('num_connects');

( L<CURLINFO_NUM_CONNECTS|https://curl.se/libcurl/c/CURLINFO_NUM_CONNECTS.html> )

=head2 ssl_engines

 my $value = $getinfo('ssl_engines');

( L<CURLINFO_SSL_ENGINES|https://curl.se/libcurl/c/CURLINFO_SSL_ENGINES.html> )

=head2 cookielist

 my $value = $getinfo('cookielist');

( L<CURLINFO_COOKIELIST|https://curl.se/libcurl/c/CURLINFO_COOKIELIST.html> )

=head2 lastsocket

 my $socket = $curl->getinfo('activesocket');

This is just an alias for L<activesocket|/activesocket>.  In the C API  this info is
deprecated because it doesn't work correctly on 64 bit Windows.  Because it was deprecated
before L<Net::Swirl::CurlEasy> was written, this Perl API just makes this an alias
instead.

( L<CURLINFO_LASTSOCKET|https://curl.se/libcurl/c/CURLINFO_LASTSOCKET.html> )

=head2 ftp_entry_path

 my $value = $getinfo('ftp_entry_path');

( L<CURLINFO_FTP_ENTRY_PATH|https://curl.se/libcurl/c/CURLINFO_FTP_ENTRY_PATH.html> )

=head2 redirect_url

 my $value = $getinfo('redirect_url');

( L<CURLINFO_REDIRECT_URL|https://curl.se/libcurl/c/CURLINFO_REDIRECT_URL.html> )

=head2 primary_ip

 my $value = $getinfo('primary_ip');

( L<CURLINFO_PRIMARY_IP|https://curl.se/libcurl/c/CURLINFO_PRIMARY_IP.html> )

=head2 appconnect_time

 my $value = $getinfo('appconnect_time');

( L<CURLINFO_APPCONNECT_TIME|https://curl.se/libcurl/c/CURLINFO_APPCONNECT_TIME.html> )

=head2 certinfo

 $curl->setopt(certinfo => 1);
      ->perform;
 my $certinfo = $curl->getinfo('certinfo');

For a TLS/SSL request, this will return information about the certificate chain, if you
set the L<certinfo option|Net::Swirl::CurlEasy::Options/certinfo>.  This will be returned
as list reference of list references.

( L<CURLINFO_CERTINFO|https://curl.se/libcurl/c/CURLINFO_CERTINFO.html> )

=head2 condition_unmet

 my $value = $getinfo('condition_unmet');

( L<CURLINFO_CONDITION_UNMET|https://curl.se/libcurl/c/CURLINFO_CONDITION_UNMET.html> )

=head2 rtsp_session_id

 my $value = $getinfo('rtsp_session_id');

( L<CURLINFO_RTSP_SESSION_ID|https://curl.se/libcurl/c/CURLINFO_RTSP_SESSION_ID.html> )

=head2 rtsp_client_cseq

 my $value = $getinfo('rtsp_client_cseq');

( L<CURLINFO_RTSP_CLIENT_CSEQ|https://curl.se/libcurl/c/CURLINFO_RTSP_CLIENT_CSEQ.html> )

=head2 rtsp_server_cseq

 my $value = $getinfo('rtsp_server_cseq');

( L<CURLINFO_RTSP_SERVER_CSEQ|https://curl.se/libcurl/c/CURLINFO_RTSP_SERVER_CSEQ.html> )

=head2 rtsp_cseq_recv

 my $value = $getinfo('rtsp_cseq_recv');

( L<CURLINFO_RTSP_CSEQ_RECV|https://curl.se/libcurl/c/CURLINFO_RTSP_CSEQ_RECV.html> )

=head2 primary_port

 my $value = $getinfo('primary_port');

( L<CURLINFO_PRIMARY_PORT|https://curl.se/libcurl/c/CURLINFO_PRIMARY_PORT.html> )

=head2 local_ip

 my $value = $getinfo('local_ip');

( L<CURLINFO_LOCAL_IP|https://curl.se/libcurl/c/CURLINFO_LOCAL_IP.html> )

=head2 local_port

 my $value = $getinfo('local_port');

( L<CURLINFO_LOCAL_PORT|https://curl.se/libcurl/c/CURLINFO_LOCAL_PORT.html> )

=head2 tls_session

 my $info = $curl->getinfo('tls_session');
 my $backend = $info->backend;
 my $internals = $info->internals;  # possibly implemented in a future version.

The C API for C<libcurl> returns an integer code for the SSL/TSL backend, and an internal
pointer which can be used to access get additional information about the session.  For now
only the former is available via this Perl API.  In the future there may be an interface
to the latter as well.

The meaning of the integer codes of the C<$backend> can be found here:
L<Net::Swirl::CurlEasy::Const/curl_sslbackend>.

The actual class that implements C<$info> may change in the future (including the class
name), but these two methods should be available (even if one just throws an exception).

( L<CURLINFO_TLS_SESSION|https://curl.se/libcurl/c/CURLINFO_TLS_SESSION.html> )

=head2 activesocket

 my $socket = $curl->getinfo('activesocket');

Returns the most recently active socket used for the transfer connection.  Will throw
an exception if the socket is no longer valid.  The active socket is typically only useful
in combination with L<connect_only|Net::Swirl::CurlEasy/connect_only>, which skips the
transfer phase, allowing you to use the socket to implement custom protocols.

( L<CURLINFO_ACTIVESOCKET|https://curl.se/libcurl/c/CURLINFO_ACTIVESOCKET.html> )

=head2 tls_ssl_ptr

 my $info = $curl->getinfo('tls_ssl_ptr');
 my $backend = $info->backend;
 my $internals = $info->internals;  # possibly implemented in a future version.

The C API for C<libcurl> returns an integer code for the SSL/TSL backend, and an internal
pointer which can be used to access get additional information about the session.  For now
only the former is available via this Perl API.  In the future there may be an interface
to the latter as well.

The meaning of the integer codes of the C<$backend> can be found here:
L<Net::Swirl::CurlEasy::Const/curl_sslbackend>.

Generally the L<tls_session option|/tls_session> is preferred when using the C API, but
until C<internals> is implemented it doesn't make any difference for the Perl API.

The actual class that implements C<$info> may change in the future (including the class
name), but these two methods should be available (even if one just throws an exception).

( L<CURLINFO_TLS_SSL_PTR|https://curl.se/libcurl/c/CURLINFO_TLS_SSL_PTR.html> )

=head2 http_version

 my $value = $getinfo('http_version');

( L<CURLINFO_HTTP_VERSION|https://curl.se/libcurl/c/CURLINFO_HTTP_VERSION.html> )

=head2 proxy_ssl_verifyresult

 my $value = $getinfo('proxy_ssl_verifyresult');

( L<CURLINFO_PROXY_SSL_VERIFYRESULT|https://curl.se/libcurl/c/CURLINFO_PROXY_SSL_VERIFYRESULT.html> )

=head2 protocol

 my $value = $getinfo('protocol');

( L<CURLINFO_PROTOCOL|https://curl.se/libcurl/c/CURLINFO_PROTOCOL.html> )

=head2 scheme

 my $scheme = $curl->getinfo('scheme');

URL scheme used for the most recent connection done.

( L<CURLINFO_SCHEME|https://curl.se/libcurl/c/CURLINFO_SCHEME.html> )

=head2 total_time_t

 my $value = $getinfo('total_time_t');

( L<CURLINFO_TOTAL_TIME_T|https://curl.se/libcurl/c/CURLINFO_TOTAL_TIME_T.html> )

=head2 namelookup_time_t

 my $value = $getinfo('namelookup_time_t');

( L<CURLINFO_NAMELOOKUP_TIME_T|https://curl.se/libcurl/c/CURLINFO_NAMELOOKUP_TIME_T.html> )

=head2 connect_time_t

 my $value = $getinfo('connect_time_t');

( L<CURLINFO_CONNECT_TIME_T|https://curl.se/libcurl/c/CURLINFO_CONNECT_TIME_T.html> )

=head2 pretransfer_time_t

 my $value = $getinfo('pretransfer_time_t');

( L<CURLINFO_PRETRANSFER_TIME_T|https://curl.se/libcurl/c/CURLINFO_PRETRANSFER_TIME_T.html> )

=head2 starttransfer_time_t

 my $value = $getinfo('starttransfer_time_t');

( L<CURLINFO_STARTTRANSFER_TIME_T|https://curl.se/libcurl/c/CURLINFO_STARTTRANSFER_TIME_T.html> )

=head2 redirect_time_t

 my $value = $getinfo('redirect_time_t');

( L<CURLINFO_REDIRECT_TIME_T|https://curl.se/libcurl/c/CURLINFO_REDIRECT_TIME_T.html> )

=head2 appconnect_time_t

 my $value = $getinfo('appconnect_time_t');

( L<CURLINFO_APPCONNECT_TIME_T|https://curl.se/libcurl/c/CURLINFO_APPCONNECT_TIME_T.html> )

=head2 retry_after

 my $value = $getinfo('retry_after');

( L<CURLINFO_RETRY_AFTER|https://curl.se/libcurl/c/CURLINFO_RETRY_AFTER.html> )

=head2 effective_method

 my $value = $getinfo('effective_method');

( L<CURLINFO_EFFECTIVE_METHOD|https://curl.se/libcurl/c/CURLINFO_EFFECTIVE_METHOD.html> )

=head2 proxy_error

 my $value = $getinfo('proxy_error');

( L<CURLINFO_PROXY_ERROR|https://curl.se/libcurl/c/CURLINFO_PROXY_ERROR.html> )

=head2 referer

 my $value = $getinfo('referer');

( L<CURLINFO_REFERER|https://curl.se/libcurl/c/CURLINFO_REFERER.html> )

=head2 cainfo

 my $value = $getinfo('cainfo');

( L<CURLINFO_CAINFO|https://curl.se/libcurl/c/CURLINFO_CAINFO.html> )

=head2 capath

 my $value = $getinfo('capath');

( L<CURLINFO_CAPATH|https://curl.se/libcurl/c/CURLINFO_CAPATH.html> )

=cut

  package Net::Swirl::CurlEasy {
    our %info = (%info,
      effective_url => [ 1048577, \&_getinfo_string ],
      response_code => [ 2097154, \&_getinfo_long ],
      total_time => [ 3145731, \&_getinfo_double ],
      namelookup_time => [ 3145732, \&_getinfo_double ],
      connect_time => [ 3145733, \&_getinfo_double ],
      pretransfer_time => [ 3145734, \&_getinfo_double ],
      size_upload => [ 3145735, \&_getinfo_double ],
      size_upload_t => [ 6291463, \&_getinfo_off_t ],
      size_download => [ 3145736, \&_getinfo_double ],
      size_download_t => [ 6291464, \&_getinfo_off_t ],
      speed_download => [ 3145737, \&_getinfo_double ],
      speed_download_t => [ 6291465, \&_getinfo_off_t ],
      speed_upload => [ 3145738, \&_getinfo_double ],
      speed_upload_t => [ 6291466, \&_getinfo_off_t ],
      header_size => [ 2097163, \&_getinfo_long ],
      request_size => [ 2097164, \&_getinfo_long ],
      ssl_verifyresult => [ 2097165, \&_getinfo_long ],
      filetime => [ 2097166, \&_getinfo_long ],
      filetime_t => [ 6291470, \&_getinfo_off_t ],
      content_length_download => [ 3145743, \&_getinfo_double ],
      content_length_download_t => [ 6291471, \&_getinfo_off_t ],
      content_length_upload => [ 3145744, \&_getinfo_double ],
      content_length_upload_t => [ 6291472, \&_getinfo_off_t ],
      starttransfer_time => [ 3145745, \&_getinfo_double ],
      content_type => [ 1048594, \&_getinfo_string ],
      redirect_time => [ 3145747, \&_getinfo_double ],
      redirect_count => [ 2097172, \&_getinfo_long ],
      http_connectcode => [ 2097174, \&_getinfo_long ],
      httpauth_avail => [ 2097175, \&_getinfo_long ],
      proxyauth_avail => [ 2097176, \&_getinfo_long ],
      os_errno => [ 2097177, \&_getinfo_long ],
      num_connects => [ 2097178, \&_getinfo_long ],
      ssl_engines => [ 4194331, \&_getinfo_slist ],
      cookielist => [ 4194332, \&_getinfo_slist ],
      ftp_entry_path => [ 1048606, \&_getinfo_string ],
      redirect_url => [ 1048607, \&_getinfo_string ],
      primary_ip => [ 1048608, \&_getinfo_string ],
      appconnect_time => [ 3145761, \&_getinfo_double ],
      condition_unmet => [ 2097187, \&_getinfo_long ],
      rtsp_session_id => [ 1048612, \&_getinfo_string ],
      rtsp_client_cseq => [ 2097189, \&_getinfo_long ],
      rtsp_server_cseq => [ 2097190, \&_getinfo_long ],
      rtsp_cseq_recv => [ 2097191, \&_getinfo_long ],
      primary_port => [ 2097192, \&_getinfo_long ],
      local_ip => [ 1048617, \&_getinfo_string ],
      local_port => [ 2097194, \&_getinfo_long ],
      http_version => [ 2097198, \&_getinfo_long ],
      proxy_ssl_verifyresult => [ 2097199, \&_getinfo_long ],
      protocol => [ 2097200, \&_getinfo_long ],
      scheme => [ 1048625, \&_getinfo_string ],
      total_time_t => [ 6291506, \&_getinfo_off_t ],
      namelookup_time_t => [ 6291507, \&_getinfo_off_t ],
      connect_time_t => [ 6291508, \&_getinfo_off_t ],
      pretransfer_time_t => [ 6291509, \&_getinfo_off_t ],
      starttransfer_time_t => [ 6291510, \&_getinfo_off_t ],
      redirect_time_t => [ 6291511, \&_getinfo_off_t ],
      appconnect_time_t => [ 6291512, \&_getinfo_off_t ],
      retry_after => [ 6291513, \&_getinfo_off_t ],
      effective_method => [ 1048634, \&_getinfo_string ],
      proxy_error => [ 2097211, \&_getinfo_long ],
      referer => [ 1048636, \&_getinfo_string ],
      cainfo => [ 1048637, \&_getinfo_string ],
      capath => [ 1048638, \&_getinfo_string ],
    );
  }
}

1;

__END__

=head1 SEE ALSO

=over 4

=item L<Net::Swirl::CurlEasy>

Main documentation for the Swirl C<curl> "easy" API.

=item L<Net::Swirl::CurlEasy::Const>

Full list of constants used by L<Net::Swirl::CurlEasy>.

=item L<Net::Swirl::CurlEasy::Options>

Full list of options available to this API.

=back

=cut
