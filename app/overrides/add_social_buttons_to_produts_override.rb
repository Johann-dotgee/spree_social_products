Deface::Override.new(
 :virtual_path  => 'spree/products/show',
 :name          => 'add_social_buttons_to_products_show',
 :insert_after  => "[data-hook='product_properties']",
 :partial       => 'spree/shared/social_buttons',
 :disabled      => false
)

Deface::Override.new(
 :virtual_path  => 'spree/shared/_products',
 :name          => 'add_facebook_like_button_to_home_index',
 :insert_before => "span.price.selling",
 :partial       => 'spree/social/facebook_on_products',
 :disabled      => false
)

Deface::Override.new(
 :virtual_path  => "spree/layouts/spree_application",
 :name          => 'async_loading_facebook',
 :insert_before => "div.container",
 :partial       => 'spree/social/async_loading_facebook',
 :original      => 'e0da8ab798ab962ff6b67db7e4f843601534b076',
 :disabled      => false
)
