Deface::Override.new(
	:virtual_path => "spree/orders/show",
  :name         => "fb_post_status",
  :insert_top   => "[id='order']",
  :partial      => "spree/shared/facebook_status",
  :original     => 'c320a72a6206270749f37485f223b17d13f9e400',
  :disabled     => false
)