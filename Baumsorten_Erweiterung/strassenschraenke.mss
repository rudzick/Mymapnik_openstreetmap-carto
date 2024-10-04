#strassenschraenke {
    [man_made = 'street_cabinet'][zoom >= 20] {
       marker-height: 16px;
       marker-placement: interior;
       marker-clip: false;
       marker-file: url('extra_symbols/street_cabinet.svg');
       [zoom = 21] {
             marker-height: 24px;
       }
       [zoom >= 22] {
             marker-height: 30px;
       }
       [zoom >= 23] {
             marker-height: 50px;
       }
    }
}