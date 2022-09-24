#strassenlaternen {
    [highway = 'street_lamp'][zoom >= 20] {
       marker-height: 15px;
       marker-placement: interior;
       marker-clip: false;
       marker-file: url('extra_symbols/streetlamp.svg');
       [zoom = 21] {
             marker-height: 20px;
       }
       [zoom >= 22] {
             marker-height: 30px;
       }
       [zoom >= 23] {
             marker-height: 45px;
       }
    }
}