<% require themedCSS(checkout) %>
<h1 class="pageTitle">$Title</h1>
<div id="Checkout">
	<div class="typography">
		<% if Content %>
			$Content
		<% end_if %>
	</div>
	<% if Cart %>
		<% with Cart %>
			<% include Cart %>
		<% end_with %>
		<% loop ModifierForms %>
			$Me
		<% end_loop %>
		<% if Cart.Items %>$OrderForm<% end_if %>
	<% else %>
		<div class="message warning alert alert-block alert-info">
			<h4 class="alert-heading">Your cart is empty</h4>
			<i class="icon icon-info-sign"></i> <% _t("NOITEMS","There are no items in your cart.") %>
		</div>
		
		<% if ContinueLink %>
		<a class="continuelink btn btn-primary" href="$ContinueLink">
			<i class="icon-arrow-left icon-white"></i>
			<% _t('CartPage.ss.CONTINUE','Continue Shopping') %>
		</a>
		<% end_if %>
	<% end_if %>
</div>
