
# vygeneruj spojene video a youtube popis
# ffmpeg -f concat -safe 0 -i short.txt -c copy kodokan-kyu.mp4

my $pos = 0;

while(<STDIN>) {
	my($kyu,$id,$name) = split(/\s/);
	next unless($id);

	die $id unless(-f "kodokan/video-$id.mp4");

	my $duration = `ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "kodokan/video-$id.mp4"`;
	chomp($duration);

	print "file 'kodokan/video-$id.mp4'\n";
	$name =~ s/\_/ /g;

	my($hh,$mm,$ss) = (int($pos / 3600),int(($pos % 3600) / 60),$pos % 60);
	my $hhmmss = sprintf("%02d:%02d:%02d", $hh, $mm, $ss);

	print STDERR $hhmmss." $kyu ".$name."\n";
	
	$pos += $duration;
}

