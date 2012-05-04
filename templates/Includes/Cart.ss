<% require themedCSS(cart) %>
<h3 class="orderInfo"><% _t("ORDERINFORMATION","Order Information") %></h3>
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
			<th scope="col"></th>
		</tr>
	</thead>
	<tbody>
		<% control Items %><% if ShowInTable %>
			<tr id="$TableID" class="$Classes $EvenOdd $FirstLast">
				<td>
					<% if Product.Image %>
						<div class="image">
							<a href="$Link" title="<% sprintf(_t("READMORE","View &quot;%s&quot;"),$Title) %>">
								<% control Product %>$Image.setWidth(45)<% end_control %>
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
				<td>$QuantityField</td>
				<td id="$TableTotalID">$Total.Nice</td>
				<td>
					<a href="$removeallLink" title="<% sprintf(_t("REMOVEALL","Remove all of &quot;%s&quot; from your cart"),$TableTitle) %>">
						<i class="icon-trash"></i>
					</a>
				</td>
			</tr>
		<% end_if %><% end_control %>
	</tbody>
	<tfoot>
		<tr class="subtotal">
			<th colspan="4" scope="row"><% _t("SUBTOTAL","Sub-total") %></th>
			<td id="$TableSubTotalID">$SubTotal.Nice</td>
			<td>&nbsp;</td>
		</tr>
		<% if Modifiers %>
			<% control Modifiers %>
				<% if ShowInTable %>
					<tr id="$TableID" class="$Classes">
						<th id="$TableTitleID" colspan="4" scope="row">
							<% if Link %>
								<a href="$Link" title="<% sprintf(_t("READMORE","Click here to read more on &quot;%s&quot;"),$TableTitle) %>">$TableTitle</a>
							<% else %>
								$TableTitle
							<% end_if %>
						</th>
						<td id="$TableTotalID">$TableValue.Nice</td>
						<td>
							<% if CanRemove %>
								<strong>
									<a class="ajaxQuantityLink" href="$removeLink" title="<% sprintf(_t("REMOVE","Remove &quot;%s&quot; from your order"),$TableTitle) %>">
										<i class="icon-trash"></i>
									</a>
								</strong>
							<% end_if %>
						</td>
					</tr>
				<% end_if %>
			<% end_control %>
		<% end_if %>
		<tr class="gap Total">
			<th colspan="4" scope="row"><% _t("TOTAL","Total") %></th>
			<td id="$TableTotalID"><span class="value">$Total.Nice</span> <span class="currency">$Currency</span></td>
			<td></td>
		</tr>
	</tfoot>
</table>