#### Cacheable Templates

Cacheable templates allow you to customize the design of your checkout using your SilverStripe theme. We've included Simple theme templates for the following:

* Cart
* Checkout
* Receipt
* Email

To enable Cacheable Templates for FoxyCart in FoxyStripe:

1. In CMS > Settings > FoxyStripe:
	*	Click `Cached Cart Page Settings`
	*	Click `Enable link to cache cart page template`
	*	Copy `Cart Cache Link` to your clipboard - `https://myfoxystripestore.com/generateCache/cart`
2. in FoxyCart > Templates > Cart:
	*	Your cart template url: paste value from FoxyStripe
	*	click `cache your url`
	*	on page refresh, click `Update Template` to save your changes.

Repeat these steps for Checkout, Receipt and Email.

Note - if using the Simple theme, you may need to edit the script call for HTML5shiv in `themes/simple/templates/Page.ss`. Make sure all script addresses have either an 'http' or 'https' to avoid caching errors.