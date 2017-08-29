local $/=undef;
open FILE, "hosts.txt" or die "Couldn't open file: $!";
binmode FILE;
$subject = <FILE>;
close FILE;
 
$a='auth-zones=';
 
while ($subject =~ m/0\.0\.0\.0[ ]+(([a-z0-9]+(-[a-z0-9]+)*\.)+[a-z]{2,4})/ixg) {
  $a=$a.$1."=/etc/powerdns/null.zone.file,";
}
 
print "$a";
