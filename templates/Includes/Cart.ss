<% require themedCSS(cart) %>
<table class="cart table table-bordered" summary="<% _t("TABLESUMMARY","Current contents of your cart.") %>">
	<colgroup class="image"/>
	<colgroup class="product title"/>
	<colgroup class="unitprice" />
	<colgroup class="quantity" />
	<colgroup class="total"/>
	<colgroup class="remove"/>
	<thead>
		<tr>
			<th scope="col"></th>
			<th scope="col"><% _t("PRODUCT","Product") %></th>
			<th scope="col"><% _t("UNITPRICE","Unit Price") %></th>
			<th scope="col"><% _t("QUANTITY", "Quantity") %></th>
			<th scope="col"><% _t("TOTALPRICE","Total Price") %> ($Currency)</th>
			<% if Editable %>
				<th scope="col"></th>
			<% end_if %>
		</tr>
	</thead>
	<tbody>
		<% loop Items %>
			<% if ShowInTable %>
			<tr id="$TableID" class="$Classes $EvenOdd $FirstLast">
				<td>
					<% if Product.Image %>
						<div class="image">
							<a href="$Link" title="<% sprintf(_t("READMORE","View &quot;%s&quot;"),$Title) %>">
								<% with Product %>$Image.setWidth(45)<% end_with %>
							</a>
						</div>
					<% end_if %>
				</td>
				<td id="$TableTitleID">
					<h5>
						<% if Link %>
							<a href="$Link" title="<% sprintf(_t("READMORE","View &quot;%s&quot;"),$Title) %>">$TableTitle</a>
						<% else %>
							$TableTitle
						<% end_if %>
					</h5>
					<% if SubTitle %><p class="subtitle">$SubTitle</p><% end_if %>
				</td>
				<td>$UnitPrice.Nice</td>
				<td><% if Editable %>$QuantityField<% else %>$Quantity<% end_if %></td>
				<td id="$TableTotalID">$Total.Nice</td>
				<% if Editable %>
					<td>
						<% if RemoveField %>
							$RemoveField
						<% else %>
							<a href="$removeallLink" title="<% sprintf(_t("REMOVEALL","Remove all of &quot;%s&quot; from your cart"),$TableTitle) %>">
								<i class="icon-trash"></i>
							</a>
						<% end_if %>
					</td>
				<% end_if %>
			</tr>
			<% end_if %>
		<% end_loop %>
	</tbody>
	<tfoot>
		<tr class="subtotal">
			<th colspan="4" scope="row"><% _t("SUBTOTAL","Sub-total") %></th>
			<td id="$TableSubTotalID">$SubTotal.Nice</td>
			<% if Editable %>
				<td>&nbsp;</td>
			<% end_if %>
		</tr>
	</tfoot>
</table>