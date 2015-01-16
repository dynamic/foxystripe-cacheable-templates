<div id="fc" class="typography contentLayout">
    $Content
	
	<!-- has to be here because of chrome bug -->
    {% include 'svg.inc.twig' %}

    {% import "utils.inc.twig" as utils %}
    {% use 'checkout.inc.twig' %}
    {{ block('checkout') }}


    <!-- FC footer script insertion -->{% include template_from_string(fc_footer_content) %}<!-- /FC footer scripts -->
    <!--[if lt IE 10 ]>
        <script src="//{{ config.store_domain }}/static/scripts/placeholder/placeholder_polyfill.jquery.js" charset="utf-8"></script>
    <![endif]-->

</div>