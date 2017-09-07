#!/usr/bin/env python
# -*- coding: utf-8 -*-

global N_atom_irreducible_unit
N_atom_irreducible_unit = 3

filename = 'g.out'

VOLUMES = []
P0 = []
P2 = []
ATOMIC_NUMBERS = []
Xs = []
Ys = []
Zs = []

with open(filename) as gout:
    final_optimized_geometry = False
    for line in gout:
        if 'FINAL OPTIMIZED GEOMETRY' in line:
            final_optimized_geometry = True
        elif 'PRIMITIVE CELL - CENTRING CODE' in line:
            if final_optimized_geometry:
                volume = line.split()
                print volume
                print volume[7]
                volume = line.split()[7]
                VOLUMES.append(volume)
  
        elif ' CRYSTALLOGRAPHIC CELL (V' in line:
            if final_optimized_geometry:
                print 'gout.next() =', gout.next()
                done = gout.next()
                print 'done =', done
                p0 = done.split()[0]
                p2 = done.split()[2]

#               p0, p2 = done.split()[0:3:2]

                P0.append(p0)
                P2.append(p2)
        elif 'COORDINATES IN THE CRYSTALLOGRAPHIC CELL' in line:
            if final_optimized_geometry:
                gout.next()
                gout.next()
                while True:
                    line = gout.next()
                    atomdata = line.split()
                    if not atomdata:
                        break
                    if atomdata[1] != 'T':
                        continue
                    atomicnumber = atomdata[2]
                    x, y, z = atomdata[4:7]
                    ATOMIC_NUMBERS.append(atomicnumber)
                    Xs.append(x)
                    Ys.append(y)
                    Zs.append(z)
                final_optimized_geometry = False



print 'VOLUMES = ', VOLUMES
print 'P0 = ', P0
print 'P2 = ', P2
print 'Xs = ', Xs
print 'Ys = ', Ys
print 'Zs = ', Zs
print 'ATOMIC_NUMBERS = ', ATOMIC_NUMBERS


headers = list(zip(P0, P2))
print 'headers = ', headers

rows = [row for row in zip(ATOMIC_NUMBERS, Xs, Ys, Zs)]
print 'rows = ', rows

interval = int(len(rows) / len(VOLUMES))
print 'len(rows) = ', len(rows)
print 'len(VOLUMES) = ', len(VOLUMES)
print 'interval = ', interval

for block_i in range(0, len(rows), interval):
 print block_i

for vol_i in range(len(VOLUMES)):
 print vol_i

for block_i, vol_i in zip(range(0, len(rows), interval), range(len(VOLUMES))):

    # Create the lines for the file:
    lines = ['   '.join(headers[vol_i]), str(N_atom_irreducible_unit)]
    lines += ['   '.join(row) for row in rows[block_i : block_i + interval]]

    # Write the file:
    with open(VOLUMES[vol_i] + '.d12', 'w') as f:

        # Preceding lines:
        f.write("""Title
CRYSTAL
0 0 0
167\n""")

        # Lines of data:
        for line in lines:
            f.write(line + '\n')

        # Trailing lines:
        f.write("""SCELPHONO
1 0 0
0 -1 1
1 -1 -1
FREQCALC
NOINTENS
NOOPTGEOM
DISPERSI
TEMPERAT
100 10 2000
END
END
20 7
0  0  8  2.   1.
191300.   0.0002204
 26970.   0.001925
  5696.   0.01109
  1489.4  0.04995
   448.3  0.17014
   154.62 0.3685
    60.37 0.4034
    25.09 0.1452
0 1 6 8. 1.
    448.6  -0.00575 0.00847
    105.7  -0.0767  0.06027
     34.69 -0.1122  0.2124
     13.50  0.2537  0.3771
      5.820 0.688   0.401
      1.819 0.349   0.198
0 1 5 8. 1.
     20.75  -0.0020 -0.0365
      8.40  -0.1255 -0.0685
      3.597 -0.6960  0.1570
      1.408  1.029   1.482
      0.726  0.944   1.025
0 1 1 2. 1.
      0.453  1.      1.
0 1 1 0. 1.
      0.295  1.      1.
0 3 2 0. 1.
      3.1910 0.160
      0.8683 0.313
0 3 1 0. 1.
      0.2891 0.406
6 6
0 0 6 2.0 1.00
  0.4563240000D+04 0.1966650000D-02
  0.6820240000D+03 0.1523060000D-01
  0.1549730000D+03 0.7612690000D-01
  0.4445530000D+02 0.2608010000D+00
  0.1302900000D+02 0.6164620000D+00
  0.1827730000D+01 0.2210060000D+00
0 1 3 4.0 1.00
  0.2096420000D+02  0.1146600000D+00  0.4024870000D-01
  0.4803310000D+01  0.9199990000D+00  0.2375940000D+00
  0.1459330000D+01 -0.3030680000D-02  0.8158540000D+00
0 1 1 0.0 1.00
  0.4834560000D+00 0.1000000000D+01 0.1000000000D+01
0 1 1 0.0 1.00
  0.1455850000D+00 0.1000000000D+01 0.1000000000D+01
0 3 1 0.0 1.0
  2.0  .1000000000D+01
0 3 1 0.0 1.0
0.6  .1000000000D+01
8 6
0 0 8 2.0 1.0
   8020.    0.001080
   1338.    0.008040
    255.4   0.053240
     69.22  0.168100
     23.90  0.358100
      9.264 0.385500
      3.851 0.146800
      1.212 0.072800
0 1 4 6.0 1.0
  49.43   -0.008830 0.009580
  10.47   -0.091500 0.069600
   3.235  -0.040200 0.206500
   1.217   0.379000 0.347000
0 1 1 0. 1.0
  0.486  1.  1.
0 1 1 0. 1.0
  0.1925  1. 1.
0 3 1 0. 1.
  2.0 1.
0 3 1 0. 1.
  0.500 1.
99 0
ENDBS
SCFDIR
DFT
EXCHANGE
LDA
XLGRID
END
SHRINK
8 8
BIPOLAR
18 18
LEVSHIFT
5 0
TOLDEE
10
TOLINTEG
8 8 8 8 18
MAXCYCLE
100
ENDSCF\n""")

