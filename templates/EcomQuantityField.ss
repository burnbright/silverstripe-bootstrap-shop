<div class="ecomquantityfield">
	<a class="addlink" href="$DecrementLink" title="<% sprintf(_t("REMOVEONE","Remove one of &quot;%s&quot; from your cart"),$Item.TableTitle) %>">
		<i class="icon-minus-sign"></i>
	</a>	
	$Field
	<a class="removelink" href="$IncrementLink" title="<% sprintf(_t("ADDONE","Add one more of &quot;%s&quot; to your cart"),$Item.TableTitle) %>">
		<i class="icon-plus-sign"></i>
	</a>
	$AJAXLinkHiddenField
</div>