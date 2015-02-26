<div class="quantityfield">
	<div class="input-group input-group-sm">
		<span class="input-group-btn">
			<a class="removelink btn btn-default" href="$DecrementLink" title="<% sprintf(_t("REMOVEONE","Remove one of &quot;%s&quot; from your cart"),$Item.TableTitle) %>">-</a>	
		</span>
		$Field.addExtraClass(form-control input-number)
		<span class="input-group-btn">
			<a class="addlink btn btn-default" href="$IncrementLink" title="<% sprintf(_t("ADDONE","Add one more of &quot;%s&quot; to your cart"),$Item.TableTitle) %>">+</a>
		</span>
	</div>
</div>
