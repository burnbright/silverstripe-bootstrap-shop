<div id="ProductNavigation" class="well"  style="padding: 8px 0;">
 	<ul class="nav nav-list">
 		<li class="nav-header">
 			<% with Level(1) %>
 				$Title
 			<% end_with %>
 		</li>
		<li>
			<% with Level(1) %>
				<a href="$Link">View All</a>
			<% end_with %>
		</li>
 		<li class="divider"></li>
		<% loop GroupsMenu %>
	  	    <li>
	  	    	<a href="$Link" title="<% sprintf(_t("GOTOPAGE","Go to the %s page"),$Title.XML) %>">
	  	    		$MenuTitle.XML
	  	   	 	</a>
	  			<% if LinkOrSection = section %>
	  				<% if ChildGroups %>
						<ul>
							<% loop ChildGroups %>
								<li><a href="$Link" title="<% sprintf(_t("GOTOPAGE","Go to the %s page"),$Title.XML) %>" class="$LinkingMode levelb">$MenuTitle.LimitCharacters(22)</a></li>
							<% end_loop %>
						</ul>
			 		 <% end_if %>
				<% end_if %> 
			</li> 
 		<% end_loop %>
 	</ul>
</div>