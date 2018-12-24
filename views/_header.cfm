
<cfoutput>

<div class="banner" id="header-main">
	<div class="container">
		<div class="header" >
			<div class="logo">
				<cfif cb.themeSetting( 'headerLogo' ) is "">
					<!-- <a href="#cb.linkHome()#" class="navbar-brand" title="#cb.siteTagLine()#" data-toggle="tooltip"><strong>#cb.siteName()#</strong></a>
					 --><a href="#cb.linkHome()#"><strong>#cb.siteName()#</strong></a>
				<cfelse>
					<!-- <a href="#cb.linkHome()#" class="navbar-brand brand-img" title="#cb.siteTagLine()#" data-toggle="tooltip"><img src="#cb.themeSetting( 'headerLogo' )#" alt="#cb.siteName()#"></a> -->
					<a href="#cb.linkHome()#"><img src="#cb.themeSetting( 'headerLogo' )#" class="img-responsive" alt="#cb.siteName()#" class="img-responsive" /></a>
				</cfif>
			</div>
			<div class="header-right">
				<ul>
					<cfif cb.themeSetting( "showEntriesURLFB") NEQ ''>
						<li><a href="#cb.themeSetting('showEntriesURLFB')#"><i class="fb"> </i></a></li>
					</cfif>
					<cfif cb.themeSetting( "showEntriesURLTWT") NEQ ''>
						<li><a href="#cb.themeSetting('showEntriesURLTWT')#"><i class="twt"> </i></a></li>
					</cfif>

					<cfif cb.themeSetting( "showSiteSearch", true )>
						<!--- Search Bar --->
						<li>
							<div class="search2">




									<form id="searchForm" name="searchForm" method="post" action="#cb.linkContentSearch()#">
										<div class="input-group">
											<input type="text" value="" placeholder="Search..." name="q" id="q" value="#cb.getSearchTerm()#">
											<input type="submit" value="">
										</div>
									</form>
							</div>
						</li>
					</cfif>
					<div class="clearfix"></div>
				</ul>

			</div>
			<div class="clearfix"> </div>
		</div>

		<!--- Generate Menu --->
		<nav class="navbar">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		        <button type="button" data-target="##navbarCollapse" data-toggle="collapse" class="navbar-toggle customButton">
		            <span class="sr-only">Toggle navigation</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		        </button>
		    </div>
		    <span class="menu"> </span>
		    <!-- Collection of nav links, forms, and other content for toggling -->
		    <div id="navbarCollapse" class="collapse navbar-collapse">
		        <ul class="nav navbar-nav">
		        	<cfset menuData = cb.rootMenu( type="data", levels="2" )>
		        	<!--- Iterate and build pages --->
					<cfloop array="#menuData#" index="menuItem">
						<cfif structKeyExists( menuItem, "subPageMenu" )>
				            <li class="dropdown">
				                <a data-toggle="dropdown" class="dropdown-toggle" href="javascript:void(0)">#menuItem.title# <b class="caret"></b></a>
				                #buildSubMenu( menuData=menuItem.subPageMenu, parentLink=menuItem.link, parentTitle=menuItem.title )#
				            </li>
			            <cfelse>
							<cfif cb.isPageView() AND event.buildLink( cb.getCurrentPage().getSlug() ) eq menuItem.link>
								<li class="active">
							<cfelse>
								<li>
							</cfif>
								<a href="#menuItem.link#">#menuItem.title#</a>
							</li>
				        </cfif>
			        </cfloop>
			        <!--- Blog Link, verify active --->
					<cfif ( !prc.cbSettings.cb_site_disable_blog )>
						<cfif cb.isBlogView()><li class="active"><cfelse><li></cfif>
							<a href="#cb.linkBlog()#">Blog</a>
						</li>
					</cfif>    
		        </ul>
		    </div>
		</nav>
	</div>
</div>

	<script>
		$('.customButton').click(function(){
			$( ".navbar-collapse" ).slideToggle('slow');			
		});
		//$('.dropdown').find('open').toggleClass('open');
		$('.navbar-nav li a').click(function(){
			$('.showDrop').parent().removeClass('open');
			$(this).parent().toggleClass('open');
			$(this).addClass('showDrop');
		});
	</script>
	<!-- <cfif cb.themeSetting( "showSiteSearch", true )>
	- Search Bar -
	<div id="body-search">
		<div class="container">
			<form id="searchForm" name="searchForm" method="post" action="#cb.linkContentSearch()#">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Enter search terms..." name="q" id="q" value="#cb.getSearchTerm()#">
					<span class="input-group-btn">
						<button type="submit" class="btn btn-default">Search</button>
					</span>
				</div>
			</form>
		</div>
	</div>
	</cfif>

	<cfscript>
	any function buildSubMenu( required menuData, required parentLink, required parentTitle ){
		var menu = '<ul class="dropdown-menu">';

		// Parent
		menu &= '<li><a href="#parentLink#"><i class="fa fa-chevron-down"></i> <strong>#parentTitle#</strong></a></li><li role="separator" class="divider"></li>';

		for( var menuItem in arguments.menuData ){
			if( !structKeyExists( menuItem, "subPageMenu" ) ){
				menu &= '<li><a href="#menuItem.link#">#menuItem.title#</a></li>';
			} else {
				menu &= '<li class="dropdown-submenu"><a href="#menuItem.link#" class="dropdown-toggle" data-toggle="dropdown">#menuItem.title#</a>';
				menu &= buildSubMenu( menuItem.subPageMenu, menuItem.link, menuItem.parentTitle );
				menu &= '</li>';
			}
		}
		menu &= '</ul>';

		return menu;
	}
	</cfscript> -->
</cfoutput>
