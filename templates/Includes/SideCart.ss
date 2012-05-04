<% if Cart %>
	<% control Cart %>
	<div class="sidecart">
		<% if Items %>
			<h3><% _t("HEADLINE","My Cart") %></h3>
			<p class="itemcount">There are <a href="$CartLink">$Items.Count items</a> in your cart.</p>
			<table class="table table-condensed">
			<% control Items %>
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
			<% end_control %>
			</table>
			<hr/>
			<h5 class="subtotal">
				SubTotal: $SubTotal.Nice
			</h5>
			<hr/>
			<div class="actions">
				<a href="$CartLink" class="btn btn-primary btn-mini"><i class="icon-shopping-cart icon-white"></i> Cart</a>
				<a href="$CheckoutLink" class="btn btn-success btn-mini"><i class="icon-arrow-right icon-white"></i> Checkout</a>
			</div>
		<% end_if %>
	</div>
	<% end_control %>
<% else %>
	<div class="alert alert-info">
   		<h4 class="alert-heading">Empty Cart</h4>
    	<% _t("NOITEMS","There are no items in your cart") %>.
    </div>

<% end_if %>