package ONVIF::Media::Types::OnvifVersion;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Major_of :ATTR(:get<Major>);
my %Minor_of :ATTR(:get<Minor>);

__PACKAGE__->_factory(
    [ qw(        Major
        Minor

    ) ],
    {
        'Major' => \%Major_of,
        'Minor' => \%Minor_of,
    },
    {
        'Major' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'Minor' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
    },
    {

        'Major' => 'Major',
        'Minor' => 'Minor',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::OnvifVersion

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
OnvifVersion from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Major


=item * Minor




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::OnvifVersion
   Major =>  $some_value, # int
   Minor =>  $some_value, # int
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

