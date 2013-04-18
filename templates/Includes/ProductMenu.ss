<div id="ProductNavigation" class="well"  style="padding: 8px 0;">
 	<ul class="nav nav-list">
 		<li class="nav-header"><% control Level(1) %>$Title<% end_control %></li>
		<li><% control Level(1) %><a href="$Link">View All</a><% end_control %></li>
 		<li class="divider"></li>
		<% control GroupsMenu %>
	  	    <li>
	  	    	<a href="$Link" title="<% sprintf(_t("GOTOPAGE","Go to the %s page"),$Title.XML) %>">
	  	    		$MenuTitle.XML
	  	   	 	</a>
	  			<% if LinkOrSection = section %>
	  				<% if ChildGroups %>
						<ul>
							<% control ChildGroups %>
								<li><a href="$Link" title="<% sprintf(_t("GOTOPAGE","Go to the %s page"),$Title.XML) %>" class="$LinkingMode levelb">$MenuTitle.LimitCharacters(22)</a></li>
							<% end_control %>
						</ul>
			 		 <% end_if %>
				<% end_if %> 
			</li> 
 		<% end_control %>
 	</ul>
</div>