#cambiar token
#declarar variables
$archivo_conf=$ARGV[0];
$token=$ARGV[1];
$str;
@a;
open($fh, $archivo_conf) or die "no se puede abrir $archivo_conf";
while (my $row = <$fh>) {
	chomp $row;
	#print $row;
	if ((index($row,'token')!=0)){
		if((index($row,'Token')!=0)){
			$str=$str."$row\n";
		}else{
			$str=$str."Token=$token\n";
		}
	}else{
		#print $row;
		$str=$str."token=$token\n";
		#print $str;
	}
}
close($fh);
open ($fw, '>',$archivo_conf) or die "no se puede abrir";
print $fw $str;
close($fw);
