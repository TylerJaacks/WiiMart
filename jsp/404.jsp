<%@ page import = "java.io.*,java.util.*" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<a href="https://oss-auth.blinklab.com/oss/serv/debug.jsp">debug</a>
<!-- 404 Page -->
<html>
<head>
  <script>
    // prevent 209601 (idle on a page, times the user out)
    var wiishop = new wiiShop();
    const unused = wiishop.connecting;
  </script>

  <title>WiiMart - Page Not Found</title>
  <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
  <style type="text/css">
    /* GENERAL */
    body {
      background-repeat: no-repeat;
      background-color: #FFFFFF; 
    }

    FORM { display: inline; } 

    a:link, a:visited, a:hover, a:active {
      text-decoration: none;
    }

    .bold { font-weight: bold; }
    .titleBlackL {
      font-family: "Wii NTLG PGothic JPN Regular";
      font-size: 28px;
      color: #323232;
      font-weight: bold;
    }
    .titleBlueL {
      font-family: "Wii NTLG PGothic JPN Regular";
      font-size: 28px;
      color: #34BEED;
      font-weight: bold;
    }
    .contentsBlack {
      font-family: "Wii NTLG PGothic JPN Regular";
      font-size: 14px;
      color: #323232;
      font-weight: normal;
      line-height: 16px;
    }
    .contentsBlackL {
      font-family: "Wii NTLG PGothic JPN Regular";
      font-size: 20px;
      color: #323232;
      font-weight: normal;
    }
    .contentsBlueM {
      font-family: "Wii NTLG PGothic JPN Regular";
      font-size: 18px;
      color: #34BEED;
      font-weight: normal;
    }
    .dot {
      font-family: "Wii NTLG PGothic JPN Regular";
      font-size: 16px;
      color: #8C8C8C;
    }

    #line01, #line02 {
      position: absolute;
      left: 4px;
      width: 600px;
      height: 10px;
      z-index: 100;
    }
    #line01 { top: 59px; }
    #line02 { top: 363px; }

    #underButton {
      position: absolute;
      left: 211px;
      top: 294px;
      width: 187px;
      height: 55px;
    }

    .buttonTextBlackM {
      font-family: "Wii NTLG PGothic JPN Regular";
      font-size: 18px;
      color: #323232;
      font-weight: normal;
    }

    .page_content_area {
      position: relative;
      top: 75px;
      left: 20px;
      text-align: center;
      width: 548px;
    }
  </style>
  <link rel="shortcut icon" href="/oss/favicon.ico" /> 
  <script src="/oss/oss/common/js/json2.js"></script>
  <script src="/oss/oss/common/js/shop.js"></script>
  <script src="/oss/oss/common/js/keyboard.js"></script> 
  <script src="/oss/oss/common/js/oss.js"></script> 
  <script src="/oss/oss/common/js/error.js"></script> 
  <script src="/oss/oss/common/js/buttons.js"></script>
  <script src="/oss/oss/common/js/sound.js"></script>
  <script src="/oss/oss/common/js/images.js"></script>
</head>

<body onload="initPage()">
  <div class="dot" id="line01">･･･････････････････････････････････････････････････････････････････････････</div>
  <div class="dot" id="line02">･･･････････････････････････････････････････････････････････････････････････</div>

  <div class="page_content_area">
    <div class="titleBlueL">WiiMart</div>
    <h1>Whoops! That page was not found!</h1>
    <br>
    <p class="contentsBlack">
      To go back to the page you were at, click <a href="javascript:window.history.go(-1);">here</a>.
      <br>
      Or, you can go back to the first page of the shop by clicking <a href="/oss/serv/W_01.jsp">here</a>.
    </p>
  </div>

  <div id="underButton" style="display:none">
    <div id="underbannershadow" class="buttonBannerShadow">
      <img src="/oss/oss/common/images//banner/under_banner_shadow.gif" width="211" height="75" />
    </div>
    <div id="underbanner" class="buttonBanner">
      <img src="/oss/oss/common/images//banner/under_banner_a.gif" width="187" height="55" id="underImg" />
    </div>
    <div id="underspacer" class="buttonSpacer">
      <a href="" id="underlink">
        <img id="underimage" src="/oss/oss/common/images//spacer.gif" width="187" height="55" border="0" 
        onmouseover="MM_swapImage('underImg','','/oss/oss/common/images//banner/under_banner_b.gif',1); snd.playSE( cSE_Forcus );" 
        onmouseout="MM_swapImgRestore()">
      </a>
    </div>
    <div id="underword" align="center" class="buttonTextBlackM buttonWord"></div>
  </div>
</body>
</html>p>
