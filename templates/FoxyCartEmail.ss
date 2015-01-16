{% set price_width = 40 %}


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
	<head style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<title style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">FoxyCart</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
		<meta http-equiv="Content-Language" content="en-us" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
	    <% require themedCSS('reset') %>
	    <% require themedCSS('typography') %>
	    <% require themedCSS('form') %>
	    <% require themedCSS('layout') %>

		<style type="text/css" media="screen">
		/* -------------------------------------------
		        PHONE
		        For clients that support media queries.
		        Nothing fancy.
		-------------------------------------------- */
		@media only screen and (max-width: 600px) {
		    .fc-show {
		        display: inline;
		    }
		    .fc-hide {
		        display: none;
		    }
		    .fc-column {
		        width: 100% !important;
		        float: none!important;
		    }
		    #fc-header .fc-column, #fc-header #fc-subject {
		        text-align: center !important;
		        padding: 0px;
		    }
		    #fc-header #fc-logo, #fc-header #fc-subject {
		        height: auto !important;
		        line-height: normal !important;
		    }
		    #fc-header #fc-logo {
		        padding-top: 20px;
		        padding-bottom: 10px;
		    }
		    #fc-header #fc-subject {
		        padding-top: 10px;
		        padding-bottom: 20px;
		    }
		    #fc-main {
		        padding: 20px;
		    }
		    #fc-order-summary {
		        margin-bottom: 30px;
		    }
		    #fc-cart tbody td.image img {
		        max-width: 45px;
		    }
		}
		</style>
    </head>
	<body bgcolor="#FFFFFF" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;-webkit-font-smoothing: antialiased;-webkit-text-size-adjust: none;height: 100%;background-image: url(/static/images/slices/background.png);background-position: top;background-repeat: repeat;background-color: #eeeeee;color: #333333;font-size: 13px;width: 100%;">

		<!-- WRAPPER -->
		<table cellspacing="0" cellpadding="0" class="wrapper" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;width: 100%;">
		    <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
		        <td class="fc-container" style="margin: 0 auto;padding: 10px;font-family: Verdana, Helvetica, Arial, sans-serif;display: block;max-width: 600px;clear: both;">
		            <div class="fc-content" style="margin: 0 auto;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;max-width: 600px;display: block;">
		
		                <!-- LINKS -->
		                <table cellspacing="0" cellpadding="0" id="fc-links" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;width: 100%;margin-top: 20px;margin-bottom: 10px;text-shadow: 1px 1px 0px #ffffff;filter: dropshadow(color=#ffffff, offx=1, offy=1);">
		                    <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
		                        <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
		
		                            <div class="fc-content" style="margin: 0 auto;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;max-width: 600px;display: block;">
		                                <table cellspacing="0" cellpadding="0" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;width: 100%;">
		                                    <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
		                                        <td align="right" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;"><a href="{{ receipt_url }}" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #888888;text-decoration: underline;font-size: 12px;">{{ config.lang.email_view_in_your_browser }}</a></td>
		                                    </tr>
		                                </table>
		                            </div>
		
		                        </td>
		                    </tr>
		                </table>
		                <!-- /LINKS -->
		
		                <!-- HEADER -->
		                <table cellspacing="0" cellpadding="0" id="fc-header" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;width: 100%;background-color: #f5f5f5;-webkit-border-radius: 5px 5px 0px 0px;border-radius: 5px 5px 0px 0px;">
		                    <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
		                        <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
		
		                            {% if config.store_logo_url %}
		                            <!-- LOGO -->
		                            <table cellspacing="0" cellpadding="0" align="left" id="fc-logo" class="fc-column" style="margin: 0;padding: 0px 30px;font-family: Verdana, Helvetica, Arial, sans-serif;width: 50%;float: left;height: 100px;line-height: 100px;position: relative;">
		                                <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
		                                    <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
		                                        <img src="{{ config.store_logo_url }}" alt="{{ config.store_name }} Logo" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;max-width: 100%;vertical-align: middle;">
		                                    </td><td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
		                                </td></tr>
		                            </table>
		                            <!-- /LOGO -->
		                            {% endif %}
		
		                            <!-- SUBJECT -->
		                            <table cellspacing="0" cellpadding="0" align="left" id="fc-subject" class="fc-column" style="margin: 0;padding: 0px 30px;font-family: Verdana, Helvetica, Arial, sans-serif;width: 50%;float: left;height: 100px;line-height: 100px;text-align: right;color: #cccccc;font-size: 20px;text-shadow: 1px 1px 0px #ffffff;filter: dropshadow(color=#ffffff, offx=1, offy=1);">
		                                <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
		                                    <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
		                                        {% if is_updateinfo %}
		                                            {{ config.lang.email_subject_updateinfo }}
		                                        {% elseif is_subscription_modification %}
		                                            {{ config.lang.email_subject_subscription_updated }}
		                                        {% elseif is_subscription_cancel %}
		                                            {{ config.lang.email_subject_subscription_cancelled }}
		                                        {% else %}
		                                            {{ config.lang.checkout_receipt }}
		                                        {% endif  %}
		                                    </td>
		                                </tr>
		                            </table>
		                            <!-- /SUBJECT -->
		
		                            <span class="fc-clear" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;display: block;clear: both;"></span>
		
		                        </td>
		                    </tr>
		                </table>
		                <!-- /HEADER -->

						$Layout


	            </div>
	        </td>
	   </tr>
	</table>
	<!-- /WRAPPER -->
	</body>
</html>