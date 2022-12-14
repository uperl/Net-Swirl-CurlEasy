package Net::Swirl::CurlEasy::Const {

  use warnings;
  use 5.020;
  use Exporter qw( import );
  use constant {
    CURLE_OK => 0,
    CURLE_UNSUPPORTED_PROTOCOL => 1,
    CURLE_FAILED_INIT => 2,
    CURLE_URL_MALFORMAT => 3,
    CURLE_NOT_BUILT_IN => 4,
    CURLE_COULDNT_RESOLVE_PROXY => 5,
    CURLE_COULDNT_RESOLVE_HOST => 6,
    CURLE_COULDNT_CONNECT => 7,
    CURLE_WEIRD_SERVER_REPLY => 8,
    CURLE_REMOTE_ACCESS_DENIED => 9,
    CURLE_FTP_ACCEPT_FAILED => 10,
    CURLE_FTP_WEIRD_PASS_REPLY => 11,
    CURLE_FTP_ACCEPT_TIMEOUT => 12,
    CURLE_FTP_WEIRD_PASV_REPLY => 13,
    CURLE_FTP_WEIRD_227_FORMAT => 14,
    CURLE_FTP_CANT_GET_HOST => 15,
    CURLE_HTTP2 => 16,
    CURLE_FTP_COULDNT_SET_TYPE => 17,
    CURLE_PARTIAL_FILE => 18,
    CURLE_FTP_COULDNT_RETR_FILE => 19,
    CURLE_OBSOLETE20 => 20,
    CURLE_QUOTE_ERROR => 21,
    CURLE_HTTP_RETURNED_ERROR => 22,
    CURLE_WRITE_ERROR => 23,
    CURLE_OBSOLETE24 => 24,
    CURLE_UPLOAD_FAILED => 25,
    CURLE_READ_ERROR => 26,
    CURLE_OUT_OF_MEMORY => 27,
    CURLE_OPERATION_TIMEDOUT => 28,
    CURLE_OBSOLETE29 => 29,
    CURLE_FTP_PORT_FAILED => 30,
    CURLE_FTP_COULDNT_USE_REST => 31,
    CURLE_OBSOLETE32 => 32,
    CURLE_RANGE_ERROR => 33,
    CURLE_HTTP_POST_ERROR => 34,
    CURLE_SSL_CONNECT_ERROR => 35,
    CURLE_BAD_DOWNLOAD_RESUME => 36,
    CURLE_FILE_COULDNT_READ_FILE => 37,
    CURLE_LDAP_CANNOT_BIND => 38,
    CURLE_LDAP_SEARCH_FAILED => 39,
    CURLE_OBSOLETE40 => 40,
    CURLE_FUNCTION_NOT_FOUND => 41,
    CURLE_ABORTED_BY_CALLBACK => 42,
    CURLE_BAD_FUNCTION_ARGUMENT => 43,
    CURLE_OBSOLETE44 => 44,
    CURLE_INTERFACE_FAILED => 45,
    CURLE_OBSOLETE46 => 46,
    CURLE_TOO_MANY_REDIRECTS => 47,
    CURLE_UNKNOWN_OPTION => 48,
    CURLE_SETOPT_OPTION_SYNTAX => 49,
    CURLE_OBSOLETE50 => 50,
    CURLE_OBSOLETE51 => 51,
    CURLE_GOT_NOTHING => 52,
    CURLE_SSL_ENGINE_NOTFOUND => 53,
    CURLE_SSL_ENGINE_SETFAILED => 54,
    CURLE_SEND_ERROR => 55,
    CURLE_RECV_ERROR => 56,
    CURLE_OBSOLETE57 => 57,
    CURLE_SSL_CERTPROBLEM => 58,
    CURLE_SSL_CIPHER => 59,
    CURLE_PEER_FAILED_VERIFICATION => 60,
    CURLE_BAD_CONTENT_ENCODING => 61,
    CURLE_OBSOLETE62 => 62,
    CURLE_FILESIZE_EXCEEDED => 63,
    CURLE_USE_SSL_FAILED => 64,
    CURLE_SEND_FAIL_REWIND => 65,
    CURLE_SSL_ENGINE_INITFAILED => 66,
    CURLE_LOGIN_DENIED => 67,
    CURLE_TFTP_NOTFOUND => 68,
    CURLE_TFTP_PERM => 69,
    CURLE_REMOTE_DISK_FULL => 70,
    CURLE_TFTP_ILLEGAL => 71,
    CURLE_TFTP_UNKNOWNID => 72,
    CURLE_REMOTE_FILE_EXISTS => 73,
    CURLE_TFTP_NOSUCHUSER => 74,
    CURLE_OBSOLETE75 => 75,
    CURLE_OBSOLETE76 => 76,
    CURLE_SSL_CACERT_BADFILE => 77,
    CURLE_REMOTE_FILE_NOT_FOUND => 78,
    CURLE_SSH => 79,
    CURLE_SSL_SHUTDOWN_FAILED => 80,
    CURLE_AGAIN => 81,
    CURLE_SSL_CRL_BADFILE => 82,
    CURLE_SSL_ISSUER_ERROR => 83,
    CURLE_FTP_PRET_FAILED => 84,
    CURLE_RTSP_CSEQ_ERROR => 85,
    CURLE_RTSP_SESSION_ERROR => 86,
    CURLE_FTP_BAD_FILE_LIST => 87,
    CURLE_CHUNK_FAILED => 88,
    CURLE_NO_CONNECTION_AVAILABLE => 89,
    CURLE_SSL_PINNEDPUBKEYNOTMATCH => 90,
    CURLE_SSL_INVALIDCERTSTATUS => 91,
    CURLE_HTTP2_STREAM => 92,
    CURLE_RECURSIVE_API_CALL => 93,
    CURLE_AUTH_ERROR => 94,
    CURLE_HTTP3 => 95,
    CURLE_QUIC_CONNECT_ERROR => 96,
    CURLE_PROXY => 97,
    CURLE_SSL_CLIENTCERT => 98,
    CURLE_UNRECOVERABLE_POLL => 99,
    CURLSSLBACKEND_NONE => 0,
    CURLSSLBACKEND_OPENSSL => 1,
    CURLSSLBACKEND_GNUTLS => 2,
    CURLSSLBACKEND_NSS => 3,
    CURLSSLBACKEND_OBSOLETE4 => 4,
    CURLSSLBACKEND_GSKIT => 5,
    CURLSSLBACKEND_POLARSSL => 6,
    CURLSSLBACKEND_WOLFSSL => 7,
    CURLSSLBACKEND_SCHANNEL => 8,
    CURLSSLBACKEND_SECURETRANSPORT => 9,
    CURLSSLBACKEND_AXTLS => 10,
    CURLSSLBACKEND_MBEDTLS => 11,
    CURLSSLBACKEND_MESALINK => 12,
    CURLSSLBACKEND_BEARSSL => 13,
    CURLSSLBACKEND_RUSTLS => 14,
    CURLPAUSE_ALL => 5,
    CURLPAUSE_CONT => 0,
    CURLPAUSE_RECV => 1,
    CURLPAUSE_RECV_CONT => 0,
    CURLPAUSE_SEND => 4,
    CURLPAUSE_SEND_CONT => 0,
  };

  # ABSTRACT: Constants used by Net::Swirl::CurlEasy

  # NOTE: This document is autogenerated from the template
  # maint/tt/Const.pm.tt
  # Please see maint/README.md for details on updating.

  our @EXPORT_OK;
  our %EXPORT_TAGS;

  push @EXPORT_OK, grep /^(CURLE_|CURLPAUSE_)/, keys %Net::Swirl::CurlEasy::Const::;

  $EXPORT_TAGS{all}       = \@EXPORT_OK;
  $EXPORT_TAGS{errorcode} = [ grep /^CURLE_/, @EXPORT_OK ];
  $EXPORT_TAGS{pause}     = [ grep /^CURLPAUSE_/, @EXPORT_OK ];

};

1;

__END__

=head1 SYNOPSIS

 use Net::Swirl::CurlEasy::Const qw( :all );

=head1 DESCRIPTION

This document contains the full list of constants that can be used with L<Net::Swirl::CurlEasy>.
This is a subset of constants used by the C<libcurl> C API, because many constants have been
converted into more convenient interfaces.

=begin stopwords

CURLE_OKCURLE_UNSUPPORTED_PROTOCOLCURLE_FAILED_INITCURLE_URL_MALFORMATCURLE_NOT_BUILT_INCURLE_COULDNT_RESOLVE_PROXYCURLE_COULDNT_RESOLVE_HOSTCURLE_COULDNT_CONNECTCURLE_WEIRD_SERVER_REPLYCURLE_REMOTE_ACCESS_DENIEDCURLE_FTP_ACCEPT_FAILEDCURLE_FTP_WEIRD_PASS_REPLYCURLE_FTP_ACCEPT_TIMEOUTCURLE_FTP_WEIRD_PASV_REPLYCURLE_FTP_WEIRD_227_FORMATCURLE_FTP_CANT_GET_HOSTCURLE_HTTP2CURLE_FTP_COULDNT_SET_TYPECURLE_PARTIAL_FILECURLE_FTP_COULDNT_RETR_FILECURLE_OBSOLETE20CURLE_QUOTE_ERRORCURLE_HTTP_RETURNED_ERRORCURLE_WRITE_ERRORCURLE_OBSOLETE24CURLE_UPLOAD_FAILEDCURLE_READ_ERRORCURLE_OUT_OF_MEMORYCURLE_OPERATION_TIMEDOUTCURLE_OBSOLETE29CURLE_FTP_PORT_FAILEDCURLE_FTP_COULDNT_USE_RESTCURLE_OBSOLETE32CURLE_RANGE_ERRORCURLE_HTTP_POST_ERRORCURLE_SSL_CONNECT_ERRORCURLE_BAD_DOWNLOAD_RESUMECURLE_FILE_COULDNT_READ_FILECURLE_LDAP_CANNOT_BINDCURLE_LDAP_SEARCH_FAILEDCURLE_OBSOLETE40CURLE_FUNCTION_NOT_FOUNDCURLE_ABORTED_BY_CALLBACKCURLE_BAD_FUNCTION_ARGUMENTCURLE_OBSOLETE44CURLE_INTERFACE_FAILEDCURLE_OBSOLETE46CURLE_TOO_MANY_REDIRECTSCURLE_UNKNOWN_OPTIONCURLE_SETOPT_OPTION_SYNTAXCURLE_OBSOLETE50CURLE_OBSOLETE51CURLE_GOT_NOTHINGCURLE_SSL_ENGINE_NOTFOUNDCURLE_SSL_ENGINE_SETFAILEDCURLE_SEND_ERRORCURLE_RECV_ERRORCURLE_OBSOLETE57CURLE_SSL_CERTPROBLEMCURLE_SSL_CIPHERCURLE_PEER_FAILED_VERIFICATIONCURLE_BAD_CONTENT_ENCODINGCURLE_OBSOLETE62CURLE_FILESIZE_EXCEEDEDCURLE_USE_SSL_FAILEDCURLE_SEND_FAIL_REWINDCURLE_SSL_ENGINE_INITFAILEDCURLE_LOGIN_DENIEDCURLE_TFTP_NOTFOUNDCURLE_TFTP_PERMCURLE_REMOTE_DISK_FULLCURLE_TFTP_ILLEGALCURLE_TFTP_UNKNOWNIDCURLE_REMOTE_FILE_EXISTSCURLE_TFTP_NOSUCHUSERCURLE_OBSOLETE75CURLE_OBSOLETE76CURLE_SSL_CACERT_BADFILECURLE_REMOTE_FILE_NOT_FOUNDCURLE_SSHCURLE_SSL_SHUTDOWN_FAILEDCURLE_AGAINCURLE_SSL_CRL_BADFILECURLE_SSL_ISSUER_ERRORCURLE_FTP_PRET_FAILEDCURLE_RTSP_CSEQ_ERRORCURLE_RTSP_SESSION_ERRORCURLE_FTP_BAD_FILE_LISTCURLE_CHUNK_FAILEDCURLE_NO_CONNECTION_AVAILABLECURLE_SSL_PINNEDPUBKEYNOTMATCHCURLE_SSL_INVALIDCERTSTATUSCURLE_HTTP2_STREAMCURLE_RECURSIVE_API_CALLCURLE_AUTH_ERRORCURLE_HTTP3CURLE_QUIC_CONNECT_ERRORCURLE_PROXYCURLE_SSL_CLIENTCERTCURLE_UNRECOVERABLE_POLLCURLSSLBACKEND_NONECURLSSLBACKEND_OPENSSLCURLSSLBACKEND_GNUTLSCURLSSLBACKEND_NSSCURLSSLBACKEND_OBSOLETE4CURLSSLBACKEND_GSKITCURLSSLBACKEND_POLARSSLCURLSSLBACKEND_WOLFSSLCURLSSLBACKEND_SCHANNELCURLSSLBACKEND_SECURETRANSPORTCURLSSLBACKEND_AXTLSCURLSSLBACKEND_MBEDTLSCURLSSLBACKEND_MESALINKCURLSSLBACKEND_BEARSSLCURLSSLBACKEND_RUSTLSCURLPAUSE_ALLCURLPAUSE_CONTCURLPAUSE_RECVCURLPAUSE_RECV_CONTCURLPAUSE_SENDCURLPAUSE_SEND_CONT

=end stopwords

=head2 CURLcode

To import all of these, use the tag C<:errorcode>.
For details on each constant see L<https://curl.se/libcurl/c/libcurl-errors.html>.

=over 4

=item C<CURLE_OK>

=item C<CURLE_UNSUPPORTED_PROTOCOL>

=item C<CURLE_FAILED_INIT>

=item C<CURLE_URL_MALFORMAT>

=item C<CURLE_NOT_BUILT_IN>

=item C<CURLE_COULDNT_RESOLVE_PROXY>

=item C<CURLE_COULDNT_RESOLVE_HOST>

=item C<CURLE_COULDNT_CONNECT>

=item C<CURLE_WEIRD_SERVER_REPLY>

=item C<CURLE_REMOTE_ACCESS_DENIED>

=item C<CURLE_FTP_ACCEPT_FAILED>

=item C<CURLE_FTP_WEIRD_PASS_REPLY>

=item C<CURLE_FTP_ACCEPT_TIMEOUT>

=item C<CURLE_FTP_WEIRD_PASV_REPLY>

=item C<CURLE_FTP_WEIRD_227_FORMAT>

=item C<CURLE_FTP_CANT_GET_HOST>

=item C<CURLE_HTTP2>

=item C<CURLE_FTP_COULDNT_SET_TYPE>

=item C<CURLE_PARTIAL_FILE>

=item C<CURLE_FTP_COULDNT_RETR_FILE>

=item C<CURLE_OBSOLETE20>

=item C<CURLE_QUOTE_ERROR>

=item C<CURLE_HTTP_RETURNED_ERROR>

=item C<CURLE_WRITE_ERROR>

=item C<CURLE_OBSOLETE24>

=item C<CURLE_UPLOAD_FAILED>

=item C<CURLE_READ_ERROR>

=item C<CURLE_OUT_OF_MEMORY>

=item C<CURLE_OPERATION_TIMEDOUT>

=item C<CURLE_OBSOLETE29>

=item C<CURLE_FTP_PORT_FAILED>

=item C<CURLE_FTP_COULDNT_USE_REST>

=item C<CURLE_OBSOLETE32>

=item C<CURLE_RANGE_ERROR>

=item C<CURLE_HTTP_POST_ERROR>

=item C<CURLE_SSL_CONNECT_ERROR>

=item C<CURLE_BAD_DOWNLOAD_RESUME>

=item C<CURLE_FILE_COULDNT_READ_FILE>

=item C<CURLE_LDAP_CANNOT_BIND>

=item C<CURLE_LDAP_SEARCH_FAILED>

=item C<CURLE_OBSOLETE40>

=item C<CURLE_FUNCTION_NOT_FOUND>

=item C<CURLE_ABORTED_BY_CALLBACK>

=item C<CURLE_BAD_FUNCTION_ARGUMENT>

=item C<CURLE_OBSOLETE44>

=item C<CURLE_INTERFACE_FAILED>

=item C<CURLE_OBSOLETE46>

=item C<CURLE_TOO_MANY_REDIRECTS>

=item C<CURLE_UNKNOWN_OPTION>

=item C<CURLE_SETOPT_OPTION_SYNTAX>

=item C<CURLE_OBSOLETE50>

=item C<CURLE_OBSOLETE51>

=item C<CURLE_GOT_NOTHING>

=item C<CURLE_SSL_ENGINE_NOTFOUND>

=item C<CURLE_SSL_ENGINE_SETFAILED>

=item C<CURLE_SEND_ERROR>

=item C<CURLE_RECV_ERROR>

=item C<CURLE_OBSOLETE57>

=item C<CURLE_SSL_CERTPROBLEM>

=item C<CURLE_SSL_CIPHER>

=item C<CURLE_PEER_FAILED_VERIFICATION>

=item C<CURLE_BAD_CONTENT_ENCODING>

=item C<CURLE_OBSOLETE62>

=item C<CURLE_FILESIZE_EXCEEDED>

=item C<CURLE_USE_SSL_FAILED>

=item C<CURLE_SEND_FAIL_REWIND>

=item C<CURLE_SSL_ENGINE_INITFAILED>

=item C<CURLE_LOGIN_DENIED>

=item C<CURLE_TFTP_NOTFOUND>

=item C<CURLE_TFTP_PERM>

=item C<CURLE_REMOTE_DISK_FULL>

=item C<CURLE_TFTP_ILLEGAL>

=item C<CURLE_TFTP_UNKNOWNID>

=item C<CURLE_REMOTE_FILE_EXISTS>

=item C<CURLE_TFTP_NOSUCHUSER>

=item C<CURLE_OBSOLETE75>

=item C<CURLE_OBSOLETE76>

=item C<CURLE_SSL_CACERT_BADFILE>

=item C<CURLE_REMOTE_FILE_NOT_FOUND>

=item C<CURLE_SSH>

=item C<CURLE_SSL_SHUTDOWN_FAILED>

=item C<CURLE_AGAIN>

=item C<CURLE_SSL_CRL_BADFILE>

=item C<CURLE_SSL_ISSUER_ERROR>

=item C<CURLE_FTP_PRET_FAILED>

=item C<CURLE_RTSP_CSEQ_ERROR>

=item C<CURLE_RTSP_SESSION_ERROR>

=item C<CURLE_FTP_BAD_FILE_LIST>

=item C<CURLE_CHUNK_FAILED>

=item C<CURLE_NO_CONNECTION_AVAILABLE>

=item C<CURLE_SSL_PINNEDPUBKEYNOTMATCH>

=item C<CURLE_SSL_INVALIDCERTSTATUS>

=item C<CURLE_HTTP2_STREAM>

=item C<CURLE_RECURSIVE_API_CALL>

=item C<CURLE_AUTH_ERROR>

=item C<CURLE_HTTP3>

=item C<CURLE_QUIC_CONNECT_ERROR>

=item C<CURLE_PROXY>

=item C<CURLE_SSL_CLIENTCERT>

=item C<CURLE_UNRECOVERABLE_POLL>

=back

=head2 curl_sslbackend

To import all of these, use the tag C<:ssl_backend>.
For details on each constant see L<https://curl.se/libcurl/c/CURLINFO_TLS_SSL_PTR.html>.

=over 4

=item C<CURLSSLBACKEND_NONE>

=item C<CURLSSLBACKEND_OPENSSL>

=item C<CURLSSLBACKEND_GNUTLS>

=item C<CURLSSLBACKEND_NSS>

=item C<CURLSSLBACKEND_OBSOLETE4>

=item C<CURLSSLBACKEND_GSKIT>

=item C<CURLSSLBACKEND_POLARSSL>

=item C<CURLSSLBACKEND_WOLFSSL>

=item C<CURLSSLBACKEND_SCHANNEL>

=item C<CURLSSLBACKEND_SECURETRANSPORT>

=item C<CURLSSLBACKEND_AXTLS>

=item C<CURLSSLBACKEND_MBEDTLS>

=item C<CURLSSLBACKEND_MESALINK>

=item C<CURLSSLBACKEND_BEARSSL>

=item C<CURLSSLBACKEND_RUSTLS>

=back

=head2 CURLPAUSE

To import all of these, use the tag C<:pause>.
For details on each constant see L<https://curl.se/libcurl/c/curl_easy_pause.html>.

=over 4

=item C<CURLPAUSE_ALL>

=item C<CURLPAUSE_CONT>

=item C<CURLPAUSE_RECV>

=item C<CURLPAUSE_RECV_CONT>

=item C<CURLPAUSE_SEND>

=item C<CURLPAUSE_SEND_CONT>

=back

=head1 SEE ALSO

=over 4

=item L<Net::Swirl::CurlEasy>

Main documentation for the Swirl C<curl> "easy" API.

=item L<Net::Swirl::CurlEasy::Options>

Full list of options available to this API.

=item L<Net::Swirl::CurlEasy::Info>

Full list of information items available to this API.

=back

=cut
