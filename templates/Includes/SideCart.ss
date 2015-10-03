<% if Cart %>
	<% with Cart %>
		<div class="sidecart well">
			<% if Items %>
				<h3><% _t("HEADLINE","My Cart") %></h3>
				<p class="itemcount">
					There <% if Items.Plural %>are<% else %>is<% end_if %> <a href="$Top.CartLink">$Items.Quantity item<% if Items.Plural %>s<% end_if %></a> in your cart.
				</p>
				<table class="table table-condensed">
				<% loop Items %>
					<tr class="item $EvenOdd $FirstLast">
						<td>
							<h5>
								<a href="$Product.Link" title="<% sprintf(_t("READMORE","View &quot;%s&quot;"),$Title) %>">
									$TableTitle
								</a>
								<% if SubTitle %>
									<small class="subtitle">$SubTitle</small>
								<% end_if %>
							</h5>
							<div class="pull-right">
								<a class="remove" href="$removeallLink" title="<% sprintf(_t("REMOVEALL","remove from cart"),$TableTitle) %>">
									<i class="icon-trash"></i>
								</a>
							</div>
							<p class="quantityprice"><span class="quantity">$Quantity</span> <span class="times">x</span> <span class="unitprice">$UnitPrice.Nice</span></p>
						</td>
					</tr>
				<% end_loop %>
				</table>
				<hr/>
				<h5 class="subtotal">
					SubTotal: $SubTotal.Nice
				</h5>
				<hr/>
				<div class="actions">
					<% if Top.CartLink %><a href="$Top.CartLink" class="btn btn-primary btn-mini"><i class="icon-shopping-cart icon-white"></i> Cart</a><% end_if %>
					<a href="$Top.CheckoutLink" class="btn btn-success btn-mini"><i class="icon-arrow-right icon-white"></i> Checkout</a>
				</div>
			<% end_if %>
		</div>
	<% end_with %>
<% else %>
	<div class="alert alert-info">
   		<h4 class="alert-heading">Empty Cart</h4>
    	<% _t("NOITEMS","There are no items in your cart") %>.
    </div>
<% end_if %>