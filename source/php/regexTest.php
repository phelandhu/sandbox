<?php
$string = 'admin_login|s:6:"4321@M";admin_login_id';
preg_match("#\\{admin_login|s:\\}(.+)\\{/;admin_login_id';\\}#s",$string,$matches);
echo count($matches);
//$match = $matches[0];

//echo $match;


function getInbetweenStrings($start, $end, $str){
    $matches = array();
    $regex = "/$start([a-zA-Z0-9_@]*)$end/";
    preg_match_all($regex, $str, $matches);
    return $matches[1];
}


$str = 'customer_currency|s:3:"USD";betshop_operator_cash_id|s:1:"1";operator_cash_id|s:1:"1";operator_currency|s:3:"USD";betshop_currency|s:3:"USD";currency|s:3:"USD";betshop_currency_value|s:10:"1.00000000";currency_value|s:10:"1.00000000";betshop_currency_symbol_left|s:1:"$";betshop_currency_symbol_right|s:0:"";betshop_currency_decimal_point|s:1:".";betshop_currency_thousands_point|s:1:",";betshop_currency_decimal_places|s:1:"2";price_format|s:2:"US";session_event_id|s:0:"";logged_in|b:1;userdata|a:18:{s:7:"user_id";s:3:"348";s:8:"group_id";s:2:"48";s:9:"logged_in";b:1;s:11:"permissions";s:255:"011111111111111111111111111111110001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101111111111110111111111110011111111111111111111111111111100000000000000000000";s:6:"office";s:2:"10";s:22:"group_default_line_set";s:3:"100";s:21:"group_default_profile";s:1:"1";s:10:"details_id";s:3:"392";s:9:"user_name";s:6:"4321@M";s:10:"start_page";s:2:"13";s:17:"alert_permissions";s:15:"000000000000000";s:14:"ticker_profile";s:1:"0";s:16:"group_short_name";s:1:"m";s:11:"office_name";s:1:"M";s:11:"head_office";b:0;s:16:"publishing_login";s:1:"m";s:19:"publishing_password";s:1:"m";s:8:"agent_id";s:1:"1";}admin_session_time|i:1374611495;admin_login|s:6:"4321@M";admin_login_id|s:3:"348";admin_password|s:32:"25d55ad283aa400af464c76d713c07ad";otc_terminal_id|s:4:"4531";OVER_THE_COUNTER|b:1;api_betslip_terminal_identifier|s:5:"22012";bet_placement_alert|N;CUSTOMER_LOGGED_IN|b:1;customer_id|s:3:"161";customers_username|s:9:"FLEX22012";customer_profile_id|s:1:"1";customer_wager_limit_net|s:5:"50000";customer_wager_limit_phone|s:5:"50000";customer_wager_limit_type|s:1:"1";customer_wager_limit_usage|s:1:"2";customer_office|s:1:"1";betshop_office_id|s:1:"1";terminal_name|s:5:"22012";disable_admin_racing|N;disable_betshop_racing|N;disable_admin_sports|N;disable_betshop_sports|N;dbSessionId|s:4:"3352";current_language_code|s:2:"en";betshop_default_profile|s:1:"1";betshop_default_line_set|s:3:"100";_api_cart|O:11:"bettingSlip":43:{s:8:"contents";a:0:{}s:5:"total";i:0;s:13:"multi_warning";s:0:"";s:28:"same_horse_reduction_warning";b:0;s:15:"selection_names";a:0:{}s:11:"event_names";a:0:{}s:10:"event_data";a:0:{}s:14:"multiple_names";a:0:{}s:17:"multiple_counters";a:0:{}s:9:"multiples";a:0:{}s:14:"multi_validate";a:0:{}s:15:"multiple_counts";a:0:{}s:15:"multiple_prices";a:0:{}s:12:"market_names";a:0:{}s:18:"trans_market_names";a:0:{}s:8:"*slots";N;s:15:"open_selections";i:0;s:11:"open_bet_id";b:0;s:6:"ifbets";a:0:{}s:18:"custom_multi_price";a:0:{}s:18:"prior_price_change";b:0;s:23:"selection_intercept_ids";a:0:{}s:20:"multiples_intercepts";a:0:{}s:27:"multiples_intercepts_status";a:0:{}s:27:"exceeded_max_multiple_price";b:0;s:30:"exceeded_max_round_robin_price";a:0:{}s:22:"markets_decimal_places";s:1:"8";s:11:"customer_id";i:0;s:7:"account";N;s:5:"score";a:0:{}s:6:"errors";a:0:{}s:7:"context";i:3;s:26:"betshop_betback_authorised";b:0;s:17:"allow_custom_bets";b:0;s:21:"allow_limits_override";b:0;s:10:"selections";a:0:{}s:27:"bettingSlipexotic_betting";N;s:16:"betteroddsparlay";N;s:11:"terminal_id";N;s:29:"is_checkout_confirmation_step";b:0;s:15:"multiple_limits";a:0:{}s:4:"keys";a:0:{}s:7:"exotics";a:0:{}}BETSLIP_BANKERS|a:1:{i:0;a:0:{}};';
$str_arr = getInbetweenStrings('admin_login|s:[0-9]*:"', '";admin_login_id', $str);

print_r($str_arr);

$str = 'customer_currency|s:3:"USD";betshop_operator_cash_id|s:1:"1";operator_cash_id|s:1:"1";operator_currency|s:3:"USD";betshop_currency|s:3:"USD";currency|s:3:"USD";betshop_currency_value|s:10:"1.00000000";currency_value|s:10:"1.00000000";betshop_currency_symbol_left|s:1:"$";betshop_currency_symbol_right|s:0:"";betshop_currency_decimal_point|s:1:".";betshop_currency_thousands_point|s:1:",";betshop_currency_decimal_places|s:1:"2";price_format|s:2:"US";session_event_id|s:0:"";logged_in|b:1;userdata|a:18:{s:7:"user_id";s:3:"301";s:8:"group_id";s:2:"48";s:9:"logged_in";b:1;s:11:"permissions";s:255:"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011110001100000000000000000000";s:6:"office";s:2:"10";s:22:"group_default_line_set";s:3:"100";s:21:"group_default_profile";s:1:"1";s:10:"details_id";s:3:"343";s:9:"user_name";s:7:"11111@M";s:10:"start_page";s:2:"13";s:17:"alert_permissions";s:15:"000000000000000";s:14:"ticker_profile";s:1:"0";s:16:"group_short_name";s:1:"m";s:11:"office_name";s:1:"M";s:11:"head_office";b:0;s:16:"publishing_login";s:0:"";s:19:"publishing_password";s:0:"";s:8:"agent_id";s:1:"1";}admin_session_time|i:1374612813;admin_login|s:7:"11111@M";admin_login_id|s:3:"301";admin_password|s:32:"25f9e794323b453885f5181f1b624d0b";otc_terminal_id|s:4:"4520";OVER_THE_COUNTER|b:1;api_betslip_terminal_identifier|s:5:"22001";bet_placement_alert|N;CUSTOMER_LOGGED_IN|b:1;customer_id|s:3:"150";customers_username|s:9:"FLEX22001";customer_profile_id|s:1:"1";customer_wager_limit_net|s:5:"50000";customer_wager_limit_phone|s:5:"50000";customer_wager_limit_type|s:1:"1";customer_wager_limit_usage|s:1:"2";customer_office|s:1:"1";betshop_office_id|s:1:"1";terminal_name|s:5:"22001";disable_admin_racing|N;disable_betshop_racing|N;disable_admin_sports|N;disable_betshop_sports|N;dbSessionId|s:4:"3353";current_language_code|s:2:"en";otc_card_id|s:4:"6049";betshop_default_profile|s:1:"1";betshop_default_line_set|s:3:"100";api_betslip_random_string|s:32:"9rGaebf23OA757exNk17NVAH0RXvIFTn";_api_cart|O:11:"bettingSlip":43:{s:8:"contents";a:0:{}s:5:"total";i:0;s:13:"multi_warning";s:0:"";s:28:"same_horse_reduction_warning";b:0;s:15:"selection_names";a:0:{}s:11:"event_names";a:0:{}s:10:"event_data";a:0:{}s:14:"multiple_names";a:0:{}s:17:"multiple_counters";a:0:{}s:9:"multiples";a:0:{}s:14:"multi_validate";a:0:{}s:15:"multiple_counts";a:0:{}s:15:"multiple_prices";a:0:{}s:12:"market_names";a:0:{}s:18:"trans_market_names";a:0:{}s:8:"*slots";N;s:15:"open_selections";i:0;s:11:"open_bet_id";b:0;s:6:"ifbets";a:0:{}s:18:"custom_multi_price";a:0:{}s:18:"prior_price_change";b:0;s:23:"selection_intercept_ids";a:0:{}s:20:"multiples_intercepts";a:0:{}s:27:"multiples_intercepts_status";a:0:{}s:27:"exceeded_max_multiple_price";b:0;s:30:"exceeded_max_round_robin_price";a:0:{}s:22:"markets_decimal_places";s:1:"8";s:11:"customer_id";i:0;s:7:"account";N;s:5:"score";a:0:{}s:6:"errors";a:0:{}s:7:"context";i:3;s:26:"betshop_betback_authorised";b:0;s:17:"allow_custom_bets";b:0;s:21:"allow_limits_override";b:0;s:10:"selections";a:0:{}s:27:"bettingSlipexotic_betting";N;s:16:"betteroddsparlay";N;s:11:"terminal_id";N;s:29:"is_checkout_confirmation_step";b:0;s:15:"multiple_limits";a:0:{}s:4:"keys";a:0:{}s:7:"exotics";a:0:{}}default_language_code|s:2:"en";BETSLIP_BANKERS|a:1:{i:0;a:0:{}}api_betslip_related_betslip_id|N;agent_referrer|N;';
$str_arr = getInbetweenStrings('admin_login|s:[0-9]*:"', '";admin_login_id', $str);

print_r($str_arr);