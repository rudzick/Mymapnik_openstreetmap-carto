#hydranten {
    [emergency = 'fire_hydrant'][zoom >= 20] {
       marker-height: 8px;
       marker-placement: interior;
       marker-clip: false;
       marker-file: url('extra_symbols/Emergency_fire_hydrant.svg');
       [zoom >= 21] {
             marker-height: 12px;
             text-name:  [hydranttyp] + [standort] + [nenndurchmesser];
            text-face-name: @standard-font;
            text-wrap-width: 20;
            text-line-spacing: @standard-line-spacing-size;
            text-fill: 'red';
            text-halo-radius: @standard-halo-radius;
            text-halo-fill: @standard-halo-fill;
            text-placement: interior;
            text-size: 10;
            text-dy: 9;
       }
    }
}