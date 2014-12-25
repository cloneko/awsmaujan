#!/bin/sh

# Resize
WD=$PWD

# 大きいサイズ用 
SIZE=25x35 
convert -resize $SIZE Back.png /tmp/Back.bmp
convert -resize $SIZE C1.png /tmp/C1.bmp
convert -resize $SIZE C2.png /tmp/C2.bmp
convert -resize $SIZE C3.png /tmp/C3.bmp
convert -resize $SIZE C4.png /tmp/C4.bmp
convert -resize $SIZE C5.png /tmp/C5.bmp
convert -resize $SIZE C6.png /tmp/C6.bmp
convert -resize $SIZE C7.png /tmp/C7.bmp
convert -resize $SIZE C8.png /tmp/C8.bmp
convert -resize $SIZE C9.png /tmp/C9.bmp
convert -resize $SIZE D1.png /tmp/D1.bmp
convert -resize $SIZE D2.png /tmp/D2.bmp
convert -resize $SIZE D3.png /tmp/D3.bmp
convert -resize $SIZE D4.png /tmp/D4.bmp
convert -resize $SIZE D5.png /tmp/D5.bmp
convert -resize $SIZE D6.png /tmp/D6.bmp
convert -resize $SIZE D7.png /tmp/D7.bmp
convert -resize $SIZE D8.png /tmp/D8.bmp
convert -resize $SIZE D9.png /tmp/D9.bmp
convert -resize $SIZE H1.png /tmp/H1.bmp
convert -resize $SIZE H2.png /tmp/H2.bmp
convert -resize $SIZE H3.png /tmp/H3.bmp
convert -resize $SIZE H4.png /tmp/H4.bmp
convert -resize $SIZE N1.png /tmp/N1.bmp
convert -resize $SIZE N2.png /tmp/N2.bmp
convert -resize $SIZE N3.png /tmp/N3.bmp
convert -resize $SIZE N4.png /tmp/N4.bmp
convert -resize $SIZE N5.png /tmp/N5.bmp
convert -resize $SIZE N6.png /tmp/N6.bmp
convert -resize $SIZE N7.png /tmp/N7.bmp
convert -resize $SIZE N8.png /tmp/N8.bmp
convert -resize $SIZE N9.png /tmp/N9.bmp
convert -resize $SIZE R1.png /tmp/R1.bmp
convert -resize $SIZE R2.png /tmp/R2.bmp
convert -resize $SIZE R3.png /tmp/R3.bmp
convert -resize $SIZE R4.png /tmp/R4.bmp
convert -resize $SIZE S1.png /tmp/S1.bmp
convert -resize $SIZE S2.png /tmp/S2.bmp
convert -resize $SIZE S3.png /tmp/S3.bmp
convert -resize $SIZE S4.png /tmp/S4.bmp
convert -resize $SIZE W1.png /tmp/W1.bmp
convert -resize $SIZE W2.png /tmp/W2.bmp
convert -resize $SIZE W3.png /tmp/W3.bmp
convert -resize $SIZE W4.png /tmp/W4.bmp
convert -colorize 0/30/30 /tmp/C5.bmp /tmp/C5-Red.bmp
convert -colorize 0/30/30 /tmp/D5.bmp /tmp/D5-Red.bmp
convert -colorize 0/30/30 /tmp/N5.bmp /tmp/N5-Red.bmp

# 正面向き
cd /tmp
convert -append C[1-9].bmp D[1-9].bmp N[1-9].bmp R1.bmp R4.bmp R2.bmp R3.bmp W1.bmp H1.bmp S1.bmp C5-Red.bmp D5-Red.bmp N5-Red.bmp front.bmp 

# 対面
mogrify -rotate 180 [A-Z]*.bmp
convert -append C[1-9].bmp D[1-9].bmp N[1-9].bmp R1.bmp R4.bmp R2.bmp R3.bmp W1.bmp H1.bmp S1.bmp C5-Red.bmp D5-Red.bmp N5-Red.bmp toimen.bmp 

# Merge
convert +append front.bmp toimen.bmp aws_by.bmp

# 横向きの奴
mogrify -rotate 90 [A-Z]*.bmp
convert +append C[1-9].bmp D[1-9].bmp N[1-9].bmp R1.bmp R4.bmp R2.bmp R3.bmp W1.bmp H1.bmp S1.bmp C5-Red.bmp D5-Red.bmp N5-Red.bmp right.bmp 
mogrify -rotate 180 [A-Z]*.bmp
convert +append C[1-9].bmp D[1-9].bmp N[1-9].bmp R1.bmp R4.bmp R2.bmp R3.bmp W1.bmp H1.bmp S1.bmp C5-Red.bmp D5-Red.bmp N5-Red.bmp left.bmp
convert -append right.bmp left.bmp aws_bx.bmp

rm -fr /tmp/[A-Z]*.bmp /tmp/right.bmp /tmp/left.bmp /tmp/toimen.bmp /tmp/front.bmp

cd $WD
# 小さいサイズ用 
SIZE=20x28
convert -resize $SIZE Back.png /tmp/Back.bmp
convert -resize $SIZE C1.png /tmp/C1.bmp
convert -resize $SIZE C2.png /tmp/C2.bmp
convert -resize $SIZE C3.png /tmp/C3.bmp
convert -resize $SIZE C4.png /tmp/C4.bmp
convert -resize $SIZE C5.png /tmp/C5.bmp
convert -resize $SIZE C6.png /tmp/C6.bmp
convert -resize $SIZE C7.png /tmp/C7.bmp
convert -resize $SIZE C8.png /tmp/C8.bmp
convert -resize $SIZE C9.png /tmp/C9.bmp
convert -resize $SIZE D1.png /tmp/D1.bmp
convert -resize $SIZE D2.png /tmp/D2.bmp
convert -resize $SIZE D3.png /tmp/D3.bmp
convert -resize $SIZE D4.png /tmp/D4.bmp
convert -resize $SIZE D5.png /tmp/D5.bmp
convert -resize $SIZE D6.png /tmp/D6.bmp
convert -resize $SIZE D7.png /tmp/D7.bmp
convert -resize $SIZE D8.png /tmp/D8.bmp
convert -resize $SIZE D9.png /tmp/D9.bmp
convert -resize $SIZE H1.png /tmp/H1.bmp
convert -resize $SIZE H2.png /tmp/H2.bmp
convert -resize $SIZE H3.png /tmp/H3.bmp
convert -resize $SIZE H4.png /tmp/H4.bmp
convert -resize $SIZE N1.png /tmp/N1.bmp
convert -resize $SIZE N2.png /tmp/N2.bmp
convert -resize $SIZE N3.png /tmp/N3.bmp
convert -resize $SIZE N4.png /tmp/N4.bmp
convert -resize $SIZE N5.png /tmp/N5.bmp
convert -resize $SIZE N6.png /tmp/N6.bmp
convert -resize $SIZE N7.png /tmp/N7.bmp
convert -resize $SIZE N8.png /tmp/N8.bmp
convert -resize $SIZE N9.png /tmp/N9.bmp
convert -resize $SIZE R1.png /tmp/R1.bmp
convert -resize $SIZE R2.png /tmp/R2.bmp
convert -resize $SIZE R3.png /tmp/R3.bmp
convert -resize $SIZE R4.png /tmp/R4.bmp
convert -resize $SIZE S1.png /tmp/S1.bmp
convert -resize $SIZE S2.png /tmp/S2.bmp
convert -resize $SIZE S3.png /tmp/S3.bmp
convert -resize $SIZE S4.png /tmp/S4.bmp
convert -resize $SIZE W1.png /tmp/W1.bmp
convert -resize $SIZE W2.png /tmp/W2.bmp
convert -resize $SIZE W3.png /tmp/W3.bmp
convert -resize $SIZE W4.png /tmp/W4.bmp
convert -colorize 0/30/30 /tmp/C5.bmp /tmp/C5-Red.bmp
convert -colorize 0/30/30 /tmp/D5.bmp /tmp/D5-Red.bmp
convert -colorize 0/30/30 /tmp/N5.bmp /tmp/N5-Red.bmp

# 正面向き
cd /tmp
convert -append C[1-9].bmp D[1-9].bmp N[1-9].bmp R1.bmp R4.bmp R2.bmp R3.bmp W1.bmp H1.bmp S1.bmp C5-Red.bmp D5-Red.bmp N5-Red.bmp front.bmp 

# 対面
mogrify -rotate 180 [A-Z]*.bmp
convert -append C[1-9].bmp D[1-9].bmp N[1-9].bmp R1.bmp R4.bmp R2.bmp R3.bmp W1.bmp H1.bmp S1.bmp C5-Red.bmp D5-Red.bmp N5-Red.bmp toimen.bmp 

# Merge
convert +append front.bmp toimen.bmp aws_sy.bmp

# 横向きの奴
mogrify -rotate 90 [A-Z]*.bmp
convert +append C[1-9].bmp D[1-9].bmp N[1-9].bmp R1.bmp R4.bmp R2.bmp R3.bmp W1.bmp H1.bmp S1.bmp C5-Red.bmp D5-Red.bmp N5-Red.bmp right.bmp 
mogrify -rotate 180 [A-Z]*.bmp
convert +append C[1-9].bmp D[1-9].bmp N[1-9].bmp R1.bmp R4.bmp R2.bmp R3.bmp W1.bmp H1.bmp S1.bmp C5-Red.bmp D5-Red.bmp N5-Red.bmp left.bmp
convert -append right.bmp left.bmp aws_sx.bmp

rm -fr /tmp/[A-Z]*.bmp /tmp/right.bmp /tmp/left.bmp /tmp/toimen.bmp /tmp/front.bmp
