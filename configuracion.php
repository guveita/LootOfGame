<?php
define('ProPayPal', 0);
if(ProPayPal){
    define("PayPalClientId", "*********************");
    define("PayPalSecret", "*********************");
    define("PayPalBaseUrl", "https://api.paypal.com/v1/");
    define("PayPalENV", "production");
} else {
    define("PayPalClientId", "AQ9m_lrimxbg6TKSc5yuw3MlwvBZ0D6znbpursrgHfTUBTGmjRORaIvlDZrT3b3JjYKfuJXfzRRZoL29");
    define("PayPalSecret", "EN5GGXb3Xg1JVceC7n79BtsYpORE5F95b97QIrErsMYIFcSsPiuvOLH0Gs9GAWJc511BGBlVilX1wY9K");
    define("PayPalBaseUrl", "https://www.sandbox.paypal.com/cgi-bin/webscr");
    define("PayPalENV", "sandbox");
}
?>
