#entrance_zoom20 {
    [zoom >= 20] {
       marker-height: 8px;
       marker-placement: interior;
       marker-clip: false;
       [entrance_zoom20 = 'yes'] {
          marker-file: url('extra_symbols/entrance_yes.svg');
       }
       [entrance_zoom20 = 'main'] {
          marker-file: url('extra_symbols/entrance_main.svg');
       }
       [entrance_zoom20 = 'service'] {
          marker-file: url('extra_symbols/entrance_service.svg');
       }
       [entrance_zoom20 = 'exit'] {
          marker-file: url('extra_symbols/entrance_exit.svg');
       }
       [entrance_zoom20 = 'emergency'] {
          marker-file: url('extra_symbols/entrance_emergency.svg');
       }
       [zoom = 21] {
             marker-height: 12px;
       }
       [zoom >= 22] {
             marker-height: 15px;
       }
       [zoom >= 23] {
             marker-height: 20px;
       }
    }
}