using Laszip
using Test

# write your own tests here
#@test 1 == 1

out = [0.0 0 0; 1 0 1; 0 1 1; 1 1 2; 0 0 2];
dat2las("lixo.laz", out);

in = las2dat("lixo.laz");

@test in == out

# Remove garbage
rm("lixo.laz")
