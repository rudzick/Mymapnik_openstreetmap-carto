/* Features related to (postal) adresses: */

/* @parzellen-color: #555; */
@parzellen-color: #0E390E;
@allotments: #c9e1bf;   // Lch(87,20,135)
#parzellengrenzen {
     line-width: 0.4;
     line-color: desaturate(darken(@allotments, 10%), 10%);
     [zoom >= 19] {
        line-width: 0.5;
      }
      [zoom >= 20] {
         line-width: 0.6;
      }
}

