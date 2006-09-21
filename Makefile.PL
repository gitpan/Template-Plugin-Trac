use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'          => 'Template-Plugin-Trac',
    'VERSION_FROM'  => 'lib/Template/Plugin/Trac.pm',
    'ABSTRACT'      => 'TT plugin to add support for Text::Trac',
    'AUTHOR'        => 'Graham TerMarsch <cpan@howlingfrog.com>',
    'PREREQ_PM'     => { 'Template'     => 0,
                         'Test::More'   => 0,
                         'Text::Trac'   => 0,
                       },
    'clean'         => { 'FILES' => '$(DISTVNAME).tar$(SUFFIX)' },
    );
