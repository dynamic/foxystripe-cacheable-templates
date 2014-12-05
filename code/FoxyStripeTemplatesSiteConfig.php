<?php
	
class FoxyStripeTemplatesSiteConfig extends DataExtension {
	
	private static $db = array(
		'CartPage' => 'Boolean',
		'CartContent' => 'HTMLText',
		'CheckoutPage' => 'Boolean',
		'CheckoutContent' => 'HTMLText',
		'ReceiptPage' => 'Boolean',
		'ReceiptContent' => 'HTMLText',
		'EmailPage' => 'Boolean',
		'EmailContent' => 'HTMLText'	
	);
	
	public function updateCMSFields(FieldList $fields) {
		$fields->addFieldsToTab('Root.Templates', array(
            HeaderField::create('CacheableTemplates', 'FoxyStripe Cacheable Templates', 3),
            LiteralField::create('TemplateDescip', '<p>Use your Theme to generate templates for the FoxyCart checkout.</p>'),
            ToggleCompositeField::create('Cart', 'Cached Cart Page Settings',
                array(
                    CheckboxField::create('CartPage')
                        ->setTitle('Enable link to cache cart page template'),
                    ReadonlyField::create('CartLink', 'Cart Cache Link', self::getCacheLink('cart')),
                    HtmlEditorField::create('CartContent')
                        ->setTitle('Cart page content')
                )
            )->setHeadingLevel(4),
            ToggleCompositeField::create('Checkout', 'Cached Checkout Page Settings',
                array(
                    CheckboxField::create('CheckoutPage')
                        ->setTitle('Enable link to cache checkout page template'),
                    ReadonlyField::create('CheckoutLink', 'Checkout Cache Link', self::getCacheLink('checkout')),
                    HtmlEditorField::create('CheckoutContent')
                        ->setTitle('Checkout page content')
                )
            )->setHeadingLevel(4),
            ToggleCompositeField::create('Receipt', 'Cached Receipt Settings',
                array(
                    CheckboxField::create('ReceiptPage')
                        ->setTitle('Enable link to cache receipt template'),
                    ReadonlyField::create('ReceiptLink', 'Receipt Cache Link', self::getCacheLink('receipt')),
                    HtmlEditorField::create('ReceiptContent')
                        ->setTitle('Receipt page content')
                )
            )->setHeadingLevel(4),
            ToggleCompositeField::create('Email', 'Cached Email Settings',
                array(
                    CheckboxField::create('EmailPage')
                        ->setTitle('Enable link to cache email template'),
                    ReadonlyField::create('EmailLink', 'Email Cache Link', self::getCacheLink('email')),
                    HtmlEditorField::create('EmailContent')
                        ->setTitle('Email content')
                )
            )->setHeadingLevel(4)
        ));
	}
	
	private static function getCacheLink($type = null){
		return Director::absoluteBaseURL()."generateCache/$type";
	}
	
}