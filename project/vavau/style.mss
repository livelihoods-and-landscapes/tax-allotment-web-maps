Map {
  
}

#vavau [zoom >= 0] {
  line-color:#000000;
  line-width:0.5;
  polygon-opacity:0;
  ::labels {
    text-name:'[block_sheet]';
    text-face-name:'Helvetica Light';
    text-allow-overlap:true;
    [zoom < 15]{
      text-opacity:0;
    }
    [zoom = 15]{
      text-name:'[block_sheet]';
      text-size:8;
    }
    [zoom >= 16]{
      text-name:'[block_sheet]';
      text-size:12;
    }
    [zoom = 16]{
      text-name:[block_sheet] + ' ' + [lot_number];
      text-size:14;
      text-wrap-width: 1;
      text-wrap-character: ' ';
    }
     [zoom > 16]{
      text-name:[block_sheet] + ' ' + [lot_number];
      text-size:16;
      text-wrap-width: 1;
      text-wrap-character: ' ';
    }
  }
}
