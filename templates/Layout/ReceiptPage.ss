<div id="fc" class="typography contentLayout">


<!-- has to be here because of chrome bug -->
    {% include 'svg.inc.twig' %}

    {% import "utils.inc.twig" as utils %}
    {% use 'receipt.inc.twig' %}
    {{ block('receipt') }}

    <!--[if lt IE 9 ]>
        <script src="{{ config.cdn_static_path }}scripts/respond/respond.1.4.2.js" charset="utf-8"></script>
    <![endif]-->
    <!-- FC footer script insertion -->{% include template_from_string(fc_footer_content) %}<!-- /FC footer scripts -->


</div>