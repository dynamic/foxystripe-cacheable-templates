<% require css('foxystripe/css/foxycart.css') %>
<div id="fc" class="typography contentLayout">
	<div class="fc-context--cart-fullpage" data-fc-context='{"cart_is_fullpage":true}'>

		{% set cart_is_fullpage = true %}
	    <div data-fc-container="cart">
	        {% include 'cart.inc.twig' %}
	    </div>


    <!-- FC footer script insertion -->{% include template_from_string(fc_footer_content) %}<!-- /FC footer scripts -->
	</div>
</div>