use Test2::V0 -no_srand => 1;
use 5.020;
use experimental qw( postderef signatures );
use Net::Swirl::CurlEasy;
use URI::file;
use Path::Tiny qw( path );
use Test2::Tools::MemoryCycle;
use FFI::C::File;
use Data::Dumper qw( Dumper );
use lib 't/lib';
use Test2::Tools::MyTest;

subtest 'very basic' => sub {
  my $curl = eval { Net::Swirl::CurlEasy->new };
  note "curl-ptr = @{[ $$curl ]}";

  if(my $error = $@) {
    if(eval { $error->isa('Net::Swirl::CurlEasy::Exception::CurlCode') })
    {
      diag "code = @{[ $error->code ]}";
    }
  }

  isa_ok $curl, 'Net::Swirl::CurlEasy';

  my $url = URI::file->new_abs('corpus/data.txt');
  try_ok { $curl->setopt( url => "$url" ) } "\$curl->setopt( url => '$url' )";

  my $content;

  try_ok {
    $curl->setopt( writefunction => sub ($, $data, $) {
      $content .= $data;
    });
  } "\$curl->setopt( writefunction => sub { ... } )";

  try_ok { $curl->perform } "\$curl->perform";

  is
    $curl,
    object {
      call [ isa => 'Net::Swirl::CurlEasy' ] => T();
      call [ getinfo => 'scheme' ] => 'FILE';
    },
    'final object state';

  is $content, path('corpus/data.txt')->slurp_raw, 'content matches';

  memory_cycle_ok $curl;

  try_ok { undef $curl } 'did not crash I guess?';

  keep_is_empty;
};

subtest 'verbose / stderr' => sub {

  my $curl = eval { Net::Swirl::CurlEasy->new };
  note "curl-ptr = @{[ $$curl ]}";

  if(my $error = $@) {
    if(eval { $error->isa('Net::Swirl::CurlEasy::Exception::CurlCode') })
    {
      diag "code = @{[ $error->code ]}";
    }
  }

  isa_ok $curl, 'Net::Swirl::CurlEasy';

  my $url = URI::file->new_abs('corpus/data.txt');
  try_ok { $curl->setopt( url => "$url" ) } "\$curl->setopt( url => '$url' )";

  my $content;

  try_ok {
    $curl->setopt( writefunction => sub ($, $data, $) {
      $content .= $data;
    });
  } "\$curl->setopt( writefunction => sub { ... } )";

  try_ok {
    $curl->setopt( verbose => 1 );
  } '$curl->setopt( verbose => 1 )';

  my $verbose_path = Path::Tiny->tempfile( "stuffXXXXXX" );
  my $fp = FFI::C::File->fopen("$verbose_path", "w");

  try_ok { $curl->setopt( stderr => $fp ) } '$curl->setopt( stderr => $fp )';

  try_ok { $curl->perform } "\$curl->perform";

  is
    $curl,
    object {
      call [ isa => 'Net::Swirl::CurlEasy' ] => T();
      call [ getinfo => 'scheme' ] => 'FILE';
    },
    'final object state';

  is $content, path('corpus/data.txt')->slurp_raw, 'content matches';

  $fp->fclose;

  note "[content]\n$content";
  note "[stderr]\n" . $verbose_path->slurp;

  memory_cycle_ok $curl;

  try_ok { undef $curl } 'did not crash I guess?';

  keep_is_empty;
};

subtest 'writedata' => sub {

  my $curl = Net::Swirl::CurlEasy->new;
  note "curl-ptr = @{[ $$curl ]}";

  my $url = URI::file->new_abs('corpus/data.txt');
  try_ok { $curl->setopt( url => "$url" ) } "\$curl->setopt( url => '$url' )";

  my $content;

  try_ok {
    open my $fh, ">", \$content;
    $curl->setopt( writedata => $fh );
  } "\$curl->setopt( writedata => \$fh )";

  try_ok { $curl->perform } "\$curl->perform";

  is $content, path('corpus/data.txt')->slurp_raw, 'content matches';

  memory_cycle_ok $curl;

  try_ok { undef $curl } 'did not crash I guess?';
  keep_is_empty;
};

subtest 'xferinfo' => sub {

  my $curl = Net::Swirl::CurlEasy->new;
  note "curl-ptr = @{[ $$curl ]}";

  my $url = URI::file->new_abs('corpus/data.txt');
  try_ok { $curl->setopt( url => "$url" ) } "\$curl->setopt( url => '$url' )";

  try_ok {
    my $content;
    open my $fh, ">", \$content;
    $curl->setopt( writedata => $fh );
  } "\$curl->setopt( writedata => \$fh )";

  my @xferinfo;

  try_ok {
    $curl->setopt( noprogress => 0 );
  } '$curl->setopt( noprogress => 0 )';

  my $stderr_path = Path::Tiny->tempfile( "stuffXXXXXX" );
  my $fp = FFI::C::File->fopen("$stderr_path", "w");

  try_ok {
    $curl->setopt( stderr => $fp );
  } '$curl->setopt( stderr => $fp )';

  try_ok {
    $curl->setopt( xferinfofunction => sub ($curl, $data, $dlt, $dln, $ult, $uln) {
      note "xferinfofunction(... $dlt, $dln, $ult, $uln)";
      @xferinfo = ($data, $dlt, $dln, $ult, $uln);
      isa_ok $curl, 'Net::Swirl::CurlEasy';
    });
  } '$curl->setopt( xferinfofunction => sub { ... } )';

  try_ok {
    $curl->setopt(xferinfodata => [1,2,3]);
  } '$curl->setopt(xferinfodata => [1,2,3])';

  try_ok { $curl->perform } "\$curl->perform";

  is
    \@xferinfo,
    array {
      item [1,2,3];
      item 13;
      item 13;
      item 0;
      item 0;
      end;
    },
    'expected final values for xferinfo';

  memory_cycle_ok $curl;
  undef $curl;
  keep_is_empty;

};

subtest 'xferinfo / cancel' => sub {

  my $curl = Net::Swirl::CurlEasy->new;
  note "curl-ptr = @{[ $$curl ]}";

  my $url = URI::file->new_abs('corpus/data.txt');
  try_ok { $curl->setopt( url => "$url" ) } "\$curl->setopt( url => '$url' )";

  try_ok {
    my $content;
    open my $fh, ">", \$content;
    $curl->setopt( writedata => $fh );
  } "\$curl->setopt( writedata => \$fh )";

  my @xferinfo;

  try_ok {
    $curl->setopt( noprogress => 0 );
  } '$curl->setopt( noprogress => 0 )';

  my $stderr_path = Path::Tiny->tempfile( "stuffXXXXXX" );
  my $fp = FFI::C::File->fopen("$stderr_path", "w");

  try_ok {
    $curl->setopt( stderr => $fp );
  } '$curl->setopt( stderr => $fp )';

  try_ok {

    $curl->setopt( xferinfofunction => sub ($curl, $data, $dlt, $dln, $ult, $uln) {
      die 'oops';
    });
  } '$curl->setopt( xferinfofunction => sub { die } )';

  my @warn;

  my $ex = dies {
    local $SIG{__WARN__} = sub {
      my $message = shift;
      if($message =~ /^oops/) {
        push @warn, $message
      } else {
        warn $message;
      }
    };
    $curl->perform }; my $line = __LINE__;

  is
    $ex,
    object {
      call [ isa => 'Net::Swirl::CurlEasy::Exception::CurlCode' ] => T();
      call line      => $line;
      call filename  => __FILE__;
      call code      => 42;
    },
    'the right exception';

  is
    \@warn,
    array {
      item match qr/^oops at/;
      etc;
    },
    'warnings' or diag Dumper(\@warn);;

  memory_cycle_ok $curl;
  undef $curl;
  keep_is_empty;

};

subtest 'progress' => sub {

  my $curl = Net::Swirl::CurlEasy->new;
  note "curl-ptr = @{[ $$curl ]}";

  my $url = URI::file->new_abs('corpus/data.txt');
  try_ok { $curl->setopt( url => "$url" ) } "\$curl->setopt( url => '$url' )";

  try_ok {
    my $content;
    open my $fh, ">", \$content;
    $curl->setopt( writedata => $fh );
  } "\$curl->setopt( writedata => \$fh )";

  my @progress;

  try_ok {
    $curl->setopt( noprogress => 0 );
  } '$curl->setopt( noprogress => 0 )';

  my $stderr_path = Path::Tiny->tempfile( "stuffXXXXXX" );
  my $fp = FFI::C::File->fopen("$stderr_path", "w");

  try_ok {
    $curl->setopt( stderr => $fp );
  } '$curl->setopt( stderr => $fp )';

  try_ok {
    $curl->setopt( progressfunction => sub ($curl, $data, $dlt, $dln, $ult, $uln) {
      note "progressfunction(... $dlt, $dln, $ult, $uln)";
      @progress = ($data, $dlt, $dln, $ult, $uln);
      isa_ok $curl, 'Net::Swirl::CurlEasy';
    });
  } '$curl->setopt( xferinfofunction => sub { ... } )';

  try_ok {
    $curl->setopt(xferinfodata => [1,2,3]);
  } '$curl->setopt(xferinfodata => [1,2,3])';

  try_ok { $curl->perform } "\$curl->perform";

  is
    \@progress,
    array {
      item [1,2,3];
      item 13;
      item 13;
      item 0;
      item 0;
      end;
    },
    'expected final values for xferinfo';

  memory_cycle_ok $curl;
  undef $curl;
  keep_is_empty;

};

subtest 'reset' => sub {

  my $curl = Net::Swirl::CurlEasy->new;
  note "curl-ptr = @{[ $$curl ]}";
  try_ok { $curl->reset } '$curl->reset';

  memory_cycle_ok $curl;
  undef $curl;
  keep_is_empty;
};

subtest 'clone' => sub {

  my $curl1 = Net::Swirl::CurlEasy->new;
  note "curl-ptr = @{[ $$curl1 ]}";

  my $content = '';
  open my $fh, '>', \$content;

  my $url = URI::file->new_abs('corpus/data.txt');
  $curl1->setopt( url           => "$url" );
  $curl1->setopt( writedata     => [$fh]  );
  $curl1->setopt( writefunction => sub ($, $data, $array) {
    my($fh) = @$array;
    print $fh $data;
  });

  my $curl2 = $curl1->clone;
  note "curl-ptr = @{[ $$curl2 ]}";

  memory_cycle_ok $curl1, 'no memory cycles original';
  memory_cycle_ok $curl2, 'no memory cycles clone';

  try_ok { $curl2->perform } "\$curl2->perform";

  is $content, path('corpus/data.txt')->slurp_raw, 'content matches';

  memory_cycle_ok $curl1, 'no memory cycles original (still)';
  memory_cycle_ok $curl2, 'no memory cycles clone (still)';

  undef $curl1;
  undef $curl2;
  keep_is_empty;
};

subtest 'slist' => sub {

  is(
    Net::Swirl::CurlEasy::Slist->new(qw( foo bar baz )),
    object {
      call [ isa => 'Net::Swirl::CurlEasy::Slist' ] => T();
      call ptr => T();
      call as_list => [ qw( foo bar baz ) ];
      call [ append => 'roger' ] => object { call [ isa => 'Net::Swirl::CurlEasy::Slist' ] => T() };
      call as_list => [ qw( foo bar baz roger ) ];
    },
    'slist with stuff in it'
  );

  is(
    Net::Swirl::CurlEasy::Slist->new(),
    object {
      call [ isa => 'Net::Swirl::CurlEasy::Slist' ] => T();
      call ptr => U();
      call as_list => [];
      call [ append => 'roger' ] => object { call [ isa => 'Net::Swirl::CurlEasy::Slist' ] => T() };
      call ptr => T();
      call as_list => [ 'roger' ];
    },
    'start with empty',
  );

  memory_cycle_ok( Net::Swirl::CurlEasy::Slist->new(qw( foo bar baz )) );
  keep_is_empty;
};

subtest 'invalid option, invalid info' => sub {

  my $curl = Net::Swirl::CurlEasy->new;
  note "curl-ptr = @{[ $$curl ]}";

  my $ex = dies { $curl->setopt('bogus' => 'bummer') };  my $line = __LINE__;

  is
    $ex,
    object {
      call [ isa => 'Net::Swirl::CurlEasy::Exception::CurlCode' ] => T();
      call line => $line;
      call filename => __FILE__;
      call code => 48;
    },
    'got the expected exception for invalid option';

  $ex = dies { $curl->getinfo('bogus') }; $line = __LINE__;

  is
    $ex,
    object {
      call [ isa => 'Net::Swirl::CurlEasy::Exception::CurlCode' ] => T();
      call line => $line;
      call filename => __FILE__;
      call code => 48;
    },
    'got the expected exception for invalid info';

  memory_cycle_ok $curl;
  undef $curl;
  keep_is_empty;

};

subtest 'escape' => sub {

  my $curl = Net::Swirl::CurlEasy->new;
  note "curl-ptr = @{[ $$curl ]}";

  is(
    $curl->escape("foo\0bar"),
    'foo%00bar',
    '$curl->escape("foo\0bar")',
  );

  is(
    $curl->unescape("foo%00bar"),
    "foo\0bar",
    '$curl->unescape("foo%00bar")',
  );

  memory_cycle_ok $curl;
  undef $curl;
  keep_is_empty;

};

subtest 'private' => sub {

  my $curl = Net::Swirl::CurlEasy->new;
  note "curl-ptr = @{[ $$curl ]}";

  try_ok {
    $curl->setopt( private => { foo => "bar" } );
  } '$curl->setopt( private => { foo => "bar" }';

  $curl->getinfo( 'private' );

  is
    $curl->getinfo( 'private' ),
    { foo => 'bar' },
    'private data stored in $curl came back the same';

  memory_cycle_ok $curl;
  undef $curl;
  keep_is_empty;

};

keep_is_empty;

done_testing;
