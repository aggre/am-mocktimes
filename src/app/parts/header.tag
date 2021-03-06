<parts-header>
  <svg class="logo">
    <text x="0" y="16" font-size="18" fill="white">AM: MockTimes 🔧</text>
  </svg>
  <svg fill="white" class="question" onclick={openHelp} viewBox="0 0 1024 1024">
    <path d="M512 0Q373 0 255 68.5T68.5 255 0 512t68.5 257T255 955.5t257 68.5 257-68.5T955.5 769t68.5-257-68.5-257T769 68.5 512 0zm30 802q0 13-9 22.5t-23 9.5q-13 0-22.5-9.5T478 802t9.5-22.5T510 770q14 0 23 9.5t9 22.5zm66-220q-36 19-51 35t-15 46v11q0 13-9 22.5t-23 9.5q-13 0-22.5-9.5T478 674v-11q0-48 24.5-79.5T578 525q35-18 55.5-52.5T654 398q0-60-42-102t-102-42q-62 0-103 37-30 28-38 68-2 11-11 18.5t-20 7.5q-16 0-25.5-11.5T306 347q12-62 59-104 59-53 145-53 87 0 147.5 61T718 398q0 58-29.5 107.5T608 582z"/>
  </svg>
  <style type="less">
    :scope {
      width: 100%;
      height: 30px;
      background: #333;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }
    > svg {
      height: 20px;
      padding: 4px;
    }
    > svg.logo {
      > text {
        font-family: "Playfair Display", "Georgia", serif;
      }
    }
    > svg.question {
      margin-right: 6px;
      cursor: pointer;
    }
  </style>

  <script>
    import {
      openHelp
    } from '../../actions'

    Object.assign(this, {
      openHelp
    })
  </script>
</parts-header>
