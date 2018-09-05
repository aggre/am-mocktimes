<parts-iframe-mock>
  <iframe src={opts.dataSrc}></iframe>
  <style type="less">
    :scope {
      position: fixed;
      top: 0;
      left: 0;
      -webkit-overflow-scrolling: touch;
      width: 100%;
      height: 100%;
      background-color: white;
    }

    > iframe {
      overflow: auto;
      border: none;
      width: inherit;
      height: inherit;
    }
  </style>
</parts-iframe-mock>