
# yt-dlp -o video-0itJFhV9pDQ.mp4 -f 270 'https://www.youtube.com/embed/0itJFhV9pDQ'

# ffmpeg -f concat -safe 0 -i short.txt -c copy kodokan-kyu.mp4

#for i in 699i--pvYmE JPJx9-oAVns yhu1mfy2vJ4 4x6S3Q-Ktv8 2DsVvDw7b8g jeQ541ScLB4 4BUUvqxi_Kk zQR3IOXxO_Q 55-rFmBx53g TT7XJVSEQxA HFuMjOv0WN8 0itJFhV9pDQ c-A_nP7mKAc ; do echo $i ; yt-dlp -F https://youtube.com/embed/$i ; done

my $count = 10;

while(<DATA>) {
	my($id,$name) = split(/\s/);
	$count = sprintf("%02d",$count+1);
	print "yt-dlp -o $count\.$name\_${id}.mp4 -f 270 'https://www.youtube.com/embed/$id' >$count.txt 2>$count.err ; echo $count \$\@\n";
}

__DATA__
699i--pvYmE Sasae-tsurikomi-ashi
JPJx9-oAVns Hiza-guruma
yhu1mfy2vJ4 O-goshi
4x6S3Q-Ktv8 Tai-otoshi
2DsVvDw7b8g O-soto-otoshi
jeQ541ScLB4 Ko-soto-gari
4BUUvqxi_Kk De-ashi-harai
zQR3IOXxO_Q Kata-gatame
55-rFmBx53g Tate-shiho-gatame
TT7XJVSEQxA yoko-shiho-gatame
HFuMjOv0WN8 kami-shiho-gatame
0itJFhV9pDQ o-uchi-gari
c-A_nP7mKAc o-soto-gari
