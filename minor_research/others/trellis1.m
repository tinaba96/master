trellis = poly2trellis(5, [37 33], 37)

data = randi([0 1],70,1);
codedData = convenc(data,trellis);
decodedData = vitdec(codedData,trellis,34,'trunc','hard');

biterr(data,decodedData)

