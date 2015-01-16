                <!-- MAIN -->
                <table cellspacing="0" cellpadding="0" id="fc-main" style="margin: 0;padding: 30px;font-family: Verdana, Helvetica, Arial, sans-serif;width: 100%;background-color: #ffffff;-webkit-border-radius: 0px 0px 5px 5px;border-radius: 0px 0px 5px 5px;">
                    <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                        <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">

                            <div class="fc-content" style="margin: 0 auto;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;max-width: 600px;display: block;">
                                <table cellspacing="0" cellpadding="0" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;width: 100%;">
                                    <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                        <td valign="top" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">

                                            <!-- MESSAGE -->
                                            <table cellspacing="0" cellpadding="0" id="fc-message" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;width: 100%;">
                                                <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                    <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">

                                                        {% if is_order %}
                                                            <p style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;line-height: 20px;margin-bottom: 30px;">
                                                                {{ config.lang.email_html_message_order|replace({
                                                                '{{ config.store_domain }}': config.store_domain
                                                                })|raw }}
                                                            </p>
                                                        {% elseif is_updateinfo %}
                                                            <p style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;line-height: 20px;margin-bottom: 30px;">
                                                                {{ config.lang.email_message_updateinfo|replace({
                                                                '{{ config.store_domain }}': config.store_domain
                                                                })|raw }}
                                                            </p>
                                                        {% elseif is_subscription_modification %}
                                                            <p style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;line-height: 20px;margin-bottom: 30px;">
                                                                {{ config.lang.email_message_subscription_modification }}
                                                            </p>
                                                        {% elseif is_subscription_cancel %}
                                                            <p style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;line-height: 20px;margin-bottom: 30px;">
                                                                {{ config.lang.email_message_subscription_cancel }}
                                                            </p>
                                                        {% endif  %}

                                                   </td>
                                                </tr>
                                            </table>
                                            <!-- /MESSAGE -->

                                            <!-- DOWNLOADABLES -->
                                            {% if has_downloadables %}
                                                <table cellspacing="0" cellpadding="0" id="fc-downloadables" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;width: 100%;">
                                                    <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                        <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">

                                                            <h3 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: bold;font-size: 13px;">{{ config.lang.email_html_downloadable_products }}</h3>
                                                            <ol class="fc-download-links" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;margin-top: 4px;margin-bottom:20px;margin-left: 20px;">
                                                                {% for item in downloadable_links %}
                                                                <li class="fc-list--downloadables__item">
                                                                    {% if item.url %}<a href="{{ item.url }}">{% endif %}
                                                                        {{ item.name }}
                                                                    {% if item.url %}</a>{% endif %}
                                                                </li>
                                                                {% endfor %}
                                                            </ol>

                                                        </td>
                                                    </tr>
                                                </table>
                                            {% endif %}
                                            <!-- /DOWNLOADABLES -->

                                            <!-- ORDER SUMMARY -->
                                            <table cellspacing="0" cellpadding="0" id="fc-order-summary" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;width: 100%;margin-bottom: 20px;">
                                                <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                    <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                        <h2 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: normal;font-size: 18px;margin-bottom: 10px;">{{ config.lang.email_html_order_summary }}</h2>
                                                    </td>
                                                </tr>

                                                <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                    <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">

                                                        <table cellspacing="0" cellpadding="0" align="left" class="fc-column" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;width: 50%;float: left;">
                                                            <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                                <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                                    <h3 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: bold;font-size: 13px;">{{ config.lang.checkout_merchant }}</h3>
                                                                    {{ config.store_name }}<br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;"><br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">

                                                                    <h3 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: bold;font-size: 13px;">
                                                                        {% if is_order %}
                                                                            {{ config.lang.email_order_number }}
                                                                        {% else %}
                                                                            {{ config.lang.email_reference_number }}
                                                                        {% endif  %}
                                                                    </h3>
                                                                    {{ order_id }}<br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;"><br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">

                                                                    <h3 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: bold;font-size: 13px;">{{ config.lang.checkout_date }}</h3>
                                                                    {{ checkout_date }}<br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;"><br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                                </td>
                                                            </tr>
                                                        </table>

                                                        {% if not is_updateinfo %}
                                                        <table cellspacing="0" cellpadding="0" align="left" class="fc-column" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;width: 50%;float: left;">
                                                            <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                                <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                                    {% if payment_type == 'plastic' %}
                                                                    <h3 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: bold;font-size: 13px;">{{ config.lang.checkout_payment_method }}</h3>
                                                                    <div class="fc-payment_method" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;margin-top: -9px;letter-spacing: 1px;">{{ cc_number_masked }} {% if cc_type|lower in ['amex','discover', 'maestro', 'mastercard', 'solo', 'switch', 'visa'] %}<img src="https://{{ config.store_domain }}/static/images/payment_logos/email/{{cc_type|lower}}.png" width="35" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;max-width: 100%;position: relative;top: 6px;">{% endif %}</div>
                                                                    <br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                                    {% endif %}

                                                                    {% if purchase_order %}
                                                                        <h3 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: bold;font-size: 13px;">{{ config.lang.checkout_purchase_order }}</h3>
                                                                        {{ purchase_order }}<br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;"><br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                                    {% endif %}

                                                                    {% if shipping_address.has_shippable_products and not has_multiship %}
                                                                        <h3 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: bold;font-size: 13px;">{{ config.lang.email_shipping }}</h3>
                                                                        {{ shipping_address.shipping_service_description }}<br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;"><br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                                    {% endif %}

                                                                    {% if is_order %}
                                                                        <h3 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: bold;font-size: 13px;">{{ config.lang.cart_order_total }}</h3>
                                                                        {{ total_order|money_format }}<br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;"><br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                                    {% endif  %}

                                                                    {% if has_visible_custom_fields %}
                                                                    {# <h3 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: bold;font-size: 13px;">{{ config.lang.checkout_additional_information }}</h3> #}
                                                                    {% for key,custom_field in custom_fields %}
                                                                        {% if not custom_field.is_hidden %}
                                                                        <strong class="fc-custom-field" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;">{{ key|replace({'_': ' '})|title }}:</strong> {{ custom_field.value }}<br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                                        {% endif %}
                                                                    {% endfor %}
                                                                    {% endif %}
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        {% endif %}
                                                    </td>
                                                </tr>
                                            </table>
                                            <!-- /ORDER SUMMARY -->

                                            <!-- BILLING INFORMATION -->
                                            <table cellspacing="0" cellpadding="0" align="left" class="fc-column" id="fc-billing-information" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;width: 50%;float: left;">
                                                <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                    <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                        <h2 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: normal;font-size: 18px;margin-bottom: 10px;">{{ config.lang.checkout_billing_information }}</h2>
                                                    </td>
                                                </tr>

                                                <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                    <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                        {% if not (config.template_config.custom_checkout_field_requirements['billing_first_name'] == 'hidden' and config.template_config.custom_checkout_field_requirements['billing_last_name'] == 'hidden' and config.template_config.custom_checkout_field_requirements['billing_address1'] == 'hidden' and config.template_config.custom_checkout_field_requirements['billing_address2'] == 'hidden' and config.template_config.custom_checkout_field_requirements['billing_city'] == 'hidden' and config.template_config.custom_checkout_field_requirements['billing_region'] == 'hidden' and config.template_config.custom_checkout_field_requirements['billing_postal_code'] == 'hidden' and config.template_config.custom_checkout_field_requirements['billing_country'] == 'hidden') %}
                                                        <h3 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: bold;font-size: 13px;">{{ config.lang.email_billing_address }}</h3>
                                                        {% include "address.email.inc.twig" with {'address': billing_address} %}
                                                        {% endif %}

                                                        <h3 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: bold;font-size: 13px;">{{ config.lang.email_email }}</h3>
                                                        {{ customer_email }}<br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;"><br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">

                                                        {% if billing_address.phone %}
                                                            <h3 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: bold;font-size: 13px;">{{ config.lang.checkout_phone }}</h3>
                                                            {{ billing_address.phone }}<br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;"><br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                        {% endif %}
                                                    </td>
                                                </tr>
                                            </table>
                                            <!-- /BILLING INFORMATION -->

                                            <!-- SHIPPING INFORMATION -->
                                            {% if not has_multiship %}
                                                {% if shipping_address.has_shippable_products %}
                                                <table cellspacing="0" cellpadding="0" align="left" class="fc-column" id="fc-shipping-information" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;width: 50%;float: left;margin-bottom: 40px;">
                                                    <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                        <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                            <h2 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: normal;font-size: 18px;margin-bottom: 10px;">{{ config.lang.receipt_shipping_information }}</h2>
                                                        </td>
                                                    </tr>

                                                    <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                        <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                            <h3 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: bold;font-size: 13px;">{{ config.lang.email_shipping_address }}</h3>
                                                            {% include "address.email.inc.twig" with {'address': shipping_address} %}

                                                        {% if shipping_address.phone %}
                                                            <h3 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: bold;font-size: 13px;">{{ config.lang.checkout_phone }}</h3>
                                                            {{ shipping_address.phone }}<br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;"><br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                        {% endif %}

                                                        </td>
                                                    </tr>
                                                </table>
                                                {% endif %}
                                            {% else %}
                                                <table cellspacing="0" cellpadding="0" align="left" class="fc-column" id="fc-shipping-information" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;width: 50%;float: left;margin-bottom: 40px;">
                                                {% for multiship in multiship_data %}
                                                    <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                        <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                            <h3 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: bold;font-size: 13px;">{{ config.lang.checkout_shipto }}<span class="fc_shipto_name" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">{{ multiship.address_name }}</span></h3>
                                                            {% include "address.email.inc.twig" with {'address': multiship} %}

                                                            {% if multiship.custom_fields %}
                                                                {% for key,custom_field in multiship.custom_fields %}
                                                                {% if not custom_field.is_hidden %}
                                                                    <strong class="fc-custom-field" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;">{{ key|replace({'_': ' '})|title }}:</strong> {{ custom_field.value }}<br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                                {% endif %}
                                                                {% endfor %}
                                                            {% endif %}

                                                            {% if not is_updateinfo %}
                                                                {{ config.lang.checkout_subtotal }}: {{ multiship.total_item_price|money_format }}<br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                            {% endif %}

                                                            {% if multiship.has_shippable_products %}
                                                                {% if multiship.shipping_service_description %}
                                                                    {{ multiship.shipping_service_description }}: {{ multiship.total_shipping|money_format }}<br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                                {% else %}
                                                                    {{ shipping_and_handling_label }}: {{ multiship.total_shipping|money_format }}<br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                                {% endif %}
                                                            {% endif %}

                                                            {% if not is_updateinfo %}
                                                                {% if has_taxes %}
                                                                    {% for tax in multiship.taxes %}
                                                                        {{ tax.name }} ({{ tax.rate }}%) {{ config.lang.cart_tax }}:
                                                                        {{ tax.amount|money_format }}<br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                                    {% endfor %}
                                                                {% endif %}

                                                                {{ config.lang.checkout_shipment_total }}: {{ multiship.total_price|money_format }}<br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                            {% endif %}

                                                            {# {{ config.lang.checkout_shipping_method }}: {{ multiship.shipping_service_description }} #}
                                                            <br style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                         </td>
                                                    </tr>
                                                {% endfor %}
                                                </table>
                                            {% endif %}
                                            <!-- /SHIPPING INFORMATION -->


                                        <!-- SUBSCIRPTIONS -->
                                        {% if subscriptions|length > 0 and not is_subscription_cancel %}
                                            <span class="fc-clear" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;display: block;clear: both;"></span>
                                            <div style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif; display: block;">
                                            <table cellspacing="0" cellpadding="0" id="fc-message" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;width: 100%;">
                                                <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                    <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;"><h2 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: normal;font-size: 18px;margin-bottom: 10px;">{{ config.lang.email_html_manage_subscriptions }}</h2>
                                                    </td>
                                                </tr>
                                                <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                    <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                         <p style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;line-height: 20px;">{{ config.lang.email_html_subscription_instructions|raw }}</p>
                                                    </td>
                                                </tr>
                                                <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                    <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                        <ul style="padding-left:1em;">
                                                        {% for subscription in subscriptions %}
                                                            <li style="fc-cart-item-option-{{ option.class }}">
                                                                {{ subscription.description }}<br />
                                                                {{ subscription.html_links|raw }}
                                                            </li>
                                                        {% endfor %}
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </table>
                                        {% endif %}
                                        <!-- /SUBSCIRPTIONS -->

                                        {% if items|length > 0 and not is_updateinfo %}
                                        <span class="fc-clear" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;display: block;clear: both;"></span>
                                        <div style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif; display: block;">
                                            <!-- CART HEADING -->
                                            <table cellpadding="0" cellspacing="0" border="0" class="fc-show" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;width: 100%;">
                                                <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                    <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                        <br/><br/>
                                                        <h2 style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #666666;font-weight: normal;font-size: 18px;margin-bottom: 10px;">{{ config.lang.cart_items }}</h2>
                                                        <br/>
                                                    </td>
                                                </tr>
                                            </table>
                                            <!-- /CART HEADING -->

                                            <!-- CART -->
                                            <table cellpadding="0" cellspacing="0" border="0" id="fc-cart" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;width: 100%;font-size: 12px;border-spacing: 0;">

                                                <thead class="fc-hide" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;height: 30px;line-height: 30px;background-color: #eeeeee;border: 0;">
                                                    <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                        <th style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;height: 30px;text-align: left;padding-left: 10px;font-weight: normal;color: #222222;"></th>
                                                        <th style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;height: 30px;text-align: left;padding-left: 10px;font-weight: normal;color: #222222;">{{ config.lang.cart_item }}</th>
                                                        <th class="fc-cart-price-col-label" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;height: 30px;text-align: right;padding-left: 10px;font-weight: normal;color: #222222;padding-right: 28px;">Price</th>
                                                        <th style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;height: 30px;text-align: left;padding-left: 10px;font-weight: normal;color: #222222;">{{ config.lang.cart_qty }}</th>
                                                        <th class="fc-cart-price-col-label" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;height: 30px;text-align: right;padding-left: 10px;font-weight: normal;color: #222222;padding-right: 28px;">{{ config.lang.cart_total }}</th>
                                                    </tr>
                                                </thead>


                                                <tfoot style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;width: 540px;border-top: 2px solid #eeeeee;display: table-footer-group;">
                                                    <tr id="fc-cart-subtotal" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;height: 30px;line-height: 30px;">
                                                        <td width="440" class="fc-cart-subtotal-label" colspan="4" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;padding-left: 0;text-align: right;">{{ config.lang.cart_subtotal }}:</td>
                                                        <td width="{{ price_width }}" class="fc-cart-subtotal-value" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;padding-left: 10px;text-align: right;padding-right: 14px;">{{ total_item_price|money_format }}</td>
                                                    </tr>
                                                    {% if shipping_address.has_shippable_products %}
                                                    <tr id="fc-cart-shipping" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;height: 30px;line-height: 30px;">
                                                        <td width="440" class="fc-cart-subtotal-label" colspan="4" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;padding-left: 0;text-align: right;">{{ config.lang.cart_shipping_and_handling }}</td>
                                                        <td width="{{ price_width }}" class="fc-cart-subtotal-value" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;padding-left: 10px;text-align: right;padding-right: 14px;">{{ total_shipping|money_format }}</td>
                                                    </tr>
                                                    {% endif %}
                                                    {% if has_multiship %}
                                                        <tr class="fc-cart-total-taxes" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;height: 30px;line-height: 30px;">
                                                            <td class="fc-cart-subtotal-label" colspan="4" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;padding-left: 0;text-align: right;">
                                                                {{ config.lang.cart_tax }}
                                                            </td>
                                                            <td class="fc-cart-subtotal-value" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;padding-left: 10px;text-align: right;padding-right: 14px;">
                                                                {{ total_tax|money_format }}
                                                            </td>
                                                        </tr>
                                                    {% else %}
                                                        {% for tax in shipping_address.taxes %}
                                                        <tr class="fc-cart-total-taxes" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;height: 30px;line-height: 30px;">
                                                            <td class="fc-cart-subtotal-label" colspan="4" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;padding-left: 0;text-align: right;">
                                                                {{ tax.name }} (<span class="fc_cart_foot_tax_rate" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">{{ tax.rate }}</span>%):
                                                            </td>
                                                            <td class="fc-cart-subtotal-value" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;padding-left: 10px;text-align: right;padding-right: 14px;">
                                                                {{ tax.amount|money_format }}
                                                            </td>
                                                        </tr>
                                                        {% endfor %}
                                                    {% endif %}
                                                    {% for key,coupon in coupons %}
                                                    <tr class="fc-cart-total-discount {% if not coupon.is_applied %}fc-cart-total-discount-inactive{% endif %}" data-fc-coupon-container-id="{{ coupon.id }}" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;height: 30px;line-height: 30px;color: #267d00;">
                                                        <td class="fc-cart-total-label" colspan="4" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;padding-left: 0;text-align: right;">
                                                            {{ coupon.name }}: {{ key }}
                                                        </td>
                                                        <td class="fc-cart-total-value" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;padding-left: 10px;text-align: right;padding-right: 14px;">{{ coupon.amount|money_format }}</td>
                                                    </tr>
                                                    {% endfor %}
                                                    <tr id="fc-cart-total" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;height: 30px;line-height: 30px;font-weight: bold;">
                                                        <td width="440" class="fc-cart-total-label" colspan="4" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;padding-left: 0;text-align: right;">{{ config.lang.cart_order_total }}:</td>
                                                        <td width="{{ price_width }}" class="fc-cart-total-value" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;padding-left: 10px;text-align: right;padding-right: 14px;">{{ total_order|money_format }}</td>
                                                    </tr>
                                                </tfoot>

                                                <tbody style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;border-top: 10px solid #ffffff;">
                                                {% for item in items %}
                                                {% if has_multiship and item.multiship != "-1" %}
                                                    <tr class="fc-cart-shipto-label" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                        <td colspan="5" style="margin: 0;padding: 20px 0px;font-family: Verdana, Helvetica, Arial, sans-serif;padding-left: 10px;padding-right: 0;border-bottom: 1px solid #eeeeee;vertical-align: top;border-top: 2px solid #cccccc;padding-top: 20px;padding-bottom: 10px;">{{ config.lang.cart_shipto }}<strong style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">{{ item.shipto }}</strong></td>
                                                    </tr>
                                                {% endif %}
                                                    <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                        <td width="70" class="fc-cart-image" style="margin: 0;padding: 20px 0px;font-family: Verdana, Helvetica, Arial, sans-serif;padding-left: 0;padding-right: 10px;border-bottom: 1px solid #eeeeee;vertical-align: top;max-width: 70px;">
                                                            {% if item.image %}
                                                                {% if item.url %}<a href="{{ item.url }}" alt="{{ item.alt_name }}" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;color: #333333;text-decoration: underline;">{% endif %}
                                                                    <img src="{{ item.image }}" border="0" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;max-width: 70px;">
                                                                {% if item.url %}</a>{% endif %}
                                                            {% endif %}
                                                        </td>
                                                        <td width="260" class="fc-cart-item" style="margin: 0;padding: 20px 0px;font-family: Verdana, Helvetica, Arial, sans-serif;padding-left: 10px;padding-right: 0;border-bottom: 1px solid #eeeeee;vertical-align: top;width: 150px;">
                                                            <div style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;"><strong style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">{{ item.name }}</strong></div>
                                                            <div style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                            {# Begin block product_options from cart.inc.twig, inlined here to allow for inline CSS #}
                                                            {% set show_product_options = true %}
                                                            {% set show_product_weight = true %}
                                                            {% set show_product_category = true %}
                                                            {% set show_product_code = true %}
                                                            {% if config.template_config.cart_display_config.usage != "none" %}
                                                                {% set show_product_options = config.template_config.cart_display_config.show_product_options %}
                                                                {% set show_product_weight = config.template_config.cart_display_config.show_product_weight %}
                                                                {% set show_product_category = config.template_config.cart_display_config.show_product_category %}
                                                                {% set show_product_code = config.template_config.cart_display_config.show_product_code %}
                                                            {% endif %}
                                                            {% if item.options|length == 0 and item.code == '' and item.category == 'DEFAULT' and item.weight == 0 and item.sub_frequency == '' %}
                                                                {% set show_product_options = false %}
                                                            {% endif %}
                                                            {% if show_product_options %}
                                                            <ul style="padding-left:1em;">
                                                                {% for option in item.options %}
                                                                <li class="fc-cart-item-option-{{ option.class }}">
                                                                    <span class="fc-cart-item-option-name">{{ option.name }}</span>:
                                                                    <span class="fc-cart-item-option-value">{{ option.value }}</span>
                                                                </li>
                                                                {% endfor %}

                                                                {% if item.code and show_product_code %}
                                                                <li class="fc-cart-item-option-code">
                                                                    <span class="fc-cart-item-option-name">{{ config.lang.cart_code }}</span>:
                                                                    <span class="fc-cart-item-option-value">{{ item.code }}</span>
                                                                </li>
                                                                {% endif %}

                                                                {% if item.category != 'DEFAULT' and show_product_category %}
                                                                <li class="fc-cart-item-option-category">
                                                                    <span class="fc-cart-item-option-name">{{ config.lang.cart_category }}</span>:
                                                                    <span class="fc-cart-item-option-value">{{ item.category }}</span>
                                                                </li>
                                                                {% endif %}

                                                                {% if item.weight != 0 and show_product_weight %}
                                                                <li class="fc-cart-item-option-weight">
                                                                    <span class="fc-cart-item-option-name">{{ config.lang.cart_weight }}</span>:
                                                                    <span class="fc-cart-item-option-value">{{ item.weight }} <span class="fc-cart-item-option-value-unit">{{ weight_uom }}</span></span>
                                                                </li>
                                                                {% endif %}

                                                                {% if item.sub_frequency %}
                                                                <li class="fc-cart-item-option-subscription-details">
                                                                    {{ config.lang.cart_subscription_details }}
                                                                    <ul style="padding-left:1em;">
                                                                        <li class="fc-cart-item-option-subscription-frequency">
                                                                            <span class="fc-cart-item-option-name">{{ config.lang.cart_frequency }}</span>:
                                                                            <span class="fc-cart-item-option-value">{{ item.sub_frequency }}</span>
                                                                        </li>
                                                                        <li class="fc-cart-item-option-subscription-startdate">
                                                                            <span class="fc-cart-item-option-name">{{ config.lang.cart_start_date }}</span>:
                                                                            <span class="fc-cart-item-option-value">{{ item.sub_startdate }}</span>
                                                                        </li>
                                                                        <li class="fc-cart-item-option-subscription-nextdate">
                                                                            <span class="fc-cart-item-option-name">{{ config.lang.cart_next_date }}</span>:
                                                                            <span class="fc-cart-item-option-value">{{ item.sub_nextdate }}</span>
                                                                        </li>
                                                                    {% if item.sub_enddate != "0000-00-00" %}
                                                                        <li class="fc-cart-item-option-subscription-enddate">
                                                                            <span class="fc-cart-item-option-name">{{ config.lang.cart_end_date }}</span>:
                                                                            <span class="fc-cart-item-option-value">{{ item.sub_enddate }}</span>
                                                                        </li>
                                                                    {% endif %}
                                                                    </ul>
                                                                </li>
                                                                {% endif %}
                                                            </ul>
                                                            {% endif %}
                                                            {# End block product_options #}
                                                            </div>
                                                        </td>
                                                        <td width="70" class="fc-cart-price" style="margin: 0;padding: 20px 0px;font-family: Verdana, Helvetica, Arial, sans-serif;padding-left: 10px;padding-right: 14px;border-bottom: 1px solid #eeeeee;vertical-align: top;text-align: right;">{% if item.quantity > 1 %}{{ item.price_each|money_format }}&nbsp;&times;{% if (((item.price_each * 10000) % 100) != 0) %}...<br />{{ item.price_each }}{% endif %}{% endif %}</td>
                                                        <td width="20" class="fc-cart-qty" style="margin: 0;padding: 20px 0px;font-family: Verdana, Helvetica, Arial, sans-serif;padding-left: 10px;padding-right: 0;border-bottom: 1px solid #eeeeee;vertical-align: top;text-align: center;">{{ item.quantity }}</td>
                                                        <td width="{{ price_width }}" class="fc-cart-price" style="margin: 0;padding: 20px 0px;font-family: Verdana, Helvetica, Arial, sans-serif;padding-left: 10px;padding-right: 14px;border-bottom: 1px solid #eeeeee;vertical-align: top;text-align: right;">{{ item.price|money_format }}{% if (((item.price * 10000) % 100) != 0) %}...<br />{{ item.price }}{% endif %}</td>
                                                    </tr>
                                                {% endfor %}
                                                </tbody>

                                            </table>
                                            <!-- /CART -->
                                        </div>
                                        {% endif %}
                                        {% if has_future_products %}
                                        <span class="fc-clear" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;display: block;clear: both;"></span>
                                        <div style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif; display: block;">
                                            <table cellpadding="0" cellspacing="0" border="0" id="fc-future-items" style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;width: 100%;">
                                            <tbody style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                <tr style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">
                                                    <td style="margin: 0;padding: 0;font-family: Verdana, Helvetica, Arial, sans-serif;">

                                                    {# Begin block future_products from cart.inc.twig #}
                                                    {% if future_subscription_totals_by_date|length > 1 %}
                                                    <h5>{{ config.lang.cart_future_charges }}</h5>
                                                    {% else %}
                                                    <h5>{{ config.lang.cart_future_charge }}</h5>
                                                    {% endif %}
                                                    <ul style="padding-left:1em;">
                                                        {% set has_future_subs_details = false %}
                                                        {% if has_future_shipping or future_coupons|length > 0 or has_taxes %}
                                                            {% set has_future_subs_details = true %}
                                                        <li class="fc-cart-total{% if config.with_controls %} hidden{% endif %}" data-fc-id="future-cart-display">
                                                            <table style="display:inline-table">
                                                                {% if has_future_shipping or future_coupons|length > 0 or has_taxes %}
                                                                <tr class="fc-cart-total-subtotal">
                                                                    <td class="fc-cart-total-label">{{ config.lang.cart_subtotal }}</td>
                                                                    <td class="fc-cart-total-value">{{ total_future_item_price|money_format }}</td>
                                                                </tr>
                                                                {% endif %}
                                                                {% if has_future_shipping %}
                                                                <tr class="fc-cart-total-shipping">
                                                                    <td class="fc-cart-total-label">{{ config.lang.cart_shipping_and_handling }}</td>
                                                                    <td class="fc-cart-total-value">{{ total_future_shipping|money_format }}</td>
                                                                </tr>
                                                                {% endif %}
                                                                {% if has_taxes %}
                                                                {# TODO: test and verify future taxes work as expected... My hunch is they do not. #}
                                                                    {% if has_multiship %}
                                                                        <tr class="fc-cart-total-taxes">
                                                                            <td class="fc-cart-total-label">
                                                                                {{ config.lang.cart_tax }}
                                                                            </td>
                                                                            <td class="fc-cart-total-value">
                                                                                {{ total_tax|money_format }}
                                                                            </td>
                                                                        </tr>
                                                                    {% else %}
                                                                        {% for tax in shipping_address.taxes %}
                                                                        <tr class="fc-cart-total-taxes">
                                                                            <td class="fc-cart-total-label">
                                                                                {{ tax.name }} (<span class="fc_cart_foot_tax_rate">{{ tax.rate }}</span>%):
                                                                            </td>
                                                                            <td class="fc-cart-total-value">
                                                                                {{ tax.amount|money_format }}
                                                                            </td>
                                                                        </tr>
                                                                        {% endfor %}
                                                                    {% endif %}
                                                                {% endif %}
                                                                {% for key,coupon in future_coupons %}
                                                                <tr class="fc-cart-total-discounts">
                                                                    <td class="fc-cart-total-label">{{ coupon.name }}: {{ coupon.code }}</td>
                                                                    <td class="fc-cart-total-value">{{ coupon.amount|money_format }}</td>
                                                                </tr>
                                                                {% endfor %}
                                                            </table>
                                                        </li>
                                                        {% endif %}
                                                        <li class="fc-cart-total-final">
                                                            <table style="display:inline-table">
                                                            {% for key, subscription_item_total in future_subscription_totals_by_date %}
                                                                <tr class="fc-cart-total-final">
                                                                    <td class="fc-cart-total-label">
                                                                        {{ key|date("F jS, Y") }}
                                                                    </td>
                                                                    <td class="fc-cart-total-value">
                                                                        {{ subscription_item_total.total|money_format }}
                                                                    </td>
                                                                </tr>
                                                            {% endfor %}
                                                            </table>
                                                        </li>
                                                    </ul>
                                                    {# End block future_products #}

                                                    </td>
                                                </tr>
                                            </tbody>
                                            </table>
                                        </div>
                                        {% endif %}
                                     </td>
                                 </tr>
                             </table>
                         </div>
                        </td>
                    </tr>
                </table>
                <!-- /MAIN -->