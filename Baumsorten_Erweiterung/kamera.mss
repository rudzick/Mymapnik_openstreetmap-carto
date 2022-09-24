#ueberwachungskameras {
    [man_made = 'surveillance'][zoom >= 20] {
       marker-height: 10px;
       marker-placement: interior;
       marker-clip: false;
       marker-file: url('extra_symbols/surveillance.svg');
       [zoom = 21] {
             marker-height: 15px;
       }
       [zoom >= 22] {
             marker-height: 25px;
       }
       [zoom >= 23] {
             marker-height: 40px;
       }
    }
}