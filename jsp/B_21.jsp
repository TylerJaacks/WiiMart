<%@ page import = "java.io.*,java.util.*,java.sql.*,java.net.http.*,java.net.URI,java.net.http.HttpResponse.BodyHandlers,java.net.HttpURLConnection,java.net.URL,java.nio.charset.StandardCharsets,org.json.*" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page buffer="8192kb" autoFlush="true" %>
<a href="https://oss-auth.blinklab.com/oss/serv/debug.jsp">debug</a>
<button onclick="window.location.reload()">reload</button>
<script>debugger</script>


<!--  -----------------------------------------------------  -->
<!--  Copyright 2005-2014 Acer Cloud Technology, Inc.        -->
<!--  All Rights Reserved.                                   -->
<!--                                                         -->
<!--  This software contains confidential information and    -->
<!--  trade secrets of Acer Cloud Technology, Inc.           -->
<!--  Use, disclosure or reproduction is prohibited without  -->
<!--  the prior express written permission of Acer Cloud     -->
<!--  Technology, Inc.                                       -->
<!--  -----------------------------------------------------  -->
<!--  -----------------------------------------------------  -->
<!--  Copyright 2005-2014 Acer Cloud Technology, Inc.        -->
<!--  All Rights Reserved.                                   -->
<!--                                                         -->
<!--  This software contains confidential information and    -->
<!--  trade secrets of Acer Cloud Technology, Inc.           -->
<!--  Use, disclosure or reproduction is prohibited without  -->
<!--  the prior express written permission of Acer Cloud     -->
<!--  Technology, Inc.                                       -->
<!--  -----------------------------------------------------  -->
<!--  -----------------------------------------------------  -->
<!--  Copyright 2005-2014 Acer Cloud Technology, Inc.        -->
<!--  All Rights Reserved.                                   -->
<!--                                                         -->
<!--  This software contains confidential information and    -->
<!--  trade secrets of Acer Cloud Technology, Inc.           -->
<!--  Use, disclosure or reproduction is prohibited without  -->
<!--  the prior express written permission of Acer Cloud     -->
<!--  Technology, Inc.                                       -->
<!--  -----------------------------------------------------  -->
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Flush buffer before setting locale to ensure encoding is preserved -->
<!-- Title name -->
<!-- Controller image and message -->
<!-- Release Date -->	
<!-- Number of players -->
<!-- Title Rating Images -->
<!-- Use bilingual icons if language is french or country is canada -->
		<html>
<head>
  <script>
    // prevent 209601 (idle on a page, times the user out)
    var wiishop = new wiiShop();
    const unused = wiishop.connecting;
  </script>

<!--  -----------------------------------------------------  -->
<!--  Copyright 2005-2014 Acer Cloud Technology, Inc.        -->
<!--  All Rights Reserved.                                   -->
<!--                                                         -->
<!--  This software contains confidential information and    -->
<!--  trade secrets of Acer Cloud Technology, Inc.           -->
<!--  Use, disclosure or reproduction is prohibited without  -->
<!--  the prior express written permission of Acer Cloud     -->
<!--  Technology, Inc.                                       -->
<!--  -----------------------------------------------------  -->
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<link rel="shortcut icon" href="/oss/favicon.ico" /> 
<link href="/oss/oss/common/css/oss.css" rel="stylesheet" type="text/css" />
<link href="/oss/oss/common/css/error.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">
<!--
	var ecCheck = false;
	var errorCheck = false;
	var buttonsCheck = false;
	var imagesCheck = false;
	var soundCheck = false;
	var shopCheck = false;
	var ossCheck = false;
//-->
</script>

<SCRIPT language="JavaScript" src="/oss/oss/common/js//ec.js"></SCRIPT>
<SCRIPT language="JavaScript" src='/oss/oss/common/js//error.js'></SCRIPT>
<SCRIPT language="JavaScript" src="/oss/oss/common/js//buttons.js"></SCRIPT>
<SCRIPT language="JavaScript" src="/oss/oss/common/js//images.js"></SCRIPT>
<SCRIPT language="JavaScript" src='/oss/oss/common/js//sound.js'></SCRIPT>
<SCRIPT language="JavaScript" src="/oss/oss/common/js//shop.js"></SCRIPT>
<SCRIPT language="JavaScript" src="/oss/oss/common/js//oss.js"></SCRIPT>

<script type="text/JavaScript">
<!--
var testMode = 'false';

function getMethod()
{
	return 'GET';	
}

function getPostParams()
{
    var params = "";    
   
   return params;
}

function isConnectingPage()
{
    var isConnecting = '';
    return (isConnecting == 'true');
}

function initPageCommon()
{
	var isShoppingManualEnabled = "true";
    	if (ecSupportsSession()) {
        	isShoppingManualEnabled = ec.getSessionValue("isShopManEnabled");
    	}
    
    	if (isShoppingManualEnabled != "true") {
    		hideElement("tophelpshadow");
	    	hideElement("help");
    	}
    	
	var ecsUrl = null;
	var iasUrl = null;
	var ccsUrl = null;
	var ucsUrl = null;
	var currBalance = null;

    // js file loading check
	var shopErrCheck = new wiiShop();
	if (shopErrCheck != null && "error" in shopErrCheck) {
		// shopErrCheck.error(209620, 1);
		if (!ecCheck) {
			shopErrCheck.error(209620, 1);
		} else if (!errorCheck) {
			shopErrCheck.error(209620, 1);
		} else if (!buttonsCheck) {
			shopErrCheck.error(209620, 1);
		} else if (!imagesCheck) {
			shopErrCheck.error(209620, 1);
		} else if (!soundCheck) {
			shopErrCheck.error(209620, 1);
		} else if (!shopCheck) {
			shopErrCheck.error(209620, 1);
		} else if (!ossCheck) {
			shopErrCheck.error(209620, 1);
		}
	}

	init();
	
	// Cancel any ongoing async ops
	ec.cancelOperation();
	

	ecsUrl = 'https://ecs.blinklab.com/ecs/services/ECommerceSOAP';

	iasUrl = 'https://ias.blinklab.com/ias/services/IdentityAuthenticationSOAP';

	ccsUrl = 'http://ccs.cdn.blinklab.com/ccs/download';

	ucsUrl = 'https://ccs.blinklab.com/ccs/download';
	

	ec.setWebSvcUrls(ecsUrl, iasUrl);
	ec.setContentUrls (ccsUrl, ucsUrl);
	
	

	imagesPath = "/oss/oss/common/images/";
	htmlPath = "/oss/oss/common/html";
	ossPath = "https://oss-auth.blinklab.com/oss/serv/";
	secureOssPath = "https://oss-auth.blinklab.com/oss/serv/";	

	ecTimeout = new ECTimeout(parseInt("60000"));
	
	
	currBalance = document.getElementById("currentBalance");
	if(currBalance) {
		currBalance.innerHTML = getBalance();
	}		
	
	setLogUrl("Log.jsp");

    if(shop.isCompatibleMode)
    {
        setEulaUrl("L_01.jsp");
    }
    else
    {
        setEulaUrl("L_03_UA_1.jsp");
    }

	
	MM_preloadImages('/oss/oss/common/images//banner/under_banner_a.gif');
	var supportsCreditCard = 'false';
	if (ecSupportsSession()) {
        	ec.setSessionValue("supportsCreditCard", supportsCreditCard);
    	}

    updateHistory();
	var isConnecting = isConnectingPage();
    setConnectingToServer(isConnecting);
    
    if (isHRPDisablePage()) {
	   	wiiDisableHRP();
	} else {
	   	wiiEnableHRP();
	}
}

<!--  -----------------------------------------------------  -->
<!--  Copyright 2005-2014 Acer Cloud Technology, Inc.        -->
<!--  All Rights Reserved.                                   -->
<!--                                                         -->
<!--  This software contains confidential information and    -->
<!--  trade secrets of Acer Cloud Technology, Inc.           -->
<!--  Use, disclosure or reproduction is prohibited without  -->
<!--  the prior express written permission of Acer Cloud     -->
<!--  Technology, Inc.                                       -->
<!--  -----------------------------------------------------  -->


// Takes a progress object and returns the OSS error message to be displayed to the user
function getOssErrorMsg(progress)
{
	if (progress.status >= 0) { return ""; }
	
    var status = progress.status;
    var errCode = progress.errCode;
    var errInfo = progress.errInfo;

    var msg;	

	var a = new Array();	
	// EC lib Errors
	//a[-(EC_ERROR_CANCELED)] = "???OSS_ERROR_NETWORK_TIMEOUT???";
	a[-(EC_ERROR_NET_NA)] = "There was a network error. Please check your Internet settings and your network configuration.<BR><BR>Visit support.nintendo.com for assistance.";
	a[-(EC_ERROR_ECARD)] = "The Wii Points Card activation number you entered is incorrect.<BR><BR>Visit support.nintendo.com for assistance.";
	a[-(EC_ERROR_REGISTER)] = "The Wii Number you entered is incorrect.<BR><BR>Visit support.nintendo.com for assistance.";
	a[-(EC_ERROR_ALREADY_OWN)] = "An error has occurred that cannot be resolved at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
	msg = a[-status];

    if (status == EC_ERROR_WS_REPORT) {
    	 msg = getWebServiceErrorMsg(errCode, errInfo);
    } else if (status == EC_ERROR_NET_CONTENT ||
               status == EC_ERROR_FAIL ||
    	       status == EC_ERROR_WS_RECV) {
    	if (errCode != null && errCode < 0) {
    	    var httpStatus = errCodeToHTTPStatus(errCode);
    	    var nhttpStatus = errCodeToNHTTPStatus(errCode);    
      	    if (nhttpStatus == 0 && shop.isCompatibleMode) {
    		    msg = "There was a network error. Check your settings under the Internet option in System Settings on the Wii U Menu.";
    		} else if (nhttpStatus == 0) {
    		    msg = "There was a network error. Please check your Internet settings and your network configuration.<BR><BR>Visit support.nintendo.com for assistance.";
    		} else if (nhttpStatus != 0) {
    		    msg = "An error has occurred that cannot be resolved at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
    		}
    	}
    }
        
    if (msg == null || msg == '') {
    	msg = "An error has occurred that cannot be resolved at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
	}
	return msg;
}

function setErrorHtmlMsg(elem, errorCode, errorMsg)
{
    var html =
	 	'<span class="warningRed">'
		+ "Error Code: <span id='errorCode'></span></span>"
		+ '<BR><span class="contentsRedM">' + errorMsg + '</span>';
	elem.innerHTML = html;
	document.getElementById("errorCode").innerHTML = errorCode;
}

function setErrorHtml(elem, progress)
{
	if (elem != null) {
	    var errorCode = getOssErrorCode(progress);
    	var errorMsg = getOssErrorMsg(progress);
    	setErrorHtmlMsg(elem, errorCode, errorMsg);
	}
}


// Web service error messages 
// (only include message that may potentially be displayed to user)
// (errCode is progress.errCode from a web service)
// (errInfo is progress.errInfo from a web service)
function getWebServiceErrorMsg(errCode, errInfo)
{
	var a = new Array();
	
	// ECS Errors
	a[617] = "The Wii Points Card activation number you entered is incorrect.<BR><BR>Visit support.nintendo.com for assistance.";
	a[618] = "This Wii Points Card cannot be used in your country.<BR><BR>Visit support.nintendo.com for assistance.";
	a[621] = "An error has occurred that cannot be resolved at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
	a[623]	= "You have downloaded this title before, and your trial period has expired. You cannot redownload it.<BR><BR>Visit support.nintendo.com for assistance.";
	a[642] = "An error has occurred that cannot be resolved at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
	a[643] = "An error has occurred that cannot be resolved at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
	a[644] = "Credit cards cannot be used on this console.<BR><BR>Please visit support.nintendo.com for assistance.";
	a[645] = "An error has occurred that cannot be resolved at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
	
	// ECS Gift Errors
	a[646] = "An error has occurred that cannot be resolved at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
	a[621] = "An error has occurred that cannot be resolved at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
	a[626] = "An error has occurred that cannot be resolved at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
	a[625] = "An error has occurred that cannot be resolved at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
	
	// ETS Errors
	a[705] = "An error has occurred that cannot be resolved at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
	a[706] = "An error has occurred that cannot be resolved at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
	a[707] = "An error has occurred that cannot be resolved at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
	
	// PAS Errors
	a[810]	= "An error has occurred while redeeming your Wii Download Ticket.<BR><BR>Visit support.nintendo.com for assistance.";
	a[811]	= "The Wii Points Card you entered has expired.";
	//a[812]	= "???OSS_ERROR_ECARD_NOT_USABLE???";
	//a[813]	= "???OSS_ERROR_ECARD_NOT_USABLE???";
	//a[814]	= "???OSS_ERROR_ECARD_NOT_USABLE???";
	a[815]	= "This Wii Points Card has already been redeemed.<BR><BR>Visit support.nintendo.com for assistance.";
	a[819]	= "The Wii Points Card activation number you entered is incorrect.<BR><BR>Visit support.nintendo.com for assistance.";
	
	a[826]	= "The server is busy.<BR><BR>Please try again later.";
	a[829]	= "The server is busy.<BR><BR>Please try again later.";
	a[830]	= "The Wii Points Card activation number you entered is incorrect.<BR><BR>Visit support.nintendo.com for assistance.";
	a[831] = "This Wii Points Card cannot be used in your country.<BR><BR>Visit support.nintendo.com for assistance.";

	// IAS Errors 
	a[901]	= "The Wii Number you entered is incorrect.<BR><BR>Visit support.nintendo.com for assistance.";
	a[903]	= "An error has occurred that cannot be resolved at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
	a[928] = "An error has occurred that cannot be resolved at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
	a[958]	= "An error has occurred that cannot be resolved at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
	a[942] = "Unable to confirm the Username at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
	a[943]	= "An error occurred while linking the Username. Please check the Username and password and try again.<BR><BR>If you have forgotten your Username or password, please visit club.nintendo.com.";

	a[941] = "An error occurred while linking the Username. Please check the Username and password and try again.<BR><BR>If you have forgotten your Username or password, please visit club.nintendo.com.";
	
	// More IAS Errors
	a[1401] = "An error occurred while linking the Username. Please check the Username and password and try again.<BR><BR>If you have forgotten your Username or password, please visit club.nintendo.com.";
	a[1402] = "Due to restrictions on your Club Nintendo Membership, it cannot be linked to this Wii Shop Channel account.<BR><BR>Visit support.nintendo.com for assistance.";
        a[1403] = "Due to restrictions on your Club Nintendo Membership, it cannot be linked to this Wii Shop Channel account.<BR><BR>Visit support.nintendo.com for assistance.";
	a[1499] = "Unable to confirm the Username at this time. The server is currently undergoing maintenance.<BR><BR>Sorry for the inconvenience. Please try again later.";
	
	// OSS Errors
	a[1610]	= "The Wii Download Ticket you entered has expired.";
	a[1611]	= "The Wii Download Ticket code you entered is incorrect.<BR><BR>Visit support.nintendo.com for assistance.";
	a[1612] = "This Wii Download Ticket cannot be used in your country.<BR><BR>Visit support.nintendo.com for assistance.";
	a[1613] = "There is no software available at this time for the Wii Download Ticket code you entered. Please check that you have entered the correct code.<BR><BR>NOTE: If you have activated Parental Controls, you may not be able to view all available software in the Wii Shop Channel. Please check your Parental Controls settings.";
	
	
	var msg = a[errCode];
	if(msg == null || msg == "") { // default errors
		if ((errCode >= 1400 && 
		     errCode <= 1499)) {
			msg = "Unable to confirm the Username at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance if this continues.";
		}
	}
	return msg;
}

// NOA errors
function getNOAError(code)
{
	var a=new Array();
	
	a[NOA_ERROR_CountyRequired] 				= "County is required.<BR><BR>Please try again.";
	a[NOA_ERROR_FoundOnBlacklist]				= "Unable to process.<BR><BR>For more information, visit support.nintendo.com.";
	a[NOA_ERROR_BillingAddress]                             = "The information you&rsquo;ve entered regarding your credit-card billing address is incorrect.<BR><BR>Please verify the information and try again.";
	a[NOA_ERROR_InvalidCardType]                            = "This credit-card number is invalid.<BR><BR>Please verify the information and try again.";
	a[NOA_ERROR_InvalidVfyValue]                            = "The credit-card information you&rsquo;ve entered is incorrect.<BR><BR>Please verify the information and try again.";
	a[NOA_ERROR_InvalidCcNumberAndExpDate]                  = "The credit-card information you&rsquo;ve entered is incorrect.<BR><BR>Please verify the information and try again.";
	a[NOA_ERROR_InvalidCreditCardNumber]			= "This credit-card number is invalid.<BR><BR>Please verify the information and try again.";
	a[NOA_ERROR_InvalidExpDate]				= "The credit-card information you&rsquo;ve entered is incorrect.<BR><BR>Please verify the information and try again.";
	a[NOA_ERROR_InvalidPostalCode]                          = "The postal code does not match the country settings entered in your Wii Settings.<BR><BR>Please verify the information and try again.";
	a[NOA_ERROR_TechnicalDifficulties]			= "Unable to confirm credit-card information at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance.";
	a[NOA_ERROR_TryAgainLater]				= "Unable to confirm credit-card information at this time. Please try again later.<BR><BR>Visit support.nintendo.com for assistance.";

	a[NOA_RESULT_ERROR_CreditCardDeclined]			= "This credit card can&rsquo;t be used.<BR><BR>Please contact your credit-card company for more information.";
	a[NOA_RESULT_ERROR_CreditCardDeclined_Funds]		= "This credit card can&rsquo;t be used.<BR><BR>Please contact your credit-card company for more information.";
	a[NOA_RESULT_ERROR_CreditCardDeclined_Inactive]		= "This credit card can&rsquo;t be used.<BR><BR>Please contact your credit-card company for more information.";
	a[NOA_RESULT_ERROR_CreditCardDeclined_Exp]		= "The credit-card expiration date is invalid.";
	a[NOA_RESULT_ERROR_CreditCardDeclined_Code]		= "The credit-card information you&rsquo;ve entered is incorrect.<BR><BR>Please verify the information and try again.";
	a[NOA_RESULT_ERROR_CreditCardDeclined_CCNum]		= "This credit-card number is invalid.<BR><BR>Please verify the information and try again.";
	a[NOA_RESULT_ERROR_CreditCardDeclined_Limit]            = "This credit card can&rsquo;t be used.<BR><BR>Please contact your credit-card company for more information.";
	a[NOA_RESULT_ERROR_CreditCardDeclined_Invalid]		= "The credit-card information you&rsquo;ve entered is incorrect.<BR><BR>Please verify the information and try again.";
	a[NOA_RESULT_ERROR_CreditCardDeclined_AVS]		= "Billing zip/postal code is invalid. Please verify the information and try again. ";

	a[NOA_ERROR_EmptyVfyValue]				= "Please enter the three-digit security code.";

	var msg = a[code];
	return msg;
}

// IAS errors
function isLoyaltyError(progress)
{
	if (progress.status == EC_ERROR_WS_REPORT) {
		if ((progress.errCode >= 1400 && 
		     progress.errCode <= 1499) ||
			(progress.errCode == 942) ||
			(progress.errCode == 943) ||
			(progress.errCode == 941)) {
			return true;
		}
	}
	return false;
}	

function needCheckRegistration(progress)
{
	if (progress.status == EC_ERROR_WS_REPORT) {
		if ((progress.errCode == 903) ||
		     (progress.errCode == 642) ||
		     (progress.errCode == 625)) {
			return true;
		}
	}
	return false;		
}

function needSyncEticket(progress)
{
	if (progress.status == EC_ERROR_WS_REPORT) {
		if (progress.errCode == 621) {
			return true;
		}
	}
	return false;		
}



//-->

</script>
<title>Gift Confirmation</title>
<style type="text/css">
  /* B_09:  Confirm Software Purchase */


#text01-01 {
	position:absolute;
	left:29px;
	top:28px;
	width:442px;
	height:28px;
	z-index:28;
}
#goodsconfirmation {
	position:absolute;
	left:36px;
	top:85px;
	width:537px;
	height:225px;
	z-index:30;
}
#text03-01 {
	position:absolute;
	left:40px;
	top:141px;
	width:293px;
	height:18px;
	z-index:58;
}
#text04-01 {
	position:absolute;
	left:40px;
	top:160px;
	width:293px;
	height:18px;
	z-index:55;
}
#text05-01 {
	position:absolute;
	left:40px;
	top:182px;
	width:293px;
	height:18px;
	z-index:51;
}
#text06-01 {
	position:absolute;
	left:40px;
	top:206px;
	width:293px;
	height:18px;
	z-index:45;
}
#text07-01 {
	position:absolute;
	left:40px;
	top:225px;
	width:293px;
	height:18px;
	z-index:42;
}
#text08-01 {
	position:absolute;
	left:40px;
	top:247px;
	width:293px;
	height:18px;
	z-index:39;
}
#pointcost01 {
	position:absolute;
	left:340px;
	top:141px;
	width:90px;
	height:18px;
	z-index:57;
}
#confirmation {
	position:absolute;
	left:36px;
	top:320px;
	width:538px;
	height:30px;
	z-index:60;
}
#pointword02 {
	position:absolute;
	left:340px;
	top:160px;
	width:90px;
	height:18px;
	z-index:54;
}
#pointword03 {
	position:absolute;
	left:340px;
	top:182px;
	width:90px;
	height:18px;
	z-index:50;
}
#blockcost01 {
	position:absolute;
	left:340px;
	top:206px;
	width:90px;
	height:18px;
	z-index:44;
}
#blockcost02 {
	position:absolute;
	left:340px;
	top:225px;
	width:90px;
	height:18px;
	z-index:41;
}
#blockcost03 {
	position:absolute;
	left:340px;
	top:247px;
	width:90px;
	height:18px;
	z-index:38;
}
#text02-01 {
	position:absolute;
	left:40px;
	top:270px;
	width:528px;
	height:20px;
	z-index:59;
}
#pointword01 {
	position:absolute;
	left:437px;
	top:141px;
	width:130px;
	height:18px;
	z-index:56;
}
#points02 {
	position:absolute;
	left:437px;
	top:160px;
	width:130px;
	height:18px;
	z-index:53;
}
#pointos03 {
	position:absolute;
	left:437px;
	top:182px;
	width:130px;
	height:18px;
	z-index:46;
}
#blockword01 {
	position:absolute;
	left:437px;
	top:206px;
	width:130px;
	height:18px;
	z-index:43;
}
#blockword02 {
	position:absolute;
	left:437px;
	top:225px;
	width:130px;
	height:18px;
	z-index:40;
}
#blockword03 {
	position:absolute;
	left:437px;
	top:247px;
	width:130px;
	height:18px;
	z-index:34;
}
#TitleName1stline {	position:absolute;
	left:64px;
	top:88px;
	width:480px;
	z-index:37;
}
#TitleName2stline {	position:absolute;
	left:64px;
	top:112px;
	width:480px;
	z-index:36;
}
#selectionMessage {
    position:absolute;
    left:46px;
    top:71px;
    width:517px;
    height:98px;
}
#nandDLButton {
    position:absolute;
    left:46px;
    top:169px;
    width:236px;
    height:184px;
}
#banner01 {
    position:absolute;
    left:0px;
    top:0px;
    width:100%;
    height:100%;
    z-index:28;
}
#text01 {
    position:absolute;
    left:8px;
    top:116px;
    width:220px;
    height:54px;
    z-index:29;
}
#spacer01 {
    position:absolute;
    left:0px;
    top:0px;
    width:100%;
    height:100%;
    z-index:30;
}


#sdDLButton {
    position:absolute;
    left:326px;
    top:169px;
    width:236px;
    height:184px;
}
#banner02 {
    position:absolute;
    left:0px;
    top:0px;
    width:100%;
    height:100%;
    z-index:28;
}
#text02 {
    position:absolute;
    left:8px;
    top:116px;
    width:220px;
    height:54px;
    z-index:29;
}
#spacer02 {
    position:absolute;
    left:0px;
    top:0px;
    width:100%;
    height:100%;
    z-index:30;
}
#sdDisable {
	position:absolute;
	left:0px;
	top:0px;
	width:100%;
	height:100%;
	z-index:40;
}

#coolingoff {
	position:absolute;
	left:34px;
	top:94px;
	width:542px;
	height:81px;
	z-index:28;
}</style>

<!--  -----------------------------------------------------  -->
<!--  Copyright 2005-2014 Acer Cloud Technology, Inc.        -->
<!--  All Rights Reserved.                                   -->
<!--                                                         -->
<!--  This software contains confidential information and    -->
<!--  trade secrets of Acer Cloud Technology, Inc.           -->
<!--  Use, disclosure or reproduction is prohibited without  -->
<!--  the prior express written permission of Acer Cloud     -->
<!--  Technology, Inc.                                       -->
<!--  -----------------------------------------------------  -->
<script type="text/JavaScript">
<!--

function getSCAUserStatus(){
  var isSilverSCA = "";
  var isGoldSCA = "";
  if(ecSupportsSession()){
    isSilverSCA = ec.getSessionValue("silverStatus");
            isGoldSCA = ec.getSessionValue("goldStatus");
  }
  if(isGoldSCA == "ACTIVATED"){
      return "SCAGOLD";
  }else if(isSilverSCA == "ACTIVATED"){
      return "SCASILVER";
  }else{
      return "";
  }
}
function getSCAUserDiscountType(){
  var status = getSCAUserStatus();
  if(status == "SCAGOLD") {
      return ec.getSessionValue("goldDiscountType");
  }else if(status == "SCASILVER"){
      return ec.getSessionValue("silverDiscountType");
  }else{
      return "";
  }
}

//-->
</script>
<!--  -----------------------------------------------------  -->
<!--  Copyright 2005-2014 Acer Cloud Technology, Inc.        -->
<!--  All Rights Reserved.                                   -->
<!--                                                         -->
<!--  This software contains confidential information and    -->
<!--  trade secrets of Acer Cloud Technology, Inc.           -->
<!--  Use, disclosure or reproduction is prohibited without  -->
<!--  the prior express written permission of Acer Cloud     -->
<!--  Technology, Inc.                                       -->
<!--  -----------------------------------------------------  -->
<script type="text/JavaScript">
<!--

var supportSCA = ("false" == "true");

function isScaGiftable(titleId) {
	if(!supportSCA) {
		return false;
	}
	if(titleId == null || titleId == "") {
		return false;
	}
	if(getSCAUserStatus() == "") {
		return false;
	}

	var scaGiftableTitlesString = ec.getSessionValue("scaGiftableList"); 
	trace("giftTitle " + titleId); 
	trace("scaGiftableList: " + scaGiftableTitlesString); 

	if(scaGiftableTitlesString == null) {
		return false;
	}
	
	var scaGiftableTitleArray = scaGiftableTitlesString.split(","); 
	var size = scaGiftableTitleArray.length; 
	for(i=0; i<size; i++) { 
		if(scaGiftableTitleArray[i] == titleId) { 
			return true;
		} 
	} 

	return false;
}

function getScaDiscount() {
	if(!supportSCA) {
		return "0";
	}
	var discountList = new Array(); 
	discountList['SCA10']  = ec.getSessionValue("sca10DiscountAmount");
	discountList['SCA20']  = ec.getSessionValue("sca20DiscountAmount");
	discountList['SCA20B'] = ec.getSessionValue("sca20BDiscountAmount");

	var discount = discountList[getSCAUserDiscountType()]; 
	trace("SCA discount: " + discount); 
	if((typeof(discount) != 'undefined') && (discount != "") && (discount != null)) {
		return discount;
	} else {
		return "0";
	}
}

function getScaPurchaseInfo(){
	if(!supportSCA) {
		return "";
	}

	var purchaseInfoList = new Array(); 
	purchaseInfoList['SCA10']  = ec.getSessionValue("sca10DiscountXml");
	purchaseInfoList['SCA20']  = ec.getSessionValue("sca20DiscountXml");
	purchaseInfoList['SCA20B'] = ec.getSessionValue("sca20BDiscountXml");
   
	var purchaseInfo = purchaseInfoList[getSCAUserDiscountType()]; 
	trace("SCA purchaseInfo: " + purchaseInfo);	
	if((typeof(purchaseInfo) != 'undefined') && (purchaseInfo != null)) {
		return purchaseInfo;
	} else {
		return "";
	}
}

function getScaGiftDiscount(titleId) {
	if(isScaGiftable(titleId)) {
        return getScaDiscount();
	 } else {
		return "0";
	}	
}

function getScaGiftPurchaseInfo(titleId) {
	if(isScaGiftable(titleId)) {
        return getScaPurchaseInfo();
	} else {
		return "";
	}
}

function removeScaGiftableTitle(titleId) {
	var scaGiftableTitlesString = ec.getSessionValue("scaGiftableList"); 
	trace("scaGiftableList(old): " + scaGiftableTitlesString); 
    if(scaGiftableTitlesString != null){
	    scaGiftableTitlesString = scaGiftableTitlesString.replace(titleId, "").replace(",,", ",");
    }
	trace("scaGiftableList(new): " + scaGiftableTitlesString); 
	ec.setSessionValue("scaGiftableList", scaGiftableTitlesString);
}

function getIcrDiscount() {
    if(getICRUserDiscountType() == "ICR1"){
        return ec.getSessionValue("icrDiscountAmount");
    }else{
        return "0";
    }
}

function getIcrPurchaseInfo() {
    if(getICRUserDiscountType() == "ICR1"){
        return ec.getSessionValue("icrDiscountXml");
    }else{
        return "";
    }
}
//-->
</script>
<%
String titleId = request.getParameter("titleId") == null ? "" : request.getParameter("titleId");
String targetURL = "http://127.0.0.1:8082/getTitle?titleId=" + titleId;
%>
<%
StringBuilder res = new StringBuilder();

try {
    URL url2 = new URL(targetURL);
    HttpURLConnection connection = (HttpURLConnection) url2.openConnection();
    connection.setRequestMethod("GET");

    int responseCode = connection.getResponseCode();
    BufferedReader reader;

    if (responseCode == HttpURLConnection.HTTP_OK) {
        reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
    } else {
        reader = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
    }

    String line;
    while ((line = reader.readLine()) != null) {
        res.append(line);
    }
    reader.close();
} catch (Exception e) {
    e.printStackTrace();
    res.append("Error: ").append(e.getMessage());
}

String games = res.toString();
//Tmd size stuff
String tmdUrl = "http://198.62.122.200/ccs/download/" + titleId + "/tmd";
StringBuilder tmdRes = new StringBuilder();
long tmdSize = 0;
try {
    URL url3 = new URL(tmdUrl);
    HttpURLConnection connection = (HttpURLConnection) url3.openConnection();
    connection.setRequestMethod("GET");
    tmdSize = connection.getContentLengthLong();
    int responseCode = connection.getResponseCode();
    BufferedReader reader;

    if (responseCode == HttpURLConnection.HTTP_OK) {
        reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
    } else {
        reader = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
    }

    String line;
    //String contentLength = connection.getHeaderField("Content-Length");
    //tmdSize = contentLength;
    while ((line = reader.readLine()) != null) {
        tmdRes.append(line);
    }
    reader.close();
} catch (Exception e) {
    //e.printStacktrace(out);
    res.append("Error: ").append(e.getMessage());
}
%>
<%
// Parse JSON response
JSONObject title = new JSONObject(games);
String id = title.getString("id").replace("00010002", "00010001");
String title1 = title.getString("title1");
String title2 = title.getString("title2");
String platform = title.getString("console");
if (platform.equals("WII")) {
    platform = "Wii Channels";
} else if (platform.equals("WIIWARE")) {
    platform = "WiiWare";
};
String releaseDate = title.getString("date");
String genre = title.getString("genre");
String publisher = title.getString("publisher");
String points = title.getString("points");
String latestVersion = title.getString("titleVersion");
String size = title.getString("size");
%>
<script type="text/JavaScript">
<!--
var titleId = '<%= request.getParameter("titleId") == null ? "" : request.getParameter("titleId") %>';
var titleSize = '<%= size %>';
var titlePoints = '<%= points %>';



var nwc24 = new wiiNwc24 ;
var friendIndex = parseInt('request.getParameter("recipient") == null ? "" : request.getParameter("recipient")');
var friendName = nwc24.getFriendInfo(friendIndex, "name");
friendName = encodeHTML(friendName);
var friendCode = nwc24.getFriendInfo(friendIndex, "userId");

function initPage()
{
	initPageCommon();
	var giftTitleUrl = 'B_22.jsp?titleId=<%= id %>&itemId=101449&recipient=<%= request.getParameter("recipient") %>';
	MM_preloadImages('/oss/oss/common/images//banner/under_banner_b.gif','/oss/oss/common/images//banner/help_b.gif','/oss/oss/common/images//banner/top_b.gif');
	setUnderButtonL(true, 'Yes', "javascript:showPage('" + giftTitleUrl + "')", "wiiSelectSound()");
	setUnderButtonR(true, 'No', "javascript:showBack()", "wiiCancelSound()");
	// show points
	var t = ec.getTitleInfo (titleId);	
	var latestVersion = parseInt('<%= latestVersion %>');
	var currentBalance = getBalance();
	var remainingBalance = currentBalance - titlePoints;
	document.getElementById("pointcost01").innerHTML = 
		'<div align="right" class="catalogTitleBlack_01">' + currentBalance + '</div>';
	document.getElementById("pointword02").innerHTML = 
		'<div align="right" class="contentsRedM">' + titlePoints + '</div>';
	document.getElementById("pointword03").innerHTML =
		'<div align="right" class="catalogTitleBlack_01">' + remainingBalance + '</div>';
	var recipientName = document.getElementById("recipientName");
	if (recipientName != null) {
		recipientName.innerHTML = friendName;
	}
  var selectedMiiIdx = ec.getSessionValue("selectedMiiIdx");
  trace("selectedMiiIdx::::"+selectedMiiIdx);
}

function getUrlParameter(name) {
    name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
    var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
    var results = regex.exec(location.search);
    return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
}
//-->
</script>
</head>

<body onload="initPage();">
<!--  -----------------------------------------------------  -->
<!--  Copyright 2005-2014 Acer Cloud Technology, Inc.        -->
<!--  All Rights Reserved.                                   -->
<!--                                                         -->
<!--  This software contains confidential information and    -->
<!--  trade secrets of Acer Cloud Technology, Inc.           -->
<!--  Use, disclosure or reproduction is prohibited without  -->
<!--  the prior express written permission of Acer Cloud     -->
<!--  Technology, Inc.                                       -->
<!--  -----------------------------------------------------  -->
<div id="constElements">
  <div id="tophelpshadow"><img src="/oss/oss/common/images//banner/top_help_shadow01.gif" width="132" height="75" /></div>
  <div id="help">
    <img src="/oss/oss/common/images//banner/help_a.gif" name="ManualImage"
     width="52" height="55" border="0" id="ManualImageID"  onmouseout="MM_swapImgRestore()" 
     onmouseover="MM_swapImage('ManualImage','','/oss/oss/common/images//banner/help_b.gif',1); wiiFocusSound();"
     onclick="showHelp(); wiiSelectSound();"/>
    <img src="/oss/oss/common/images//banner/help_gray.gif" 
     width="52" height="55" border="0" id="ManualGrayImageID" style="display:none" />
    <img src="/oss/oss/common/images//spacer.gif" name="HelpSpacer" width="52" height="55" border="0"
     id='HelpSpacer' style="position:absolute; top:0px; left:0px; display:none"/>
  </div>

  <div id="top">
    <img src="/oss/oss/common/images//banner/top_a.gif" name="TopImage" 
     width="52" height="55" border="0" id="TopImageID" onmouseout="MM_swapImgRestore()" 
     onmouseover="MM_swapImage('TopImage','','/oss/oss/common/images//banner/top_b.gif',1); wiiFocusSound();"
     onclick="showHome(); wiiCancelSound();"/>
    <img src="/oss/oss/common/images//banner/top_gray.gif" 
     width="52" height="55" border="0" id="TopGrayImageID" style="display:none" />
    <img src="/oss/oss/common/images//spacer.gif" name="MainSpacer" width="52" height="55" border="0"
     id='MainSpacer' style="position:absolute; top:0px; left:0px; display:none"/>
  </div>
  
  <div class="dot" id="line01">･･･････････････････････････････････････････････････････････&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;･･</div>
  <div class="dot" id="line02">･･･････････････････････････････････････････････････････････････････････････</div>
  <div class="dot" id="upperLineLong" style="display:none">･･･････････････････････････････････････････････････････････････････････････</div>
  
  <div id='balanceInfo'>
    <script type="text/JavaScript">MM_preloadImages('/oss/oss/common/images//banner/Addpoints_everywhere.gif');</script>
    <img src="/oss/oss/common/images//spacer.gif" name="PointSpacer" width="130" height="55" border="0"
     id='PointSpacer' style="position:absolute; top:376px; left:239px; z-index:20;"/>
    <div id="Wiipoint">
      <div align="center" class="buttonTextBlackM">Wii Points</div>
    </div>
    <div id="point" class="wiiPoint"><span id="currentBalance"></span></div>
  </div>
</div>
<!--  -----------------------------------------------------  -->
<!--  Copyright 2005-2014 Acer Cloud Technology, Inc.        -->
<!--  All Rights Reserved.                                   -->
<!--                                                         -->
<!--  This software contains confidential information and    -->
<!--  trade secrets of Acer Cloud Technology, Inc.           -->
<!--  Use, disclosure or reproduction is prohibited without  -->
<!--  the prior express written permission of Acer Cloud     -->
<!--  Technology, Inc.                                       -->
<!--  -----------------------------------------------------  -->
<script language="JavaScript">MM_preloadImages('/oss/oss/common/images//banner/under_banner_b.gif');</script>
<div id="underButtonL" style="display:none">
    <div id="underbannershadowL" class="buttonBannerShadow">
   	  <img src="/oss/oss/common/images//banner/under_banner_shadow.gif" width="211" height="75" />
   	</div>
    <div id="underbannerL" class="buttonBanner">
    	<img src="/oss/oss/common/images//banner/under_banner_a.gif" width="187" height="55" id="underImgL" />
    </div>
    <div id="underspacerL" class="buttonSpacer">
	  <a href="" id="underlinkL">
    	<img id="underimageL" src="/oss/oss/common/images//spacer.gif" width="187" height="55" border="0"  
    	onmouseover="MM_swapImage('underImgL','','/oss/oss/common/images//banner/under_banner_b.gif',1); snd.playSE( cSE_Forcus );" 
    	onmouseout="MM_swapImgRestore()"/>
      </a>	
    </div>
    <div id="underwordL" align="center" class="buttonTextBlackM buttonWord">
    </div>
</div>

<div id="underButtonR" style="display:none">
    <div id="underbannershadowR" class="buttonBannerShadow">
   	  <img src="/oss/oss/common/images//banner/under_banner_shadow.gif" width="211" height="75" />
   	</div>
    <div id="underbannerR" class="buttonBanner">
    	<img src="/oss/oss/common/images//banner/under_banner_a.gif" width="187" height="55" id="underImgR" />
    </div>
    <div id="underspacerR" class="buttonSpacer">
	  <a href="" id="underlinkR">
    	<img id="underimageR" src="/oss/oss/common/images//spacer.gif" width="187" height="55" border="0"  
    	onmouseover="MM_swapImage('underImgR','','/oss/oss/common/images//banner/under_banner_b.gif',1); snd.playSE( cSE_Forcus ); " 
    	onmouseout="MM_swapImgRestore()"/>
      </a>	
    </div>
    <div id="underwordR" align="center" class="buttonTextBlackM buttonWord">
    </div>
</div>

<div id="underButton" style="display:none">
    <div id="underbannershadow" class="buttonBannerShadow">
    	<img src="/oss/oss/common/images//banner/under_banner_shadow.gif" width="211" height="75" /></div>
    <div id="underbanner" class="buttonBanner">
    	<img src="/oss/oss/common/images//banner/under_banner_a.gif" width="187" height="55" id="underImg" /></div>
    <div id="underspacer" class="buttonSpacer">
	<a href="" id="underlink">
    	<img id="underimage" src="/oss/oss/common/images//spacer.gif" width="187" height="55" border="0" 
    	onmouseover="MM_swapImage('underImg','','/oss/oss/common/images//banner/under_banner_b.gif',1); snd.playSE( cSE_Forcus );" 
    	onmouseout="MM_swapImgRestore()">
    	</a>
    </div>
    <div id="underword" align="center" class="buttonTextBlackM buttonWord"></div>
</div>


<div id="goodsconfirmation"><img src="/oss/oss/common/images//banner/goods_confirmation.gif" width="537" height="225" /></div>

<div id="text03-01">
  <div align="center" class="catalogTitleBlack_01">
    <div align="right">Current Wii Points:</div>
  </div>
</div>
<div id="text04-01">
  <div align="center" class="contentsRedM">
    <div align="right">Wii Points to give gift:</div>
  </div>
</div>
<div id="text01-01">
  <div align="left" class="titleBlackL">Gift Confirmation</div>
</div>
<div id="confirmation">
  <div align="center" ><span class="headerBlueL">Give this software now?</span></div>
</div>
<div id="text05-01">
  <div align="center" class="catalogTitleBlack_01">
    <div align="right">Wii Points after gift:</div>
  </div>
</div>
<div id="pointcost01">
  <div align="right" class="catalogTitleBlack_01"></div>
</div>
<div id="pointword02">
  <div align="right" class="contentsRedM"></div>
</div>
<div id="pointword03">
  <div align="right" class="catalogTitleBlack_01"></div>
</div>
<div id="blockcost02">
  <div align="right" class="contentsRedM"></div>
</div>
<div id="blockcost01">
  <div align="right" class="catalogTitleBlack_01"></div>
</div>
<div id="blockcost03">
  <div align="right" class="catalogTitleBlack_01"></div>
</div>
<div id="pointword01">
  <div align="center">
    <div align="center" class="catalogTitleBlack_01">Wii Points</div>
  </div>
</div>
<div id="points02">
  <div align="center">
    <div align="center" class="contentsRedM">Wii Points</div>
  </div>
</div>
<div id="pointos03">
  <div align="center">
    <div align="center" class="catalogTitleBlack_01">Wii Points</div>
  </div>
</div>
<div id="text02-01">
  <div align="center">
    <div id="BuyMsg" align="left" class="buttonTextWhiteS_01">
      You are going to give this software to <span id="recipientName"></span>.</div>
  </div>
</div>
<div style="overflow:hidden" nowrap id="TitleName1stline">
  <div align="center" class="contentsBlueM"><%= title1 %></div>
</div>
<% if (title2 != "") { %>
<div style="overflow:hidden" nowrap id="TitleName2ndline">
	<div align="center" class="contentsBlueM"><%= title2 %></div>
  </div>
<% } %>
</body>
</html>